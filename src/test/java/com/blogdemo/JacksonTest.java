package com.blogdemo;

import com.blogdemo.entity.Article;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class JacksonTest {
    @Test
    public String testjackson(){
        List<Article> articles = new ArrayList<>();
        Article article = new Article();
        article.setId(1);
        article.setTitle("我的博客");
        article.setContent("内容1");
        article.setCreateTime(new Date());
        articles.add(article);
        article.setId(12);
        article.setTitle("我的博客1");
        article.setContent("内容2");
        article.setCreateTime(new Date());
        articles.add(article);
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
        try {
            return objectMapper.writeValueAsString(articles);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }
}
