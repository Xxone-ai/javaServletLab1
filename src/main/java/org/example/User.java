package org.example;

public class User {

    public User(String log, String password) {
        userName = log;
        userPassword = password;
    }

    public  String getUserName() {
        return userName;
    }

    public String getUserPassword(){
        return userPassword;
    }

    private String userName;
    private String userPassword;
}
