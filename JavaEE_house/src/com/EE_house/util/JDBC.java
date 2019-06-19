package com.EE_house.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class JDBC {
	
	public static void main(String[] args) {
		JDBC jdbc = new JDBC();
		/*
		 * 法一
		 * 		Connection conn = jdbc.getConnection();
		 */
		
		//法三
		Connection conn = jdbc.openConnection();
		System.out.println(conn);
	}
	
	//数据库连接 法一，连接固定单一数据库
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rent?useUnicode=true&characterEncoding=utf-8", "root", "");
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return null;
	}
	
	//数据库连接 法二，连接任意数据库
	public Connection getConnection(String url,String driver,String username,String password) {
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return null;
	}
	
	//数据库连接 法三，连接任意数据库
	public Connection openConnection() {
		//工具类
		Properties prop = new Properties();
		String driver =null;
		String url = null;
		String username = null;
		String password = null;
		//输入流
		try {
			prop.load(this.getClass().getClassLoader().getResourceAsStream("dbConfig.properties"));
			driver = prop.getProperty("driver");
			url = prop.getProperty("url");
			username = prop.getProperty("username");
			password = prop.getProperty("password");
			Class.forName(driver);
			return DriverManager.getConnection(url, username, password);
		} catch (Exception e) {//Exception 异常一起捕获
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return null;
	}
	
	//关闭连接
	public void closeConnection(Connection conn) {
		if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
		}
	}

}
