package com.EE_house.util;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class sqlOperater {
	
	public static void main(String[] args){
		sqlOperater operater = new sqlOperater();
		operater.commentList();
	}
	
	//留言
	public void commentList() {
		JDBC jdbc = new JDBC();
		Connection conn = jdbc.getConnection();
		
		//留言表
		String sql = "select * from comment";
		
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs =stmt.executeQuery(sql); //结果集
			
			while(rs.next()) {
				int commentid = rs.getInt("commentid");
				String commentcontent = rs.getString("commentcontent");
				Date tamp = rs.getDate("stamp");
				String commenter = rs.getString("commenter");
				
				//测试输出
				System.out.println(commentid+":"+commentcontent+":"+tamp+":"+commenter);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			//关闭database连接
			jdbc.closeConnection(conn);
		}
		
	}

}
