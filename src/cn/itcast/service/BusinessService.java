package cn.itcast.service;

import cn.itcast.dao.CategoryDao;

import java.util.List;

/**
 * Created by yvettee on 2017/10/10.
 */
public class BusinessService {
    public List getAllCategory() {
        CategoryDao dao = new CategoryDao();
        return dao.getAll();
    }
}
