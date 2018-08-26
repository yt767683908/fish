package cn.fishling.fishchat.util;

import cn.fishling.fishchat.socket.manager.IUserManager;
import cn.fishling.fishchat.socket.manager.UserManager;
import cn.fishling.fishchat.util.serializer.FastJsonSerializer;
import cn.fishling.fishchat.util.serializer.IJsonSerializer;

/**
 * Created by pz on 16/11/23.
 */
public class LayIMFactory {
    //创建序列化器
    public static IJsonSerializer createSerializer(){
        return new FastJsonSerializer();
    }

    //创建在线人员管理工具
    public static IUserManager createManager(){
        return UserManager.getInstance();
    }



}
