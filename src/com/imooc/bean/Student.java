package com.imooc.bean;

/**
 * Created by TangTian on 2018/7/23.
 */
public class Student {
    private String id;
    private String num;
    private String name;
    private String score;


    public Student(String id, String num, String score, String name) {
        this.id = id;
        this.num = num;
        this.score = score;
        this.name = name;

    }



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
