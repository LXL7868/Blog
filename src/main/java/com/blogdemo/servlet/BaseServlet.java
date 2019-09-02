package com.blogdemo.servlet;

import com.blogdemo.entity.JSON;
import com.blogdemo.exception.ParameterException;
import com.blogdemo.exception.SystemException;
import com.blogdemo.util.JasonUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public abstract class BaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");//响应数据编码
        resp.setContentType("application/json;charset=UTF-8");

        JSON result = new JSON();
        try {
            Object data = process(req,resp);
            result.setSuccess(true);
            result.setCode("200");
            result.setMessage("操作成功");
            result.setData(data);
            //resp.getWriter().write(JasonUtil.format(data));
        } catch (Exception e) {
            if (e instanceof ParameterException) {
                result.setCode(((ParameterException) e).getCode());
                result.setMessage(((ParameterException) e).getMessage());
            } else if (e instanceof SystemException){
                result.setCode(((SystemException) e).getCode());
                result.setMessage(((SystemException) e).getMessage());
            }else {
                e.printStackTrace();
                result.setCode("500");
                result.setMessage("服务器错误");
            }
        }
        //TODO 待处理异常
        resp.getWriter().write(JasonUtil.format(result));
}

    public abstract Object process(HttpServletRequest req, HttpServletResponse resp) throws Exception;
}
