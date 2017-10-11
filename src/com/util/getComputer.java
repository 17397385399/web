package com.util;

import java.net.InetAddress;  
import java.util.HashMap;
import java.util.Map;  

public class getComputer {  
     
    public static Map<String, String> getIpconfig(){  
    	Map<String,String> map=new HashMap<String, String>();
        try{  
            InetAddress addr = InetAddress.getLocalHost();   
            String ip=addr.getHostAddress().toString(); //获取本机ip  
            String hostName=addr.getHostName().toString(); //获取本机计算机名称  
            String currentUser = System.getProperty("user.name");
            map.put("ip", ip);
            map.put("hostName", hostName);
            map.put("currentUser", currentUser);
        }catch(Exception e){  
            e.printStackTrace();  
        }  
        return map;
    }  
   
    public static void main(String[] args) {  
    	System.err.println("电脑Ip	   "+getIpconfig().get("ip"));
    	System.err.println("电脑名称	   "+getIpconfig().get("hostName"));
    	System.err.println("电脑当前用户名     "+getIpconfig().get("currentUser"));
    }  
      
} 