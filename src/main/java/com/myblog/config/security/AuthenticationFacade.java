package com.myblog.config.security;

import com.myblog.user.UserMapper;
import com.myblog.user.model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
public class AuthenticationFacade {

    @Autowired private UserMapper userMapper;

    public UserEntity getLoginUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String uid = auth.getName();
        return userMapper.selUser(uid);
    }

    public int getLoginUserPk() {
        return getLoginUser().getIuser();
    }
}
