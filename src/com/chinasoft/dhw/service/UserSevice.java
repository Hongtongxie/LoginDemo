package com.chinasoft.dhw.service;

import com.chinasoft.dhw.entity.User;

public interface UserSevice {
   public boolean login(User user);
   public boolean register(User user);
}
