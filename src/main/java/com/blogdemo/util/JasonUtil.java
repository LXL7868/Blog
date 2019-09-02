package com.blogdemo.util;

import com.blogdemo.exception.SystemException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.SimpleDateFormat;


public class JasonUtil {
    public static String format(Object object){
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
        try {
            return objectMapper.writeValueAsString(object);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            //待处理异常
            throw new SystemException("JSON 解析错误"+object);
        }
    }
    public static <T> T get(HttpServletRequest request, Class<T> clazz){
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
        try{
            return objectMapper.readValue(request.getInputStream(),clazz);
        } catch (IOException e) {
            e.printStackTrace();
            throw new SystemException("JSON反序列化错误");
        }
    }
}
