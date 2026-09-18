package com.liu.mentalhealth.Utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;


import org.apache.http.HttpStatus;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: lzp
 * @Description: 统一返回的工具类
 * @Date Create in 13:26 2022/04/06
 * @Modified By:
 */
public class R extends HashMap<String, Object> {
    private static final long serialVersionUID = 1L;
    //存元素 和setData的区别是 这个方法可以指定key的值
    public R put(String key, Object value) {
        super.put(key, value);
        return this;

    }

    public R setData(Object data) {
        put("data",data);
        return this;
    }

    //远程调用服务时，另一个服务也会返回R类型的数据，这个方法可以获取key为data的value值
    //利用fastjson进行反序列化
    public <T> T getData(TypeReference<T> typeReference) {
        Object data = get("data");	//默认是map
        String jsonString = JSON.toJSONString(data);//转为json字符串
        T t = JSON.parseObject(jsonString, typeReference);//转为对象
        return t;
    }
    //利用fastjson进行反序列化
    public <T> T getData(String key,TypeReference<T> typeReference) {
        Object data = get(key);	//默认是map
        //转为json字符串
        String jsonString = JSON.toJSONString(data);//转为json字符串
        //转成需要的对象
        T t = JSON.parseObject(jsonString, typeReference);//转为对象
        return t;
    }
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    //无参构造
    public R() {
        put("code", 0);
        put("msg", "success");
    }

    //返回错误码500的错误，错误内容：未知异常，请联系管理员
    public static R error() {
        return error(HttpStatus.SC_INTERNAL_SERVER_ERROR, "未知异常，请联系管理员");
    }
    //返回错误码500的错误，错误内容需要自己传入
    public static R error(String msg) {
        return error(HttpStatus.SC_INTERNAL_SERVER_ERROR, msg);
    }
    //返回自定义错误码，自定义错误内容
    public static R error(int code, String msg) {
        R r = new R();
        r.put("code", code);
        r.put("msg", msg);
        return r;
    }

    //返回正常，内容需要自己传入
    public static R ok(String msg) {
        R r = new R();
        r.put("msg", msg);
        return r;
    }
    //存入多条返回消息
    public static R ok(Map<String, Object> map) {
        R r = new R();
        r.putAll(map);
        return r;
    }

    //默认返回 0 success
    public static R ok() {
        return new R();
    }

    //获取code（状态码）的值
    public Integer getCode() {
        return (Integer) this.get("code");
    }
}


