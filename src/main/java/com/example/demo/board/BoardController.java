package com.example.demo.board;

import com.example.demo.board.mapper.BoardMapper;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
  @Resource(name = "com.example.demo.board.mapper.BoardMapper")
  BoardMapper boardDao;

  @RequestMapping("/list")
  public String list(Model model){
    model.addAttribute("boardList", boardDao.boardList());

    return "board/list";
  }

  @RequestMapping("/detail/{board_seq}")
  public String detail(@PathVariable int board_seq, Model model){
    model.addAttribute("boardDetail", boardDao.boardDetail(board_seq));

    return "board/detail";
  }

  @RequestMapping("/insert")
  public String insert(){
    return "board/insert";
  }

  @RequestMapping("/update/{board_seq}")
  public String update(@PathVariable int board_seq, Model model){
    model.addAttribute("boardDetail", boardDao.boardDetail(board_seq));

    return "board/update";
  }
}
