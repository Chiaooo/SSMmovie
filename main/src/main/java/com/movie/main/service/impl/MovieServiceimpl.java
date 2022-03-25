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

    @Autowired
    private MovieDao movieDao;

    @Override
    public Integer countMovie(String movieType){
        return movieDao.selectForMovieTypeCount(movieType);
    }


    @Override
    public Movie getMovie(int movieId){
        return movieDao.selectByMovieId(movieId);
    }

    @Override
    public List<Movie> getMovie(String movieName){
        return movieDao.selectByMovieName(movieName);
    }

    @Override
    public List<Movie> getHome(String movieType, Integer pageSize){
        return  movieDao.selectByMovieType(movieType,pageSize);
    }

    @Override
    public List<Movie> getCategory(String movieType, Integer pageSize){
        List<Movie> movieList=(ArrayList)movieDao.selectByMovieType(movieType,pageSize);
        for (Movie movie : movieList) {
            String movieName=movie.getMovieName();
           if(movieName.length()>8){
               try {
                   movieName= SubCEStrUtil.splitChineseEnglish(3,movieName,21)+"...";
                    movie.setMovieName(movieName);
               } catch (Exception e) {
                   e.printStackTrace();
               }
           }
        }


//        Iterator<Movie> it = movieList.iterator();
//        while (it.hasNext()) {
//            String movieName=it.next().getMovieName();
//            int i=movieName.length();
//            if(i>8){
//                try {
//                    movieName= SubCEStrUtil.splitChineseEnglish(3,movieName,21)+"...";
//                    it.next().setMovieName(movieName);
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }finally {
//
//                }
//            }
//        }

        return  movieList;
    }
}
