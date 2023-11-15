package com.example.homecontrol.DB;

import java.sql.*;

public class DBManager{
    private DBManager Instance = null;
    private Connection conn = null;
    private String url = "jdbc:mysql://redcan.iptime.org:4322/home";
    private String user = "root";
    private String pw = "1234";

    public DBManager() {}
    public DBManager newInstance(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.conn = DriverManager.getConnection(url, user, pw);

        }catch (Exception e){
            System.out.println(e);
            return null;
        }

        if(this.Instance!=null)
            this.Instance = new DBManager();
        return this.Instance;
    }
    public DBManager getInstance() {
        return Instance;
    }
}
