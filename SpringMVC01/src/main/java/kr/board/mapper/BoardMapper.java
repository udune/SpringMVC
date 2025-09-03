package kr.board.mapper;

import kr.board.entity.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    public List<Board> getLists(); // 전체리스트
}
