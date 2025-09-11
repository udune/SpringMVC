package kr.board.controller;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class BoardController {
    private final BoardMapper boardMapper;

    @RequestMapping("/")
    public String main() {
        return "main";
    }

    // @ResponseBody->jackson-databind 라이브러리가 JSON 데이터 형식으로 변환
    @RequestMapping("/boardList.do")
    public @ResponseBody List<Board> boardList() {
        List<Board> list = boardMapper.getLists();
        return list; // JSON 데이터 형식으로 변환해서 리턴(응답)하겠다.
    }
}
