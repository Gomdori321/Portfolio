package com.shopping.pd;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PdDao {
	 @Autowired
	 SqlSessionTemplate sqlSessionTemplate;
	 
	 public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("admin.insert", map);
		}
	 
	 public List<Map<String, Object>> selectList(Map<String, Object> map) {  
		 return this.sqlSessionTemplate.selectList("admin.select_list", map);  
		 }  
	 
	 public Map<String, Object> selectDetail(Map<String, Object> map) {
		    return this.sqlSessionTemplate.selectOne("admin.select_detail", map);
		}
	 
	 public int update(Map<String, Object> map) {  
		 return this.sqlSessionTemplate.update("admin.update", map);  
		 }  
	 public int delete(Map<String, Object> map) {  
		 return this.sqlSessionTemplate.delete("admin.delete", map);  
		 }  
}
