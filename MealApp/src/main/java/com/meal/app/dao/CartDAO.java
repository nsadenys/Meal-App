package com.meal.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.meal.app.entity.Cart;

import javax.transaction.Transactional;

@Transactional
@Repository
public interface CartDAO extends JpaRepository<Cart,Long> {

    public Cart findById(@Param("id") Integer id);

    public void removeCartById(int id);

}
