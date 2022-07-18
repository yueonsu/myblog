package com.myblog.user;

import com.myblog.user.model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired private UserMapper userMapper;

    public String insUser(UserEntity entity) {
        int result = 0;
        String path = "";

        entity.setUpw(BCrypt.hashpw(entity.getUpw(), BCrypt.gensalt()));

        try {
            result = userMapper.insUser(entity);
        } catch (Exception e) {
            e.printStackTrace();
        }

        switch (result) {
            case 0 :
                path = "/user/join?error=true";
                break;
            case 1:
                path = "/user/login";
                break;
        }

        return path;
    }

    public UserEntity selUser(String id) {
        UserEntity data = userMapper.selUser(id);

        return data;
    }
}
