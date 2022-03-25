package com.movie.main.dao;

import com.movie.main.entity.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("CommentDao")
public interface CommentDao {
    void insertComment (Comment comment);
    List<Comment> selectBymovieId(Integer movieId);
}

