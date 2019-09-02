package com.blogdemo.servlet;

import com.blogdemo.entity.Article;
import com.blogdemo.exception.BusinessException;
import com.blogdemo.exception.ParameterException;
import com.blogdemo.util.BaseDao;
import com.blogdemo.util.JasonUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/articleDelete")
public class ArticleDeleteServlet extends BaseServlet {

        @Override
        public Object process(HttpServletRequest req, HttpServletResponse resp) throws Exception {

            String ids = req.getParameter("ids");
            int[] intid = null;
            try {

                String[] idArray = ids.split(",");
                intid = new int[idArray.length];
                int i = 0;
                for (String id : idArray) {
                    intid[i] = Integer.parseInt(id);
                    i++;
                }
            }catch (Exception e){
                throw new ParameterException("请求参数错误ids="+ids);
            }

            Connection connection = null;
            PreparedStatement preparedStatement = null;

               /* //获取JSON类型的请求数据
                Article article = JasonUtil.get(req,Article.class);*/
                try{
                //处理业务及数据库操作
                connection = BaseDao.getConnection();
                StringBuffer sql = new StringBuffer("delete from article where id in(");

                    for (int i = 0; i < intid.length; i++) {
                        if(i == 0){
                            sql.append("?");
                        }else {
                            sql.append(",?");
                        }
                    }

                    sql.append(")");

                    preparedStatement = connection.prepareStatement(sql.toString());

                    for (int i = 0; i < intid.length; i++) {
                        preparedStatement.setInt(i+1,intid[i]);
                    }

                int r = preparedStatement.executeUpdate();
                if (r > 0) {
                    return r;
                }else {
                    throw new BusinessException("Sorry，没有该用户");
                }
            } finally {
                BaseDao.close(connection,preparedStatement,null);
            }
        }
    }
