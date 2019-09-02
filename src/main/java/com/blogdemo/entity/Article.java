package com.blogdemo.entity;

import com.mysql.fabric.xmlrpc.base.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.Date;


@Getter
@Setter
@ToString
public class Article {

    private Integer id;

    private String title;

    private String content;

    private Integer user_Id;

    private String userAccout;

    private Date createTime;


}
