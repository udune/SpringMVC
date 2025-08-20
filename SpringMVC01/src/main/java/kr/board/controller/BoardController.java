package kr.board.controller;

import kr.board.entity.Board;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BoardController {

    @RequestMapping("/boardList.do")
    public String boardList(Model model) {

        Board vo = new Board();
        vo.setIdx(1);
        vo.setTitle("게시판 실습");
        vo.setContent("게시판 실습 내용");
        vo.setWriter("홍길동");
        vo.setIndate("2023-10-01");
        vo.setCount(100);

        List<Board> list = new ArrayList<Board>();
        list.add(vo);
        list.add(vo);
        list.add(vo);

        model.addAttribute("list", list);
        return "boardList"; // /WEB-INF/views/boardList.jsp
    }
}
