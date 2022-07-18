package com.myblog.user;

import com.myblog.user.model.UserEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    int insUser(UserEntity entity);
    UserEntity selUser(String uid);
}
