package com.myblog.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping("/login")
    public String login() {
        String filename = "a=b=c===d==.zip";

        String[] plain  = filename.split("\\.");
        String[] res = plain[0].split("=");

        String result = "";
        for(int i=0; i<res.length; i++) {
            if(!res[i].equals("") || !res[i].equals(" ")) {
                result += res[i];
            }
        }
        result += "." + plain[1];
        System.out.println(result);

        return "user/login";
    }

    @GetMapping("/join")
    public String join() {
        return "user/join";
    }
}
