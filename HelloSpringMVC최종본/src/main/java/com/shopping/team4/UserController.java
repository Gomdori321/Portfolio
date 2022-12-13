package com.shopping.team4;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	static int duplicate = 1;

	

	@RequestMapping(value = "/home")
	public ModelAndView home(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		HttpSession session = request.getSession();

		//session.invalidate();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/home");

		return mav;

	}
	
	
	@RequestMapping(value = "/mainhome")
	public ModelAndView mainhome(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		HttpSession session = request.getSession();

		//session.invalidate();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/mainhome");

		return mav;

	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		HttpSession session = request.getSession();

		session.invalidate();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/home");

		return mav;

	}
	
	
	

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/login");
		System.out.println("??????????");

		return mav;

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login_post(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		Map<String, Object> userpw = this.userService.login_ok(map);

		System.out.println(map.get("id"));
		System.out.println(map.get("pw"));
		PasswordEncoder p = new BCryptPasswordEncoder();

		//System.out.println(p.matches(map.get("pw").toString(), userpw.get("pw").toString()));

		if (map.get("pw") == null || map.get("id") == null) {


			mav.setViewName("redirect:/login");

		} else {
			try {
				if (p.matches(map.get("pw").toString(), userpw.get("pw").toString())) {
					
					HttpSession session = request.getSession();
					session.setAttribute("id", map.get("id"));
					session.setAttribute("name", map.get("name"));
					mav.setViewName("redirect:/home");
					
				} else {
					mav.setViewName("redirect:/create_user");
				}
			} catch (Exception e) {
				//System.out.println("없는 아이디다");
				mav.setViewName("redirect:/create_user");
				return mav;
			}
			
			
		}

		return mav;

	}

	@RequestMapping(value = "/home2_loginOK", method = RequestMethod.GET)
	public ModelAndView login_2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/home2_loginOK");
		System.out.println("??????????");
		// return new ModelAndView("book/home");
		return mav;

	}

	@RequestMapping(value = "/detail_user", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.userService.detail(map);

		ModelAndView mav = new ModelAndView();

		mav.addObject("data", detailMap);

		String UserId = map.get("UserId").toString();
		mav.addObject("id", UserId);
		mav.setViewName("/user/detail_user");
		return mav;
	}

	@RequestMapping(value = "/create_user", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("user/create_user");
	}

	@RequestMapping(value = "/create_user", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		
		if(duplicate == 1) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('중복체크를 해주세요'); </script>");
			out.flush();
			return new ModelAndView("user/create_user");
		}
		
		PasswordEncoder p = new BCryptPasswordEncoder();
		String encodepw = p.encode(map.get("pw").toString());

		map.replace("pw", encodepw);
		
		//System.out.println(map);
		
		String UserId = this.userService.create(map);

		if (UserId == null) {
			mav.setViewName("redirect:/create_user");
		} else {
			mav.setViewName("redirect:/home");
		}

		return mav;
	}

	@RequestMapping(value = "/update_user", method = RequestMethod.GET)
	public ModelAndView update(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.userService.detail(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		mav.setViewName("/user/update_user");
		return mav;
	}

	@RequestMapping(value = "/update_user", method = RequestMethod.POST)
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		PasswordEncoder p = new BCryptPasswordEncoder();
		String encodepw = p.encode(map.get("pw").toString());
		map.replace("pw", encodepw);

		
		boolean isUpdateSuccess = this.userService.edit(map);
		if (isUpdateSuccess) {
			String UserId = map.get("UserId").toString();

			mav.setViewName("redirect:/detail_user?UserId=" + UserId);
		} else {
			mav = this.update(map);
		}

		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/idCheck_test", method = RequestMethod.POST,produces = "application/json")
	public int idCheck_test(@RequestParam("id") String id) {
		
		int cnt = userService.idCheck_test(id);
		System.out.println(cnt);
		System.out.println("bb");
		if(cnt == 1) {
			duplicate = 1;
		}else {
			duplicate = 0;
		}
		return cnt;
		
	}
	
	@RequestMapping(value = "list")  
	public ModelAndView list(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.userService.list(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/user/list");  
	return mav;  
	}  
	
	@RequestMapping(value="user/cart", method = RequestMethod.GET)
	public ModelAndView cartlist() {
	    return new ModelAndView("user/cart");
	}

	@RequestMapping(value = "user/cartlist", method = RequestMethod.GET)
	public ModelAndView cartgetlist(@RequestParam Map<String, Object> map) {  	
		ModelAndView mav = new ModelAndView();  
		List<Map<String, Object>> list = this.userService.cartlist(map);
	
			System.out.println(list);
		
		mav.addObject("data1", list);
	    
		
		return mav;  
	}  
	
	
	@RequestMapping(value = "user/cartlist_admin", method = RequestMethod.GET)
	public ModelAndView cartgetlist_admin(@RequestParam Map<String, Object> map) {  	
		ModelAndView mav = new ModelAndView();  
		List<Map<String, Object>> list = this.userService.cartlist_admin(map);
	
			System.out.println(list);
		
		mav.addObject("data1", list);
	    
		mav.setViewName("/user/cartlist"); 
		return mav;  
	}  
	
	
	
	
	
	
	
	


	@RequestMapping(value = "weather", method=RequestMethod.GET)  
	public ModelAndView weather(@RequestParam Map<String, Object> map) {   
		
	ModelAndView mav = new ModelAndView();
	System.out.println("~~~");
	mav.setViewName("/user/weather");  
	return mav;
	}
	
	@RequestMapping(value = "d3", method=RequestMethod.GET)  
	public ModelAndView d3chart(@RequestParam Map<String, Object> map) {   
		
	ModelAndView mav = new ModelAndView();
	List<Map<String,Object>> list = this.userService.weather_list();
	mav.addObject("datalist", list);
	System.out.println("~~~"+list);
	mav.setViewName("/user/d3");
	return mav;
	}
	
	
	@RequestMapping(value = "user/cartlist", method = RequestMethod.POST)  
	public ModelAndView cart_list(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.userService.list(map);  
	
	String id = map.get("id").toString();
	
	ModelAndView mav = new ModelAndView();  
	mav.addObject("data1", list);  
	mav.setViewName("/user/cartlist?id="+id);  
	return mav;  
	}
	
	@RequestMapping(value = "user/buylist")  
	public ModelAndView buy_list(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.userService.list(map);  
	
	String id = map.get("id").toString();
	
	ModelAndView mav = new ModelAndView();  
	mav.addObject("data1", list);  
	mav.setViewName("/user/buylist?id="+id);  
	return mav;  
	} 
	
	
	@RequestMapping(value="/user/buy", method = RequestMethod.GET)
	public ModelAndView select_buyinfo(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list2 = this.userService.select_buyinfo(map);  

	List<Map<String, Object>> list = this.userService.list(map);  
	String id = map.get("id").toString();
	System.out.println("!!id="+map.get("id"));
	
	ModelAndView mav = new ModelAndView();  
	mav.addObject("data1", list2);  
	mav.setViewName("/user/buy?id="+id);  
	return mav; 

	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)  
	public ModelAndView deletePost(@RequestParam Map<String, Object> map, HttpServletRequest request) {  
	ModelAndView mav = new ModelAndView();  
	System.out.println("delete " + map);
	boolean isDeleteSuccess = this.userService.remove(map);  
	if (isDeleteSuccess) {
	HttpSession session = request.getSession();

	session.invalidate();
	mav.setViewName("redirect:/home");  
	}
	else {
		mav.setViewName("redirect:/mainhome2");
	}

	return mav;  
	}  
	
}
