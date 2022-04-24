package com.movie.main.service.impl;

import com.movie.main.dao.CommentDao;
import com.movie.main.dao.UserDao;
import com.movie.main.entity.Comment;
import com.movie.main.entity.User;
import com.movie.main.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private CommentDao commentDao;

	@Override
	public User getByUserNameAndPassword(String userName, String password) {
		return userDao.selectByUsernameAndPassword(userName, password);
	}

	@Override
	public int add(User user) {
		return userDao.insertUser(user);
	}

	@Override
	public void addComment(Comment comment) {
		commentDao.insertComment(comment);
	}

	@Override
	public List<Comment> getAllCommentByMovieId(Integer movieId) {
		return commentDao.selectBymovieId(movieId);
	}
}
