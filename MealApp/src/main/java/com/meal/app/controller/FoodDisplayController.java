package com.meal.app.controller;

import com.meal.app.dao.CartDAO;
import com.meal.app.dao.UserDAO;
import com.meal.app.entity.Cart;
import com.meal.app.entity.Category;
import com.meal.app.entity.Food;
import com.meal.app.entity.User;
import com.meal.app.dao.CategoryDAO;
import com.meal.app.dao.FoodDAO;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FoodDisplayController {

    @Autowired
    private FoodDAO foodDAO;

    @Autowired
    private CategoryDAO categoryDAO;

    @Autowired
    private CartDAO cartDAO;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "/foodDisplay", method = RequestMethod.GET)
    public ModelAndView search1() {
        ModelAndView response = new ModelAndView();
        response.setViewName("food/foodDisplay");
        List<Food> foods = new ArrayList<Food>();

        foods = foodDAO.findAll();

        List<Category> category =new ArrayList<Category>();
        category = categoryDAO.findAll();
        foods.contains(category);




        foods.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("foods", foods);
        response.addObject("search", "yes");
        return response;
    }



    @RequestMapping(value = "/foodDisp", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(required = false) String search) {
        ModelAndView response = new ModelAndView();
        response.setViewName("food/foodDisplay");

        List<Food> foods = new ArrayList<Food>();
        if (!StringUtils.isEmpty(search)) {
            if(search.contains(" ")){
                search= search.substring(0, search.indexOf(" "));
            }
            foods = foodDAO.findByName(search);
        }

        foods.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("foods", foods);
        response.addObject("search", search);

        return response;
    }

    @RequestMapping(value = "/addToCart", method = RequestMethod.GET)
    public ModelAndView addToCart(@RequestParam(required = false) String id,String productName,String price) {
        ModelAndView response = new ModelAndView();
        response.setViewName("food/foodDisplay");


        Cart cart = new Cart();

        cart.setId(Integer.parseInt(id));
        cart.setProductName(productName);
        cart.setPrice(price);
        cart.setQuantity("1");

        User user = new User();
        user = userDAO.findByEmail(getUserEmail());

        cart.setUser_id(user.getId());

        cartDAO.save(cart);

        List<Food> foods = new ArrayList<Food>();
        foods = foodDAO.findAll();
        foods.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("foods", foods);
        response.addObject("search", "yes");

        return response;
    }

    @Transactional
    @RequestMapping(value = "/deleteFood", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(required = false) int id) {
        ModelAndView response = new ModelAndView();
        response.setViewName("food/foodDisplay");
        foodDAO.removeProductById(id);

        List<Food> foods = new ArrayList<Food>();

        foods = foodDAO.findAll();
        foods.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("foods", foods);
        response.addObject("search", id);

        return response;
    }

    public String getUserEmail() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            String username = ((UserDetails)principal).getUsername();
            return username;
        } else {
            String username = principal.toString();
            return "";
        }
    }

}
