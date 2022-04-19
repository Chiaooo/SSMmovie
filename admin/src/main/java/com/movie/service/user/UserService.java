package com.movie.service.user;

import com.movie.pojo.User;

public interface UserService {


    User userLogin(String username, String password);

    int updatePassword(String password);
}
