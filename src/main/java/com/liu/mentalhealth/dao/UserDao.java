package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.User;
import org.apache.ibatis.annotations.Mapper;


import java.util.List;

@Mapper
public interface UserDao {
    public List<User> getAllUser();
    public User getUserById(String uid);
    public User getUserByidandpwd(String uid,String upwd);
    public List<User> getusersByvague(String msg);
    public boolean AddUser(String uid,String upwd,String uname,String usex,int uage,String uiphone,String cno,String uimg);
    public boolean delUser(String uid);
    public boolean updateUserpwd(String uid,String upwd);
    public boolean updateUsername(String uid,String uname);
    public boolean updateUsersex(String uid,String usex);
    public boolean updateUserage(String uid,int uage);
    public boolean updateUseriphone(String uid,String uiphone);
    public boolean updateUsercno(String uid,String ucno);
}
