package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.Newsinfo;
import com.liu.mentalhealth.services.NewsinfoServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Date;
import java.util.List;

@RestController
public class NewsinfoController {
    @Autowired
    public NewsinfoServices newsinfoServices;

    @GetMapping("/getallnews")
    public List<Newsinfo> getallnews(){
        List<Newsinfo> infos = newsinfoServices.getAllnews();
        /*
        String newimg;
        for(Newsinfo info : infos){
            newimg = info.getNewsimg();
            info.setNewsimg("file:///"+newimg);
        }
         */
        return infos;
    }

    @GetMapping("/getFivenew")
    public List<Newsinfo> getFivenew(){
        List<Newsinfo> newsinfos = newsinfoServices.getFivenew();
        return newsinfos;
    }

    @GetMapping("/getnewsByid")
    public Newsinfo getinfo(int nno){
        Newsinfo info = newsinfoServices.getnewsByid(nno);
        String str = info.getNcontent();
        info.setNcontent(str.replace(" ","<br>"));
        return info;
    }

    @GetMapping("/getnewsByvague")
    public List<Newsinfo> getnewsByvague(String msgs){
        String nmsgs = "%" + msgs + "%";
        List<Newsinfo> infos = newsinfoServices.getnewsByvague(nmsgs);
        return infos;
    }

    @GetMapping("/addnews")
    public String addnews(Newsinfo newsinfo){
        boolean b = newsinfoServices.addnews(newsinfo);
        String msg;
        if (b == true){
            msg = "插入成功";
        }else {
            msg = "插入失败";
        }
        return msg;
    }

    @GetMapping("/delnews")
    public String delnews(int nno){
        boolean b = newsinfoServices.delnews(nno);
        String msg;
        if (b == true){
            msg = "删除成功";
        }else {
            msg = "删除失败";
        }
        return msg;
    }

    @GetMapping("/updatentitle")
    public String updatentitle(int nno,String ntitle){
        boolean b = newsinfoServices.updatentitle(nno, ntitle);
        String msg;
        if (b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }


    @GetMapping("/updatencontent")
    public String updatencontent(int nno,String ncontent){
        boolean b = newsinfoServices.updatencontent(nno, ncontent);
        String msg;
        if (b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatenauthor")
    public String updatenauthor(int nno,String nauthor){
        boolean b = newsinfoServices.updatenauthor(nno, nauthor);
        String msg;
        if (b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatentime")
    public String updatentime(int nno, Date ntime){
        boolean b = newsinfoServices.updatentime(nno, ntime);
        String msg;
        if (b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatenewsimg")
    public String updatenewsimg(int nno,String newsimg){
        boolean b = newsinfoServices.updatenewsimg(nno, newsimg);
        String msg;
        if (b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
}
