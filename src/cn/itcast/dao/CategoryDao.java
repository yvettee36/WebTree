package cn.itcast.dao;

import cn.itcast.domain.Category;
import cn.itcast.utils.JdbcUtils_dbcp;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.List;

/**
 * Created by yvettee on 2017/10/10.
 */
public class CategoryDao {
    public List<Category> getAll() {
        try {
            QueryRunner runner = new QueryRunner(JdbcUtils_dbcp.getDataSource());
            String sql = "select child.id,child.name,child.lft,child.rgt,count(child.name) depth from category parent,category child where child.lft>=parent.lft and child.rgt<=parent.rgt group by(child.name) order by child.lft;";
            List list = runner.query(sql, new BeanListHandler<Category>(Category.class));
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
