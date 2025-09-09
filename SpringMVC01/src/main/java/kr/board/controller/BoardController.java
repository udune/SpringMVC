package kr.board.controller;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/boardContent.do")
    public String boardContent(int idx, Model model
    ) {
        Board vo = mapper.boardContent(idx);
        // 조회수 증가
        mapper.boardCount(idx);
        model.addAttribute("vo", vo);
        return "boardContent"; // /WEB-INF/views/boardContent.jsp
    }

    @GetMapping("/boardDelete.do/{idx}")
    public String boardDelete(
            @PathVariable("idx") int idx
    ) {
        mapper.boardDelete(idx);
        return "redirect:boardList.do";
    }

    @GetMapping("/boardUpdateForm.do/{idx}")
    public String boardUpdateForm(
            @PathVariable("idx") int idx,
            Model model
    ) {
        Board vo = mapper.boardContent(idx);
        model.addAttribute("vo", vo);
        return "boardUpdate"; // boardUpdate.jsp
    }

    @PostMapping("/boardUpdate.do")
    public String boardUpdate(Board vo) {
        mapper.boardUpdate(vo);
        return "redirect:boardList.do";
    }
}
