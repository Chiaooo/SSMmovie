package com.movie.service.type;

import com.movie.pojo.NewType;

import java.util.List;

public interface NewTypeService {

    List<NewType> getNewTypeList();

    NewType getNewType(String type);

    boolean deleteNewTypeById(Integer id);

    boolean addNewType(String newType);

    boolean updateNewType(String type,Integer id);
}
