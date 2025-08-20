package kr.board.mapper;

import kr.board.entity.Board;

import java.util.List;

// @Mapper - Mybatis API
public interface BoardMapper {
    public List<Board> getLists(); // 전체리스트
}
