package com.movie.main.service;

import com.movie.main.entity.Movie;
import com.movie.main.entity.Star;

import java.util.List;

public interface MovieService {
	Integer countMovie(String movieType);

	Movie getMovie(int movieId);

	List<Movie> getMovie(String movieName);

	List<Movie> getHome(String movieType, Integer pageSize);

	List<Movie> getCategory(String movieType, Integer pageSize);

	Star getStarInfo(String starName);
	
}
