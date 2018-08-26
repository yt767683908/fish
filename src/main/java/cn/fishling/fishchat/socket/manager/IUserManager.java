package cn.fishling.fishchat.socket.manager;

import cn.fishling.fishchat.pojo.SocketUser;

import javax.websocket.Session;

/**
 * Created by pz on 16/11/23.
 */
public interface IUserManager {

    boolean addUser(SocketUser user);

    boolean removeUser(SocketUser user);

    int getOnlineCount();

    SocketUser getUser(int userId);

}
