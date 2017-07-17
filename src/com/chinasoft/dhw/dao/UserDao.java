package com.chinasoft.dhw.dao;

import com.chinasoft.dhw.entity.User;

public interface UserDao {
    public User selectLoginPw(User user);
    public void addUser(User user);
}
