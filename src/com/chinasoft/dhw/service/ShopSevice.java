package com.chinasoft.dhw.service;

import java.util.List;

import com.chinasoft.dhw.entity.ShopCart;

public interface ShopSevice {
    public void add(ShopCart shopcart);
    public List get();
}
