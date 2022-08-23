package com.meal.app.form;

import javax.validation.constraints.NotEmpty;

public class EditProductForm {

    @NotEmpty(message = "Field cannot be empty")
    private String id;

    @NotEmpty(message = "Field cannot be empty")
    private String foodName;

    @NotEmpty(message = "Field cannot be empty")
    private String quantity;

    @NotEmpty(message = "Field cannot be empty")
    private String price;

    @NotEmpty(message = "Field cannot be empty")
    private String category;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
