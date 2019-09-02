package com.blogdemo.servlet;

import com.blogdemo.entity.Article;
import com.blogdemo.exception.ParameterException;
import com.blogdemo.util.BaseDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ArticleListServlet  extends BaseServlet {

    @Override
    public Object process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        //System.out.println(req.getParameter("id"));
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Article> articles = new ArrayList<>();
        // 处理前端请求数据
        String sid = req.getParameter("id");
        Integer id = null;
        try{
            id  = Integer.parseInt(sid);
        }catch (NumberFormatException e){
            throw new ParameterException("id错误 （"+ sid + ")" );
        }


        //处理业务及数据库操作
        try {
            connection = BaseDao.getConnection();
            String sql = "select * from article a join user u on a.user_id = u.id where u.id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            //TODO 处理前段异常
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();
                article.setId(resultSet.getInt("id"));
                article.setTitle(resultSet.getString("title"));
                article.setContent(resultSet.getString("content"));
                article.setUser_Id(resultSet.getInt("user_id"));
                article.setCreateTime(resultSet.getTimestamp("create_time"));
                articles.add(article);
            }
            System.out.println(articles);
            //TODO 关闭资源
        } finally {


            BaseDao.close(connection,preparedStatement,resultSet);

            //String result = JasonUtil.format(articles);
            //req.setAttribute("key","value");//1
            //resp.getWriter().write(result);//2

        }
        return articles;
    }
}

