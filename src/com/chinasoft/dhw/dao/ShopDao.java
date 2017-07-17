package com.chinasoft.dhw.dao;

import java.util.List;

import com.chinasoft.dhw.entity.ShopCart;

public interface ShopDao {
    public void add(ShopCart shopcart);
    public List get();
}
