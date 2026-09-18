package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.UserDao;
import com.liu.mentalhealth.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServices{

    @Resource
    public UserDao userDao;

    public List<User>  getAllUser(){
        return userDao.getAllUser();
    }
    public User getUserById(String uid){
        return userDao.getUserById(uid);
    }
    public User getUserByidandpwd(String uid,String upwd){
        return userDao.getUserByidandpwd(uid,upwd);
    }
    public boolean AddUser(String uid,String upwd,String uname,String usex,int uage,String uiphone,String cno,String uimg){
        return userDao.AddUser(uid,upwd,uname,usex,uage,uiphone,cno,uimg);
    }
    public List<User> getusersByvague(String msg){
        return userDao.getusersByvague(msg);
    }
    public boolean delUser(String uid){
        return userDao.delUser(uid);
    }
    public boolean updateUserpwd(String uid,String upwd){
        return userDao.updateUserpwd(uid,upwd);
    }
    public boolean updateUsername(String uid,String uname){
        return userDao.updateUsername(uid,uname);
    }
    public boolean updateUsersex(String uid,String usex){
        return userDao.updateUsersex(uid,usex);
    }
    public boolean updateUserage(String uid,int uage){
        return userDao.updateUserage(uid,uage);
    }
    public boolean updateUseriphone(String uid,String uiphone){
        return userDao.updateUseriphone(uid, uiphone);
    }
    public boolean updateUsercno(String uid,String ucno){
        return userDao.updateUsercno(uid, ucno);
    }

}
