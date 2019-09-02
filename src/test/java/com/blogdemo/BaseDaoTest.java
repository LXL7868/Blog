package com.blogdemo;

import com.blogdemo.util.BaseDao;
import org.junit.Assert;
import org.junit.Test;

import java.sql.Connection;

public class BaseDaoTest {
    @Test
    public void testConnection(){
        Connection connection = BaseDao.getConnection();
        //System.out.println(connection);
        Assert.assertNotNull(connection);
    }
}
