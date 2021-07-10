package com.cjh.ssm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Navigation {
	@RequestMapping("/go_index")
	public String go_index(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping("/go_workerlogin")
    public String go_register()
    {
        return "worker/login";
    }
	@RequestMapping("/go_admlogin")
    public String go_admlogin()
    {
        return "adm/login";
    }
	
	@RequestMapping("/go_wuser")
    public String go_wuser()
    {
        return "worker/user";
    }
	@RequestMapping("/go_auser")
    public String go_auser()
    {
        return "adm/user";
    }
	
	@RequestMapping("go_wreset_pwd")
	public String go_wreset_pwd() {
		return "worker/reset_pwd";
	}
	
	@RequestMapping("go_areset_pwd")
	public String go_areset_pwd() {
		return "adm/reset_pwd";
	}
	
	@RequestMapping("go_wreset_info")
	public String go_wreset_info() {
		return "worker/reset_info";
	}
	
	@RequestMapping("go_introduce")
	public String go_introduce() {
		return "introduce";
	}
	
	@RequestMapping("go_statistics")
	public String go_statistics() {
		return "adm/statistics";
	}
	
	@RequestMapping("/go_insert")
	public String go_insert() {
		return "adm/insert";
	}
	
	@RequestMapping("/go_delete")
	public String go_delete() {
		return "adm/delete";
	}
	
	@RequestMapping("/go_find")
	public String go_find() {
		return "adm/find";
	}
}
