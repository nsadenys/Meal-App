package com.meal.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.meal.app.entity.Food;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Repository
public interface FoodDAO extends JpaRepository<Food,Long> {
    public Food findById(@Param("id") Integer id);

    @Query(value = "select * from food ", nativeQuery = true)
    public List<Food> allfood();

    @Query(value = "select * from food r where lower(r.food_name) like lower(concat('%', :food_name,'%'))", nativeQuery = true)
    public List<Food> findByName(@Param("food_name")String course);

    public void removeProductById(int id);
}
