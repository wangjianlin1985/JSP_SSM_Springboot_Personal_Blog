﻿package com.chengxusheji.service;

import java.util.ArrayList;
import javax.annotation.Resource; 
import org.springframework.stereotype.Service;
import com.chengxusheji.po.BlogClass;

import com.chengxusheji.mapper.BlogClassMapper;
@Service
public class BlogClassService {

	@Resource BlogClassMapper blogClassMapper;
    /*每页显示记录数目*/
    private int rows = 10;;
    public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}

    /*保存查询后总的页数*/
    private int totalPage;
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getTotalPage() {
        return totalPage;
    }

    /*保存查询到的总记录数*/
    private int recordNumber;
    public void setRecordNumber(int recordNumber) {
        this.recordNumber = recordNumber;
    }
    public int getRecordNumber() {
        return recordNumber;
    }

    /*添加博客分类记录*/
    public void addBlogClass(BlogClass blogClass) throws Exception {
    	blogClassMapper.addBlogClass(blogClass);
    }

    /*按照查询条件分页查询博客分类记录*/
    public ArrayList<BlogClass> queryBlogClass(int currentPage) throws Exception { 
     	String where = "where 1=1";
    	int startIndex = (currentPage-1) * this.rows;
    	return blogClassMapper.queryBlogClass(where, startIndex, this.rows);
    }

    /*按照查询条件查询所有记录*/
    public ArrayList<BlogClass> queryBlogClass() throws Exception  { 
     	String where = "where 1=1";
    	return blogClassMapper.queryBlogClassList(where);
    }

    /*查询所有博客分类记录*/
    public ArrayList<BlogClass> queryAllBlogClass()  throws Exception {
        return blogClassMapper.queryBlogClassList("where 1=1");
    }

    /*当前查询条件下计算总的页数和记录数*/
    public void queryTotalPageAndRecordNumber() throws Exception {
     	String where = "where 1=1";
        recordNumber = blogClassMapper.queryBlogClassCount(where);
        int mod = recordNumber % this.rows;
        totalPage = recordNumber / this.rows;
        if(mod != 0) totalPage++;
    }

    /*根据主键获取博客分类记录*/
    public BlogClass getBlogClass(int blogClassId) throws Exception  {
        BlogClass blogClass = blogClassMapper.getBlogClass(blogClassId);
        return blogClass;
    }

    /*更新博客分类记录*/
    public void updateBlogClass(BlogClass blogClass) throws Exception {
        blogClassMapper.updateBlogClass(blogClass);
    }

    /*删除一条博客分类记录*/
    public void deleteBlogClass (int blogClassId) throws Exception {
        blogClassMapper.deleteBlogClass(blogClassId);
    }

    /*删除多条博客分类信息*/
    public int deleteBlogClasss (String blogClassIds) throws Exception {
    	String _blogClassIds[] = blogClassIds.split(",");
    	for(String _blogClassId: _blogClassIds) {
    		blogClassMapper.deleteBlogClass(Integer.parseInt(_blogClassId));
    	}
    	return _blogClassIds.length;
    }
}
