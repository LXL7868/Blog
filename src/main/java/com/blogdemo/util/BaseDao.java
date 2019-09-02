package com.blogdemo.util;

import com.blogdemo.exception.SystemException;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
    private static volatile DataSource DATASOURCE;

    private static final String URL = "jdbc:mysql://localhost:3306/blogdemo";
    private static final String USER_NAME = "root";
    private static final String PASSWORD = "123456";

    private BaseDao(){

    }

    public static DataSource getDataSource(){
        //提高效率
        if (DATASOURCE == null){
            //锁当前类
            synchronized (DataSource.class){
                if (DATASOURCE == null){
                    DATASOURCE = new MysqlDataSource();
                    ((MysqlDataSource)DATASOURCE).setUrl(URL);
                    ((MysqlDataSource)DATASOURCE).setUser(USER_NAME);
                    ((MysqlDataSource)DATASOURCE).setPassword(PASSWORD);
                }
            }
        }
        return DATASOURCE;
    }

    public static Connection getConnection(){
        try {
            return getDataSource().getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void close(Connection connection,
                             PreparedStatement preparedStatement, ResultSet resultSet){
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
            } catch (SQLException e) {
                e.printStackTrace();
                //TODO 处理数据库异常
            throw new SystemException("数据库错误");
            }
        }
    }

