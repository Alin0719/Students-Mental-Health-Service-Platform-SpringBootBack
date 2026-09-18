package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.User;
import com.liu.mentalhealth.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@RestController
public class UserController {
    @Autowired
    public UserServices userServices;

    private final String UPLOAD_PATH = "E:\\MentalProject\\mentalhealth-front\\src\\assets";

    @PostMapping("/fileupload")
    public ResponseEntity<String> handleFileUpload(@RequestParam("file") MultipartFile file) throws IOException {
        // ... File upload logic ...
        if (file.isEmpty()) {
            return new ResponseEntity<>("文件不能为空", HttpStatus.BAD_REQUEST);
        }
        try {
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOAD_PATH + File.separator + file.getOriginalFilename());
            Files.write(path, bytes);
            return new ResponseEntity<>("文件上传成功", HttpStatus.OK);
        } catch (IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>("文件上传失败", HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    //通过用户id获取用户信息
    @GetMapping("/getuserByid")
    public User getuser(String uid){
        User user = userServices.getUserById(uid);
        return user;
    }

    @GetMapping("/getUserByidandpwd")
    public User getUserByidandpwd(String uid,String upwd){
        User user = userServices.getUserByidandpwd(uid,upwd);
        return user;
    }

    //获取全部用户信息
    @GetMapping("/getalluser")
    public List<User> alluser(){
        List<User> users = userServices.getAllUser();
        return users;
    }
    //模糊搜索用户
    @GetMapping("/getusersByvague")
    public List<User> getusersByvague(String msg){
        msg = "%" + msg +"%";
        List<User> users = userServices.getusersByvague(msg);
        return users;
    }
    //添加一个用户信息
    @GetMapping("/adduser")
    public String adduser(String uid,String upwd,String uname,String usex,int uage,String uiphone,String cno,String uimg){
        User user = new User(uid,upwd,uname,usex,uage,uiphone,cno,uimg);
        System.out.println(user.toString());
        boolean b = userServices.AddUser(uid,upwd,uname,usex,uage,uiphone,cno,uimg);
        String msg;
        if(b == true){
            msg = "插入成功";
        }else {
            msg = "插入失败";
        }
        return msg;
    }
    //删除一个用户数据
    @GetMapping("/deluser")
    public String deluser(String uid){
        boolean b = userServices.delUser(uid);
        String msg;
        if(b == true){
            msg = "删除成功";
        }else {
            msg = "删除失败";
        }
        return msg;
    }
    //修改用户密码
    @GetMapping("/updateuserpwd")
    public String upuserpwd(String uid,String upwd){
        boolean b = userServices.updateUserpwd(uid, upwd);
        String msg;
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
    //修改用户姓名
    @GetMapping("/updateusername")
    public String upusername(String uid,String uname){
        boolean b = userServices.updateUsername(uid, uname);
        String msg;
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
    //修改用户性别
    @GetMapping("/updateusersex")
    public String upusersex(String uid,String usex){
        boolean b = userServices.updateUsersex(uid,usex);
        String msg;
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
    //修改用户年龄
    @GetMapping("/updateuserage")
    public String upuserage(String uid,int uage){
        boolean b = userServices.updateUserage(uid, uage);
        String msg;
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
    //修改用户手机号码
    @GetMapping("/updateuseriphone")
    public String upuseriphone(String uid,String uiphone){
        boolean b = userServices.updateUseriphone(uid, uiphone);
        String msg;
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
    //修改用户班级
    @GetMapping("/updateusercno")
    public String upusercno(String uid,String cno){
        boolean b = userServices.updateUsercno(uid, cno);
        String msg;
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }


}
