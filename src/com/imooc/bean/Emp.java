package com.imooc.bean;

/**
 * Created by TangTian on 2018/7/23.
 */
public class Emp{
    private String id;
    private String name;
    private String password;
    private String email;
    private String word;
    private String telnum;

    public Emp(String id, String name, String password, String email, String word, String telnum) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.word = word;
        this.telnum = telnum;
    }

    public String getTelnum() {
        return telnum;
    }

    public void setTelnum(String telnum) {
        this.telnum = telnum;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}