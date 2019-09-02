package com.blogdemo.servlet;

import com.blogdemo.entity.Article;
import com.blogdemo.exception.BusinessException;
import com.blogdemo.util.BaseDao;
import com.blogdemo.util.JasonUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class ArticleAddServlet extends BaseServlet {

        @Override
        public Object process(HttpServletRequest req, HttpServletResponse resp) throws Exception {

            Connection connection = null;
            PreparedStatement preparedStatement = null;

            // 处理前端请求数据
           /* String userAccount = req.getParameter("userAccount");
            String title = req.getParameter("title");
            String content = req.getParameter("content");*/

            //获取JSON类型的请求数据
            Article article = JasonUtil.get(req,Article.class);


            //处理业务及数据库操作
            try {
                connection = BaseDao.getConnection();
                String sql = "insert into article(title, content, user_id, create_time) " +
                        "select ?,?,user.id,now() from" +
                        "  user where user.name=?";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,article.getTitle());
                preparedStatement.setString(2,article.getContent());
                preparedStatement.setString(3,article.getUserAccout());

                int r = preparedStatement.executeUpdate();
                if (r > 0) {
                    return r;
                }else {
                    throw new BusinessException("Sorry，没有该用户"+article.getUserAccout());
                }
            } finally {
                BaseDao.close(connection,preparedStatement,null);
            }
        }
    }
