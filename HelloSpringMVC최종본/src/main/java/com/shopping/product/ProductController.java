package com.shopping.product;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class ProductController {

	
	@Autowired
	ProductService productservice;
	

	
	@RequestMapping(value="/mainhome2")
	public ModelAndView list
	(@RequestParam Map<String,Object> map,
	 @RequestParam(value="nowPage",required=false) String nowPage) {
		double CNT = 8.0; //占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占실뱄옙(占쌔울옙 占쏙옙占쏙옙)
		int LIMITCOUNT = (int)CNT;
		if(nowPage!=null) {
			int now = Integer.parseInt(nowPage);
			int skipCount=0;
			if(now>1)
				skipCount = (now-1)*LIMITCOUNT;
			map.put("skipCount", skipCount);
		} else {
			map.put("skipCount",0);
		}
		
		List<Map<String,Object>> list =
				this.productservice.list(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("data",list);
		int totalCount = 
				(int)Math.ceil
				(this.productservice.countPD(map)/CNT);
				//ceil : 占시몌옙
		mav.addObject("totalCount", totalCount);//占쏙옙 占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
		
		int nowPos = nowPage==null?1:Integer.parseInt(nowPage);
		if(nowPos<=0)
			nowPos=1;
		mav.addObject("nowPage",nowPos);
		
		int endPage = (int)(Math.ceil(nowPos/CNT)*(LIMITCOUNT));
		int startPage = 0;
		if(endPage>totalCount) { //占쏙옙 占싸븝옙
			startPage = endPage-(LIMITCOUNT)+1;
			endPage=totalCount;
		} else {
			startPage = endPage-(LIMITCOUNT)+1;
		}
		if(startPage<=0)
			startPage=1;
		
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		
		
//		
//		//占싯삼옙占쏙옙 占식띰옙占쏙옙占� 占쏙옙 占쌩곤옙占쏙옙
//		//占싯삼옙 占싣뱄옙 占싶듸옙 占쌉뤄옙 占쏙옙 占싹몌옙 占쏙옙占쏙옙占쏙옙 占쏙옙瞿占쏙옙占� 처占쏙옙 占쏙옙占쏙옙
		if(map.containsKey("keyword"))
			mav.addObject("keyword", map.get("keyword"));
		
		mav.setViewName("/user/mainhome2");
		return mav;
		
	}
	
	@RequestMapping(value="/mainhome2_c")
	public ModelAndView list_c
	(@RequestParam Map<String,Object> map,
	 @RequestParam(value="nowPage",required=false) String nowPage) {
		double CNT = 8.0; //占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占실뱄옙(占쌔울옙 占쏙옙占쏙옙)
		int LIMITCOUNT = (int)CNT;
		if(nowPage!=null) {
			int now = Integer.parseInt(nowPage);
			int skipCount=0;
			if(now>1)
				skipCount = (now-1)*LIMITCOUNT;
			map.put("skipCount", skipCount);
		} else {
			map.put("skipCount",0);
		}
		
		List<Map<String,Object>> list =
				this.productservice.list_c(map);
		
		ModelAndView mav = new ModelAndView();
		
		
		System.out.println(map);
		System.out.println("aaaaa");
		System.out.println(list);
		
		mav.addObject("data",list);
		int totalCount = 
				(int)Math.ceil
				(this.productservice.countPD(map)/CNT);
				//ceil : 占시몌옙
		mav.addObject("totalCount", totalCount);//占쏙옙 占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
		
		int nowPos = nowPage==null?1:Integer.parseInt(nowPage);
		if(nowPos<=0)
			nowPos=1;
		mav.addObject("nowPage",nowPos);
		
		int endPage = (int)(Math.ceil(nowPos/CNT)*(LIMITCOUNT));
		int startPage = 0;
		if(endPage>totalCount) { //占쏙옙 占싸븝옙
			startPage = endPage-(LIMITCOUNT)+1;
			endPage=totalCount;
		} else {
			startPage = endPage-(LIMITCOUNT)+1;
		}
		if(startPage<=0)
			startPage=1;
		
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		
		
//		
//		//占싯삼옙占쏙옙 占식띰옙占쏙옙占� 占쏙옙 占쌩곤옙占쏙옙
//		//占싯삼옙 占싣뱄옙 占싶듸옙 占쌉뤄옙 占쏙옙 占싹몌옙 占쏙옙占쏙옙占쏙옙 占쏙옙瞿占쏙옙占� 처占쏙옙 占쏙옙占쏙옙
		if(map.containsKey("keyword"))
			mav.addObject("keyword", map.get("keyword"));
		
		mav.setViewName("/user/mainhome2");
		return mav;
		
	}
	
	
	@RequestMapping(value="/mainhome2_cb")
	public ModelAndView list_cb
	(@RequestParam Map<String,Object> map,
	 @RequestParam(value="nowPage",required=false) String nowPage) {
		double CNT = 8.0; //占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占실뱄옙(占쌔울옙 占쏙옙占쏙옙)
		int LIMITCOUNT = (int)CNT;
		if(nowPage!=null) {
			int now = Integer.parseInt(nowPage);
			int skipCount=0;
			if(now>1)
				skipCount = (now-1)*LIMITCOUNT;
			map.put("skipCount", skipCount);
		} else {
			map.put("skipCount",0);
		}
		
		List<Map<String,Object>> list =
				this.productservice.list_cb(map);
		
		ModelAndView mav = new ModelAndView();
		
		
		System.out.println(map);
		System.out.println("aaaaa");
		System.out.println(list);
		
		mav.addObject("data",list);
		int totalCount = 
				(int)Math.ceil
				(this.productservice.countPD(map)/CNT);
				//ceil : 占시몌옙
		mav.addObject("totalCount", totalCount);//占쏙옙 占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
		
		int nowPos = nowPage==null?1:Integer.parseInt(nowPage);
		if(nowPos<=0)
			nowPos=1;
		mav.addObject("nowPage",nowPos);
		
		int endPage = (int)(Math.ceil(nowPos/CNT)*(LIMITCOUNT));
		int startPage = 0;
		if(endPage>totalCount) { //占쏙옙 占싸븝옙
			startPage = endPage-(LIMITCOUNT)+1;
			endPage=totalCount;
		} else {
			startPage = endPage-(LIMITCOUNT)+1;
		}
		if(startPage<=0)
			startPage=1;
		
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		
		
//		
//		//占싯삼옙占쏙옙 占식띰옙占쏙옙占� 占쏙옙 占쌩곤옙占쏙옙
//		//占싯삼옙 占싣뱄옙 占싶듸옙 占쌉뤄옙 占쏙옙 占싹몌옙 占쏙옙占쏙옙占쏙옙 占쏙옙瞿占쏙옙占� 처占쏙옙 占쏙옙占쏙옙
		if(map.containsKey("keyword"))
			mav.addObject("keyword", map.get("keyword"));
		
		mav.setViewName("/user/mainhome2");
		return mav;
		
	}
	
}
