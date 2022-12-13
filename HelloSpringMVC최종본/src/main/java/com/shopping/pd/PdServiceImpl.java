package com.shopping.pd;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PdServiceImpl implements PdService{
	 @Autowired
	 PdDao pdDao;
	 
	 @Override
	 public String create(Map<String, Object> map) {
	     int affectRowCount = this.pdDao.insert(map);
	     if (affectRowCount ==  1) {
	         return map.get("pd_num").toString();
	     }
	     return null;

	 }
	 
	 @Override  
	 public List<Map<String, Object>> list(Map<String, Object> map){  
	 return this.pdDao.selectList(map);  
	 }  
	 
	 @Override
	 public Map<String, Object> detail(Map<String, Object> map){
	     return this.pdDao.selectDetail(map);
	 }
	 
	 @Override  
	 public boolean edit(Map<String, Object> map) {  
	 int affectRowCount = this.pdDao.update(map);  
	 return affectRowCount == 1;  

	 }  
	 
	 @Override  
	 public boolean remove(Map<String, Object> map) {  
	 int affectRowCount = this.pdDao.delete(map);  
	 return affectRowCount == 1;  

	 }  
}
