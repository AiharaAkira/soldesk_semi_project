package com.semi.free;

import java.util.Date;

public class Comment {

	private String c_no;
	private String c_text;
	private Date c_date;
	private String
	
	
	
	create table comments(
			c_no varchar2(20 char) primary key,
			c_text varchar2(20 char) not null,
			c_date date not null,
			c_users varchar2(200 char) not null,
			c_post varchar2(200 char) not null
			);
}
