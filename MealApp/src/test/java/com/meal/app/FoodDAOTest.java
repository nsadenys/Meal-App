package com.meal.app;

import com.meal.app.dao.FoodDAO;
import com.meal.app.entity.Food;

import org.junit.jupiter.api.Test;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public class FoodDAOTest {

    @Test
    void contextLoads() {
        FoodDAO foodDAO = new FoodDAO() {
            @Override
            public Food findById(Integer id) {
                return null;
            }

            @Override
            public List<Food> allfood() {
                return null;
            }

            @Override
            public List<Food> findByName(String course) {
                return null;
            }

            @Override
            public void removeProductById(int id) {

            }

            @Override
            public List<Food> findAll() {
                return null;
            }

            @Override
            public List<Food> findAll(Sort sort) {
                return null;
            }

            @Override
            public List<Food> findAllById(Iterable<Long> longs) {
                return null;
            }

            @Override
            public <S extends Food> List<S> saveAll(Iterable<S> entities) {
                return null;
            }

            @Override
            public void flush() {

            }

            @Override
            public <S extends Food> S saveAndFlush(S entity) {
                return null;
            }

            @Override
            public <S extends Food> List<S> saveAllAndFlush(Iterable<S> entities) {
                return null;
            }

            @Override
            public void deleteAllInBatch(Iterable<Food> entities) {

            }

            @Override
            public void deleteAllByIdInBatch(Iterable<Long> longs) {

            }

            @Override
            public void deleteAllInBatch() {

            }

            @Override
            public Food getOne(Long aLong) {
                return null;
            }

            @Override
            public Food getById(Long aLong) {
                return null;
            }

            @Override
            public <S extends Food> List<S> findAll(Example<S> example) {
                return null;
            }

            @Override
            public <S extends Food> List<S> findAll(Example<S> example, Sort sort) {
                return null;
            }

            @Override
            public Page<Food> findAll(Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Food> S save(S entity) {
                return null;
            }

            @Override
            public Optional<Food> findById(Long aLong) {
                return Optional.empty();
            }

            @Override
            public boolean existsById(Long aLong) {
                return false;
            }

            @Override
            public long count() {
                return 0;
            }

            @Override
            public void deleteById(Long aLong) {

            }

            @Override
            public void delete(Food entity) {

            }

            @Override
            public void deleteAllById(Iterable<? extends Long> longs) {

            }

            @Override
            public void deleteAll(Iterable<? extends Food> entities) {

            }

            @Override
            public void deleteAll() {

            }

            @Override
            public <S extends Food> Optional<S> findOne(Example<S> example) {
                return Optional.empty();
            }

            @Override
            public <S extends Food> Page<S> findAll(Example<S> example, Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Food> long count(Example<S> example) {
                return 0;
            }

            @Override
            public <S extends Food> boolean exists(Example<S> example) {
                return false;
            }
        };
    }
}
