/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import beans.user;
import java.util.ArrayList;

/**
 *
 * @author StormCloud
 */
public class AccountService {
    
    private static ArrayList<user> authenticatedUsers;
    
    static{
        authenticatedUsers = new ArrayList<user>();
        authenticatedUsers.add(new user("adam","password"));
        authenticatedUsers.add(new user("betty","password"));
    }
    
    public static user login(String username,String password){
        user u = new user(username, password);
        if (authenticatedUsers.indexOf(u)>-1){
            u.setPassword(null);
            return u;
        }
        return null;
    }
    
    public static void authenticateUser(user u){
        authenticatedUsers.add(u);
    }
}
