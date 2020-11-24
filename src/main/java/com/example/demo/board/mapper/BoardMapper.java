package com.example.demo.board.mapper;

import com.example.demo.board.BoardVO;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository("com.example.demo.board.mapper.BoardMapper")
public interface BoardMapper {
	public List<BoardVO> boardList();
	public BoardVO boardDetail(int board_seq);
	public int boardCount();
	public int boardInsert(BoardVO vo);
	public int boardUpdate(BoardVO vo);
	public int boardDelete(int board_seq);
}
