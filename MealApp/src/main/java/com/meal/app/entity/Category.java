package com.meal.app.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "category_name", nullable = false)
    private String category_name;

    @ManyToMany(cascade=CascadeType.ALL, mappedBy = "categories")
    private Set<Food> foods;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public Set<Food> getProducts() {
        return foods;
    }

    public void setProducts(Set<Food> foods) {
        this.foods = foods;
    }
}
