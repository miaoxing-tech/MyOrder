package com.wewe.myorder.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.google.common.base.Preconditions;
import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.dao.NoteDao;
import com.wewe.myorder.model.Note;
import com.wewe.myorder.request.entity.NoteQueryParams;

@Service
public class NoteService {
  
  @Resource NoteDao noteDao;

  public void add(Note entity) {
    entity.setCreateTime(new Date());
    int rows = noteDao.insert(entity);
    Preconditions.checkArgument(rows > 0, "添加笔记失败");
  }

  public void edit(Note entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    entity.setUpdateTime(new Date());
    int rows = noteDao.update(entity);
    Preconditions.checkArgument(rows > 0, "修改笔记失败");    
  }

  public void delete(Note entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    int rows = noteDao.delete(entity.getId());
    Preconditions.checkArgument(rows > 0, "删除笔记失败");
  }

  public List<Note> getList(NoteQueryParams params, int pageSize, int pageNumber) {
    Pagination page = new Pagination(pageSize, pageNumber);
    return noteDao.queryByParams(params, page);
  }

  public int getCount(NoteQueryParams params, int pageSize, int pageNumber) {
    return noteDao.countByParams(params, pageSize, pageNumber);
  }

  public Note getNote(int id) {
    Preconditions.checkNotNull(id, "ID不能为空");
    return noteDao.queryByID(id);
  }

  public List<Note> getAll() {
    return noteDao.queryAll();
  }

}
