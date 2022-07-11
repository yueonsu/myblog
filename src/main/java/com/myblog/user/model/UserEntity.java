package com.myblog.user.model;

import lombok.Data;

@Data
public class UserEntity {
    private int iuser;
    private String uid;
    private String upw;
    private String nm;
    private String email;
    private String rdt;
    private String mdt;
}
