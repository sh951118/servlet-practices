package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	static int count = 0;

	public static void main(String[] args) {
////		insertTest();
		selectTest();
		deleteTest();
	}

	public static void selectTest() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for (GuestbookVo vo : list)
			System.out.println(vo);
	}

	public static void insertTest() {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("홍길동");
		vo.setContents("밥먹었니?");
		vo.setPassword("123zc4");
		
		new GuestbookDao().insert(vo);
	}

	public static void deleteTest() {
		GuestbookVo vo = new GuestbookVo();
		vo.setPassword("11111");
		new GuestbookDao().delete(vo);
	}
}
