package com.hp.Utils;

import com.hp.Utils.jdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.Connection;
import java.sql.SQLException;
    public class TxQueryRunner extends QueryRunner {
        @Override
        public int[] batch(String sql, Object[][] params) throws SQLException {
       /*
           1.得到连接
           2.执行父类方法
           3.释放连接
           4.返回值
        */
            Connection connection=jdbcUtils.getConnection();
            int [] result=super.batch(connection,sql,params);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }

        @Override
        public <T> T query(String sql, Object param, ResultSetHandler<T> rsh) throws SQLException {
            Connection connection=jdbcUtils.getConnection();
            T result=super.query(connection,sql,param,rsh);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }

        @Override
        public <T> T query(String sql, Object[] params, ResultSetHandler<T> rsh) throws SQLException {
            Connection connection=jdbcUtils.getConnection();
            T result=super.query(connection,sql,params,rsh);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }

        @Override
        public <T> T query(String sql, ResultSetHandler<T> rsh, Object... params) throws SQLException {
            Connection connection=jdbcUtils.getConnection();
            T result=super.query(connection,sql,rsh,params);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }

        @Override
        public <T> T query(String sql, ResultSetHandler<T> rsh) throws SQLException {
            Connection connection=jdbcUtils.getConnection();
            T result=super.query(connection,sql,rsh);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }

        @Override
        public int update(String sql) throws SQLException {
            Connection connection=jdbcUtils.getConnection();
            int result=super.update(connection,sql);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }

        @Override
        public int update(String sql, Object param) throws SQLException {
            Connection connection=jdbcUtils.getConnection();
            int result=super.update(connection,sql,param);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }

        @Override
        public int update(String sql, Object... params) throws SQLException {
            Connection connection=jdbcUtils.getConnection();
            int result=super.update(connection,sql,params);
            jdbcUtils.relaeseConnection(connection);
            return result;
        }
    }

