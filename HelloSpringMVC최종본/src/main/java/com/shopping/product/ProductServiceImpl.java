package com.shopping.product;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//Controller랑 DAO를 이어주는 것
@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao productdao;//객체 자동 생성 및 관리
	
	@Override
	public String create(Map<String, Object> map) {
		int affectRowCount = this.productdao.insert(map);
		if(affectRowCount==1)
			return map.get("pd_name").toString();
		return null;
	}
	
	@Override
	public Map<String,Object> detail
		(Map<String,Object> map) {
		return this.productdao.selectDetail(map);
	}

	@Override
	public boolean edit(Map<String, Object> map) {
		int afftectRowCount = 
				this.productdao.update(map);
		//afftectRowCount가 1일 때 true리턴
		//즉 update 성공시 true리턴
		return afftectRowCount==1;
	}
	
	@Override
	public boolean remove(Map<String,Object> map) {
		int affectRowCount 
		= this.productdao.delete(map);
		return affectRowCount==1;
	}
	
	//import시 주의사항 : java.awt 아님
	@Override
	public List<Map<String,Object>> list
	(Map<String,Object> map) {
		return this.productdao.selectList(map);
	}

	@Override
	public int countPD(Map<String, Object> map) {
		return this.productdao.countPD(map);
	}

	
	@Override
	public List<Map<String, Object>> list_c(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return this.productdao.selectList_c(map);
	}


	@Override
	public List<Map<String, Object>> list_cb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return this.productdao.selectList_cb(map);
	}

	
}










