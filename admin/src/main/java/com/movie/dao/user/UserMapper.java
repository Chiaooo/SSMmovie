package com.movie.dao.user;

import com.movie.pojo.User;


public interface UserMapper {

    User getLoginUser(String username);

    int updatePassword(String password);

}
