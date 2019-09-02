package com.blogdemo.servlet;

import com.blogdemo.entity.Article;
import com.blogdemo.exception.BusinessException;
import com.blogdemo.util.BaseDao;
import com.blogdemo.util.JasonUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/articleUpdate")
public class ArticleUpdateServlet extends BaseServlet {

        @Override
        public Object process(HttpServletRequest req, HttpServletResponse resp) throws Exception {

            Connection connection = null;
            PreparedStatement preparedStatement = null;

            //获取JSON类型的请求数据
            Article article = JasonUtil.get(req,Article.class);

            //处理业务及数据库操作
            try {
                connection = BaseDao.getConnection();
                String sql = "update article set title=?,content=? where id=?";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,article.getTitle());
                preparedStatement.setString(2,article.getContent());
                preparedStatement.setInt(3,article.getId());

                int r = preparedStatement.executeUpdate();
                if (r > 0) {
                    return r;
                }else {
                    throw new BusinessException("Sorry，没有该文章"+article.getId());
                }
            } finally {
                BaseDao.close(connection,preparedStatement,null);
            }
        }
    }
