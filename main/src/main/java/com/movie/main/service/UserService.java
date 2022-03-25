package com.movie.main.service;

import com.movie.main.entity.Comment;
import com.movie.main.entity.User;

import java.util.List;

public interface UserService {
    User getByUserNameAndPassword(String UserName,String Password);
    int add(User user);
    void addComment(Comment comment);
    List<Comment> getAllCommentByMovieId(Integer movieId);
}
