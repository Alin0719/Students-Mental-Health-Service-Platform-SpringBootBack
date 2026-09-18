package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.ReplyandUser;
import com.liu.mentalhealth.entity.Treereply;
import com.liu.mentalhealth.services.TreepostServices;
import com.liu.mentalhealth.services.TreereplyServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;
import java.util.List;

@RestController
public class TreereplyController {
    @Autowired
    public TreereplyServices treereplyServices;

    @GetMapping("/getAllreply")
    public List<Treereply> getAllreply(){
        List<Treereply> replys = treereplyServices.getAllreply();
        return replys;
    }

    @GetMapping("/getreplybyvag")
    public List<Treereply> getreplybyvag(String str){
        str = '%' + str + '%';
        List<Treereply> treereplies = treereplyServices.getreplybyvag(str);
        return treereplies;
    }

    @GetMapping("/getreplyByreplyno")
    public Treereply getreplyByreplyno(int replyno){
        Treereply treereply = treereplyServices.getreplyByreplyno(replyno);
        return treereply;
    }

    @GetMapping("/getreplyByuid")
    public List<Treereply> getreplyByuid(String uid){
        List<Treereply> replylist = treereplyServices.getreplyByuid(uid);
        return replylist;
    }

    @GetMapping("/getreplyBytrno")
    public List<Treereply> getreplyBytrno(int trno){
        List<Treereply> replylist = treereplyServices.getreplyBytrno(trno);
        return replylist;
    }

    @GetMapping("/getreplyanduserbyuid")
    public List<ReplyandUser> getreplyanduserbyuid(String uid){
        List<ReplyandUser> replyandUsers = treereplyServices.getreplyanduserbyuid(uid);
        return replyandUsers;
    }

    @GetMapping("/getreBytrnoanduid")
    public List<ReplyandUser> getreBytrnoanduid(int trno){
        List<ReplyandUser> list = treereplyServices.getreBytrnoanduid(trno);
        return list;
    }

    @GetMapping("/addreply")
    public String addreply(int trno, String uid, String repcontent){
        String str;
        Timestamp reptime = new Timestamp(System.currentTimeMillis());
        boolean b = treereplyServices.addreply(trno,uid,repcontent,reptime);
        if(b == true){
            str = "发布成功";
        }else {
            str = "发布失败";
        }
        return str;
    }



    @GetMapping("/delreply")
    public String delreply(int replyno){
        String str;
        boolean b = treereplyServices.delreply(replyno);
        if(b == true){
            str = "删除成功";
        }else {
            str = "删除失败";
        }
        return str;
    }
}
