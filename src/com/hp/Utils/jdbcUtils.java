package com.hp.Utils;


import com.mchange.v2.c3p0.ComboPooledDataSource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
public class jdbcUtils {
    //获取连接池对象
    private static ComboPooledDataSource cps = new ComboPooledDataSource();

    //事务专用连接
    private static ThreadLocal<Connection> t=new ThreadLocal<Connection>();


    //获取连接池对象
    public static Connection getConnection() throws SQLException {
        Connection conn=t.get();
        //当conn不等于null时，说明已经调用过beginTransaction()，表示开启了事务
        if (conn!=null) return conn;
        return cps.getConnection();
    }

    //获取连接池对象
    public static DataSource getDataSource() {
        return cps;
    }


    /**
     * 开启事务
     * 获取一个Connection对象，设置他setAutoCommit(false)
     * 还要保证dao 中使用的连接是我们刚刚创建的
     * ----------------------------------
     *
     * 创建一个Connection，设置手动提交
     * 把这个Connection给dao用
     * 还有让commitTransaction或rollbackTransaction获取到
     */
    public static void beginTransaction() throws SQLException {
        Connection conn=t.get();
        if (conn!=null) throw new SQLException("已经开启了事务");
        /*
           1.给conn赋值
           2.给conn设置手动提交
         */
        conn=getConnection();
        conn.setAutoCommit(false);
        t.set(conn);
    }

    /**
     * 提交事务
     * 获取beginTransaction提供的Connection，然后调用commit
     */
    public static void commitTransaction() throws SQLException {
        Connection conn=t.get();
        if (conn==null) throw new SQLException("还没开启事务，不能提交");
        /*
           直接用conn.commit()
         */
        conn.commit();
        conn.close();
        //把他设置为null，表示事务已经结束，下次调用getConnection返回的就不是conn了
        t.remove();
    }

    /**
     * 回滚事务
     * 获取beginTransaction提供的Connection，然后调用rollback
     */
    public static void rollbackTransaction() throws SQLException {
        Connection conn=t.get();
        if (conn==null) throw new SQLException("还没开启事务，不能回滚");
         /*
           直接用conn.rollback()
         */
        conn.rollback();
        conn.close();
        //把他设置为null，表示事务已经结束，下次调用getConnection返回的就不是conn了
        t.remove();
    }

    /**
     *
     * 释放连接
     */
    public static void relaeseConnection(Connection connection) throws SQLException {
        Connection conn=t.get();
        /*
           判断他是不是专用事务，如果是，就不关闭
           如果不是事务专用，那么就关闭
         */

        //如果conn=null 说明现在没有事务，那么connection一定不是事务专用的
        if (conn==null) connection.close();

        //如果con！=null，说明有事务，那么就需要判断参数连接是否与conn相等，说明参数连接不是事务专用连接
        if (conn!=connection) connection.close();
    }
}

