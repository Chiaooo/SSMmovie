package com.movie.service.type;

import com.movie.dao.type.NewTypeMapper;
import com.movie.pojo.NewType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class NewTypeServiceImpl implements NewTypeService {

    @Resource
    private NewTypeMapper newTypeMapper;

    @Override
    public List<NewType> getNewTypeList() {
        return newTypeMapper.getTypeList();
    }

    @Override
    public NewType getNewType(String type) {
        return newTypeMapper.getType(type);
    }

    @Override
    public boolean deleteNewTypeById(Integer id) {
        boolean flag = false;
        if(newTypeMapper.deleteNewById(id) > 0){
            flag = true;
        }
        return flag;

    }

    @Override
    public boolean addNewType(String newType) {
        boolean flag = false;
        if(newTypeMapper.insertNew(newType) > 0){
            flag = true;
        }
        return flag;
    }

    @Override
    public boolean updateNewType(String type,Integer id) {
        boolean flag = false;
        if(newTypeMapper.updateNew(type,id) > 0){
            flag = true;
        }
        return flag;
    }
}
