package com.movie.dao.type;

import com.movie.pojo.NewType;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface NewTypeMapper {

    NewType getType(@Param("type") String type);

    List<NewType> getTypeList();

    int deleteNewById(@Param("id")Integer id);

    int updateNew(@Param("type") String type,@Param("id") Integer id);

    int insertNew(String type);

}
