package com.liu.mentalhealth.controller;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.liu.mentalhealth.entity.TreeandUser;
import com.liu.mentalhealth.entity.Treepost;
import com.liu.mentalhealth.entity.User;
import com.liu.mentalhealth.services.TreepostServices;
import com.liu.mentalhealth.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@RestController
public class TreepostController {
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Autowired
    public TreepostServices treepostServices;

    @GetMapping("/getAlltreepost")
    public List<Treepost> getAlltreepost(){
        List<Treepost> tposts = treepostServices.getAlltreepost();
        return tposts;
    }

    @GetMapping("/getpostbyvag")
    public List<Treepost> getpostbyvag(String str){
        str = '%' + str + '%';
        List<Treepost> treeposts = treepostServices.getpostbyvag(str);
        return treeposts;
    }

    @GetMapping("/getpostanduser")
    public List<TreeandUser> getpostanduser(){
        List<TreeandUser> list = treepostServices.getpostanduser();
        return list;
    }

    @GetMapping("/getpostbytrno")
    public Treepost getpostbytrno(int trno){
        Treepost tpost = treepostServices.getpostbytrno(trno);
        return tpost;
    }

    @GetMapping("/getpostbyuid")
    public List<Treepost> getpostbyuid(String uid){
        List<Treepost> posts = treepostServices.getpostbyuid(uid);
        return posts;
    }

    @GetMapping("/getpostanduserbyuid")
    public List<TreeandUser> getpostanduserbyuid(String uid){
        List<TreeandUser> treeandUsers = treepostServices.getpostanduserbyuid(uid);
        return treeandUsers;
    }

    @GetMapping("/addtreepost")
    public String addtreepost(String uid, String trucontent){
        String str;
        Timestamp trtime = new Timestamp(System.currentTimeMillis());
        boolean b = treepostServices.addtreepost(uid,trucontent,trtime);
        if(b == true){
            str = "发布成功";
        }else {
            str = "发布失败";
        }
        return str;
    }

    @GetMapping("/getpostByuidAndtrno")
    public TreeandUser getpostByuidAndtrno(int trno){
        TreeandUser tuser = treepostServices.getpostByuidAndtrno(trno);
        return tuser;
    }

    @GetMapping("/deltreepost")
    public String deltreepost(int trno){
        String str;
        boolean b = treepostServices.deltreepost(trno);
        if(b == true){
            str = "删除成功";
        }else {
            str = "删除失败";
        }
        return str;
    }
}
