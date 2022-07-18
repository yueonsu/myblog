package com.myblog.user;

import com.myblog.user.model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired private UserService userService;

    @GetMapping("/login")
    public String login() {
        UserEntity entity = new UserEntity();
        entity.setUid("asd");
        System.out.println(userService.selUser(entity.getUid()));
        return "user/login";
    }

    @GetMapping("/join")
    public String join() {
        return "user/join";
    }

    @PostMapping("/join")
    public String joinProc(UserEntity entity) {
        return "redirect:" + userService.insUser(entity);
    }
}
