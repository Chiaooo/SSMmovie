package com.movie.main.service.impl;

import com.movie.common.SubCEStrUtil;
import com.movie.main.dao.MovieDao;
import com.movie.main.entity.Movie;
import com.movie.main.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("movieService")
public class MovieServiceimpl implements MovieService {

	@Qualifier("movieDao")
	@Autowired
	private MovieDao movieDao;

	@Override
	public Integer countMovie(String movieType) {
		return movieDao.selectForMovieTypeCount(movieType);
	}


	@Override
	public Movie getMovie(int movieId) {
		return movieDao.selectByMovieId(movieId);
	}

	@Override
	public List<Movie> getMovie(String movieName) {
		return movieDao.selectByMovieName(movieName);
	}

//    @Override
//    public List<Movie> getMovieByStar(String movieStar) {
//        return movieDao.selectByMovieStar(movieStar);
//    }

	@Override
	public List<Movie> getHome(String movieType, Integer pageSize) {
		return movieDao.selectByMovieType(movieType, pageSize);
	}

	@Override
	public List<Movie> getCategory(String movieType, Integer pageSize) {
		List<Movie> movieList = (ArrayList) movieDao.selectByMovieType(movieType, pageSize);
		for (Movie movie : movieList) {
			String movieName = movie.getName();
			if (movieName.length() > 8) {
				try {
					movieName = SubCEStrUtil.splitChineseEnglish(3, movieName, 21) + "...";
					movie.setName(movieName);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return movieList;
	}
}
