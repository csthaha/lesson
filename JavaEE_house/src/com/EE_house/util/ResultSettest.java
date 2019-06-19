package com.EE_house.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ResultSettest {
	
	public static void main(String[] args) {
		//修改留言 updatableResultSet("内容", 2);
		
		/*		 @SuppressWarnings("deprecation")
		Date date = new Date(0, 0, 0);//获得系统时间.

		 String nowTime = new SimpleDateFormat("yyyy-MM-ddHH:mm:ss").format(date);//将时间格式转换成符合Timestamp要求的格式.

		 Timestamp goodsC_date =Timestamp.valueOf(nowTime);//把时间转换
*/
		
		//添加功能
		addLogin();
		//addComment("添加测试","刘东春");
		//addResultSet("添加测试","剑圣");
		System.out.println("成功");
		
		//更新功能
		
		
		//删除功能
		
		
	}
/*	static void Result() {
		
	}*/
	
	//更新一行留言
	static void updatableResultSet(String content,int row) {
		JDBC jdbc = new JDBC();
		Connection conn = jdbc.openConnection();
		String sql = "select * from comment";
		
		Statement stmt;
		try {
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery(sql);

			//rs.absolute(2);   //定位列
			//rs.updateString("commenter", "小明");
			//rs.updateString("commentcontent", "内容");
			rs.absolute(row);
			rs.updateString("commentcontent", content);
			//rs.updateString("commenter", "留言人");
			//rs.updateDate(2, "时间");
			rs.updateRow();  //更新一行信息
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		
	}
	
	//添加
	 static void addResultSet(String content,String name) {

			
		JDBC jdbc = new JDBC();
		Connection conn = jdbc.openConnection();
		String sql = "select * from comment";
		Statement stmt;
		try {
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery(sql);

			//添加
			rs.moveToInsertRow();
			rs.updateString("commenter", name);
			rs.updateString("commentcontent", content);
			//java.sql.Timestamp(java.util.Date().getTime());
			//rs.updateDate("stamp", (java.sql.Date) now);
			rs.insertRow();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
	}
	 //添加用户
	 static void addLogin() {
			JDBC jdbc = new JDBC();
			Connection conn = jdbc.openConnection();
			
			Date now = new Date();
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(now);//将时间格式转换成符合Timestamp要求的格式.
			 Timestamp goodsC_date =Timestamp.valueOf(nowTime);//把时间转换
			
			 //System.out.println(goodsC_date);
			String sql = "insert into login (username, passwd,uidcard,uphone)values('小明','123','154895462054872013','1547936521')";
			Statement stmt;
			try {
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e1) {
				// TODO 自动生成的 catch 块
				e1.printStackTrace();
				System.out.println("错误");
			}
	 }
	 
}
