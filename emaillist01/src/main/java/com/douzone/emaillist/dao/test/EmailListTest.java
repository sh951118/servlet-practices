package com.douzone.emaillist.dao.test;

import java.util.List;

import com.douzone.emaillist.dao.EmailListDao;
import com.douzone.emaillist.vo.EmailListVo;

public class EmailListTest {

	public static void main(String[] args) {
//		insertTest();
		selectTest();
	}

	public static void selectTest() {
		List<EmailListVo> list = new EmailListDao().findAll();
		for(EmailListVo vo : list) {
			System.out.println(vo);
		}
	}
	public static void insertTest() {
		EmailListVo vo = new EmailListVo();
		vo.setFirstName("마");
		vo.setLastName("이콜");
		vo.setEmail("michol@gmail.com");
		new EmailListDao().insert(vo);
	}
}
