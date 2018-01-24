package com.wewe.myorder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.model.Note;
import com.wewe.myorder.request.entity.NoteQueryParams;

@Repository
public interface NoteDao {
  
  int insert(@Param("entity") Note entity);

  int update(@Param("entity") Note entity);

  List<Note> queryByParams(@Param("params") NoteQueryParams params, @Param("page") Pagination page);

  Note queryByID(@Param("id") int id);

  int countByParams(@Param("params") NoteQueryParams params, int pageSize, int pageNumber);

  int delete(@Param("id") int id);
  
  List<Note> queryAll();

}
