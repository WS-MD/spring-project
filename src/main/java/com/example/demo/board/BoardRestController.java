package com.example.demo.board;

import com.example.demo.board.mapper.BoardMapper;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/board/")
public class BoardRestController {
	@Resource(name = "com.example.demo.board.mapper.BoardMapper")
	BoardMapper boardDao;

	@GetMapping(value = "list", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<BoardVO> list() {
		System.out.println(boardDao.boardCount());
		return boardDao.boardList();
	}
	
	@GetMapping(value = "{board_seq}", produces = MediaType.APPLICATION_JSON_VALUE)
	public BoardVO detail(@PathVariable int board_seq) {
		return boardDao.boardDetail(board_seq);
	}
	
	@PostMapping(value = "insert", consumes = MediaType.APPLICATION_JSON_VALUE)
	public void insert(@RequestBody BoardVO vo) {
		System.out.println(vo);
		boardDao.boardInsert(vo);
	}
	
	@PutMapping(value = "update/{board_seq}", consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@PathVariable int board_seq, @RequestBody BoardVO vo) {
		System.out.println(vo);
		vo.setBoard_seq(board_seq);
		boardDao.boardUpdate(vo);
	}
	
	@DeleteMapping(value = "delete/{board_seq}")
	public void delete(@PathVariable int board_seq) {
		System.out.println(board_seq);
		boardDao.boardDelete(board_seq);
	}
}
