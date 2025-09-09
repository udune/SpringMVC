package kr.board.mapper;

import kr.board.entity.Board;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface BoardMapper {
    public List<Board> getLists(); // 전체리스트
    public void boardInsert(Board vo); // 글쓰기
    public Board boardContent(int idx); // 글내용
    public void boardDelete(int idx); // 글삭제
    public void boardUpdate(Board vo); // 글수정
    @Update("update myboard set count = count + 1 where idx = #{idx}")
    public void boardCount(int idx); // 조회수증가
}
