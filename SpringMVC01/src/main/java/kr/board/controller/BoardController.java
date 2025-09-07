package kr.board.controller;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class BoardController {
    private final BoardMapper mapper;

    @RequestMapping("/boardList.do")
    public String boardList(Model model) {
        List<Board> list = mapper.getLists();
        model.addAttribute("list", list);
        return "boardList"; // /WEB-INF/views/boardList.jsp
    }

    @GetMapping("/boardForm.do")
    public String boardForm() {
        return "boardForm"; // /WEB-INF/views/boardForm.jsp
    }

    @PostMapping("/boardInsert.do")
    public String boardInsert(Board vo) { // title, content, writer => 파라메터 수집 (Board)
        mapper.boardInsert(vo);
        return "redirect:boardList.do"; // redirect
    }
}
