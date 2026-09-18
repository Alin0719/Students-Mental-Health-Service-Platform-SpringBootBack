package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.Newsinfo;
import org.apache.ibatis.annotations.Mapper;

import java.sql.Date;
import java.util.List;

@Mapper
public interface NewsinfoDao {
    public List<Newsinfo> getAllnews();
    public List<Newsinfo> getFivenew();
    public Newsinfo getnewsByid(int nno);
    public List<Newsinfo> getnewsByvague(String msgs);
    public boolean addnews(Newsinfo newsinfo);
    public boolean delnews(int nno);
    public boolean updatentitle(int nno,String ntitle);
    public boolean updatencontent(int nno,String ncontent);
    public boolean updatenauthor(int nno,String nauthor);
    public boolean updatentime(int nno, Date ntime);
    public boolean updatenewsimg(int nno,String newsimg);
}
