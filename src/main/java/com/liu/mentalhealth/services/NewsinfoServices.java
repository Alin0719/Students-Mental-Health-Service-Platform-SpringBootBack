package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.NewsinfoDao;
import com.liu.mentalhealth.entity.Newsinfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.List;

@Service
public class NewsinfoServices {
    @Resource
    public NewsinfoDao newsinfoDao;

    public List<Newsinfo> getAllnews(){
        return newsinfoDao.getAllnews();
    }
    public List<Newsinfo> getFivenew(){
        return newsinfoDao.getFivenew();
    }
    public Newsinfo getnewsByid(int nno){
        return newsinfoDao.getnewsByid(nno);
    }
    public List<Newsinfo> getnewsByvague(String msgs){
        return newsinfoDao.getnewsByvague(msgs);
    }
    public boolean addnews(Newsinfo newsinfo){
        return newsinfoDao.addnews(newsinfo);
    }
    public boolean delnews(int nno){
        return newsinfoDao.delnews(nno);
    }
    public boolean updatentitle(int nno,String ntitle){
        return newsinfoDao.updatentitle(nno, ntitle);
    }
    public boolean updatencontent(int nno,String ncontent){
        return newsinfoDao.updatencontent(nno, ncontent);
    }
    public boolean updatenauthor(int nno,String nauthor){
        return newsinfoDao.updatenauthor(nno, nauthor);
    }
    public boolean updatentime(int nno, Date ntime){
        return newsinfoDao.updatentime(nno, ntime);
    }
    public boolean updatenewsimg(int nno,String newsimg){
        return newsinfoDao.updatenewsimg(nno, newsimg);
    }
}
