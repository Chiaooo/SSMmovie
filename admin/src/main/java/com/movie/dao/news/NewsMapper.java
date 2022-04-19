package com.movie.dao.news;

import com.movie.pojo.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface NewsMapper {

    List<News> getNewsByNameOrType(@Param("name") String name, @Param("type") String type);

    List<News> getNewsList();

    News getNewsById(Integer id);

    int deleteNewsById(@Param("id")Integer id);

    int addNews(News news);

    int updateNews(News news);

}
