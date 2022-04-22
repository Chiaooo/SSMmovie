package com.movie.dao.type;

import com.movie.pojo.MovieType;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface MovieTypeMapper {
    MovieType getType(@Param("mtype") String type);

    List<MovieType> getTypeList();

    int deleteMovieTypeByType(@Param("mtype")String type);

    int addMovie(String type);

    int updateMovie(@Param("mid") Integer id,@Param("mtype") String type);
}
