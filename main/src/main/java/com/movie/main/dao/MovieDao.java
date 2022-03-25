package com.movie.main.dao;

import com.movie.main.entity.Movie;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("movieDao")
public interface MovieDao {
    Movie selectByMovieId(int movieId);
    List<Movie> selectByMovieName(String movieName);
    Integer selectForMovieTypeCount(String movieType);
    List<Movie> selectByMovieType(@Param("movieType") String movieTyep, @Param("pageSize") Integer pageSize);
   // List<Movie> selectByMovieStar(String movieStar);



}
