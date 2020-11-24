package com.example.demo.board;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {

	/**
	 * 게시글 seq
	 */
	int board_seq;
	/**
	 * 게시판 종류
	 */
	String board_kind;
	/**
	 * 게시글 내용
	 */
	String content;
	/**
	 * 등록일자
	 */
	String reg_dt;
	/**
	 * 등록자 아이디
	 */
	String reg_id;
	/**
	 * 게시글 제목
	 */
	String title;
	/**
	 * 게시글 수정일자
	 */
	String update_dt;
	/**
	 * 좋아요수
	 */
	int like_cnt;
	/**
	 * 조회수
	 */
	int view_cnt;
	/**
	 * 등록자 MEMBER.member_seq
	 */
	int member_seq;
}
