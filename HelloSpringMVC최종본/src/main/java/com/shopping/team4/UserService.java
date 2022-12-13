package com.shopping.team4;

import java.util.List;
import java.util.Map;

public interface UserService {

	String create(Map<String, Object> map);

	Map<String, Object> detail(Map<String, Object> map);
	
	int idCheck(Map<String, Object> map) throws Exception;

	boolean edit(Map<String, Object> map);

	boolean login(Map<String, Object> map);
	
	Map<String, Object> login_ok(Map<String, Object> map);
	
	public int idCheck_test(String id);

	List<Map<String, Object>> list(Map<String, Object> map);
	
	String cart(Map<String, Object> map);

	List<Map<String, Object>> buy_list(Map<String, Object> map);

	List<Map<String, Object>> cartlist(Map<String, Object> map);
	
	List<Map<String, Object>> cartlist_admin(Map<String, Object> map);

	List<Map<String, Object>> mycartlist(Map<String, Object> map);
	
	List<Map<String, Object>> select_buyinfo(Map<String, Object> map);
	
	List<Map<String, Object>> weather_list();

	boolean remove(Map<String, Object> map);
}
