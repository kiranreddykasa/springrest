// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.getit.todoapp.service;

import com.getit.todoapp.domain.Todo;
import com.getit.todoapp.repository.TodoRepository;
import com.getit.todoapp.service.TodoServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TodoServiceImpl_Roo_Service {
    
    declare @type: TodoServiceImpl: @Service;
    
    declare @type: TodoServiceImpl: @Transactional;
    
    @Autowired
    TodoRepository TodoServiceImpl.todoRepository;
    
    public long TodoServiceImpl.countAllTodoes() {
        return todoRepository.count();
    }
    
    public void TodoServiceImpl.deleteTodo(Todo todo) {
        todoRepository.delete(todo);
    }
    
    public Todo TodoServiceImpl.findTodo(Long id) {
        return todoRepository.findOne(id);
    }
    
    public List<Todo> TodoServiceImpl.findAllTodoes() {
        return todoRepository.findAll();
    }
    
    public List<Todo> TodoServiceImpl.findTodoEntries(int firstResult, int maxResults) {
        return todoRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void TodoServiceImpl.saveTodo(Todo todo) {
        todoRepository.save(todo);
    }
    
    public Todo TodoServiceImpl.updateTodo(Todo todo) {
        return todoRepository.save(todo);
    }
    
}
