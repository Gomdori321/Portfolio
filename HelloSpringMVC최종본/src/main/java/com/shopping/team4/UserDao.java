package com.shopping.team4;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	 @Autowired
	 SqlSessionTemplate sqlSessionTemplate;
	 
	 public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("user.insert", map);
		}
	 public int delete(Map<String, Object> map) {
		  return this.sqlSessionTemplate.delete("user.delete", map);
		}
	 
	 public Map<String, Object> selectDetail(Map<String, Object> map) {
		    return this.sqlSessionTemplate.selectOne("user.select_detail", map);
		}
	 
	 public Map<String, Object> Login_Check(Map<String, Object> map){
		 return this.sqlSessionTemplate.selectOne("user.login_ok", map);
		 
	 }
	 
	 
	 
	 
	 
	 public int update(Map<String, Object> map) {  
		 return this.sqlSessionTemplate.update("user.update", map);  
		 }  
	 
	 public int idCheck(Map<String, Object> map){
		 int result=  this.sqlSessionTemplate.selectOne("user.idCheck", map);
				 return result;
	 }

	public int idCheck_test(String id) {
		int result = this.sqlSessionTemplate.selectOne("user.idCheck_test", id);
		System.out.println(result);
		System.out.println("cc");
		return result;
	}
	 
	 
	public List<Map<String, Object>> selectList(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("user.select_list", map);  
		}  
	 
	public List<Map<String, Object>> weather_list() {
		// TODO Auto-generated method stub
		return this.sqlSessionTemplate.selectList("user.weather_list");
	} 
	
		public List<Map<String, Object>> buy_list(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("user.buy_list", map);  
		} 
	
	
	
	public List<Map<String, Object>> cartList(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("user.cart_list", map);  
		}  
	
	public List<Map<String, Object>> cartList_admin(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("user.cart_list_admin", map);  
		} 
	
	
	
	
	public List<Map<String, Object>> mycartList(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("user.mycart_list", map);  
		} 
	
	public List<Map<String, Object>> select_buyinfo(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("user.select_buyinfo", map);  
		} 
	 
	 public int addCart(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("user.addCart", map);
		}
	 
}