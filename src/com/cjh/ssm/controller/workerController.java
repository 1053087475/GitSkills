package com.cjh.ssm.controller;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cjh.other.ResetPwd;
import com.cjh.other.Statistics;
import com.cjh.other.GetString;
import com.cjh.other.IsNumber;
import com.cjh.other.other;
import com.cjh.ssm.pojo.WorkerInfo;
import com.cjh.ssm.service.WorkerService;

@Controller
public class workerController {
	@Autowired
	public WorkerService workerService;
	
	@RequestMapping("/index")
	public ModelAndView toIndex(ModelAndView mav) {
    	mav.setViewName("index");
    	return mav;
    }
	
	@RequestMapping("/workerlogin")
	public String login(WorkerInfo workerInfo,Model model,GetString getString, HttpSession session) {
		model.addAttribute("msg",null);
		String id = getString.getId();
		String password = workerInfo.getPassword();
		if(id.trim().equals("")||password.trim().equals("")) {
			model.addAttribute("msg","职工编号或登录密码不能为空！");
			return "worker/login";
		}
		int eid = Integer.valueOf(id);
		boolean flag = workerService.workerUserLogin(eid, password);
		if(flag) {
			model.addAttribute("msg","登陆成功！");
			WorkerInfo worker = workerService.findWorkerByEid(eid);
			session.setAttribute("worker", worker);
			/*
			 * model.addAttribute("worker_eid",eid);
			 * model.addAttribute("worker_name",workerInfo.getName());
			 * model.addAttribute("worker_sex",workerInfo.getSex());
			 * model.addAttribute("worker_dpname",workerInfo.getDpname());
			 * model.addAttribute("worker_dpid",workerInfo.getDpid());
			 * model.addAttribute("worker_position",workerInfo.getPosition());
			 * model.addAttribute("worker_nation",workerInfo.getNation());
			 * model.addAttribute("worker_education",workerInfo.getEducation());
			 * model.addAttribute("worker_idNumber",workerInfo.getId_number());
			 * model.addAttribute("worker_birth",workerInfo.getBirth());
			 * model.addAttribute("worker_phone",workerInfo.getPhone());
			 * model.addAttribute("worker_mail",workerInfo.getMail());
			 * model.addAttribute("worker_address",workerInfo.getAddress());
			 * model.addAttribute("worker_entryTime",workerInfo.getEntry_time());
			 */
			return "worker/user";
		}
		else {
			model.addAttribute("msg","职工编号或登录密码错误！");
			return "worker/login";
		}
	}
	
	@RequestMapping("/admlogin")
	public String admlogin(WorkerInfo workerInfo,Model model, HttpSession session) {
		model.addAttribute("msg",null);
		int eid = workerInfo.getEid();
		String password = workerInfo.getPassword();
		if(String.valueOf(eid).trim().equals("")||password.trim().equals("")) {
			model.addAttribute("msg","职工编号或登录密码不能为空！");
			return "adm/login";
		}
		boolean flag = workerService.workerUserLogin(eid, password);
		if(flag) {
			WorkerInfo worker = workerService.findWorkerByEid(eid);
			
			boolean is_adm = worker.isIs_adm();
			if(!is_adm) {
				model.addAttribute("msg","无登录权限！");
				return "adm/login";
			} 
			
			model.addAttribute("msg","登陆成功！");	
			session.setAttribute("worker", worker);
			return "adm/user";
		}
		else {
			model.addAttribute("msg","职工编号或登录密码错误！");
			return "adm/login";
		}
	}
	
	@RequestMapping("updateWorkerPassword")
	public String changePassword(ResetPwd reset,Model model) {
	       
        String oldpwd = reset.getOldpwd();
        String pwd = reset.getPwd();
        String repwd = reset.getRepwd();
        int eid = reset.getEid();
        model.addAttribute("worker_eid", eid);
        if(oldpwd.trim().equals("")||pwd.trim().equals("")||repwd.trim().equals(""))
        {
            model.addAttribute("result", "请输入值！");
            return "worker/reset_pwd";
        }
        WorkerInfo worker = workerService.findWorkerByEid(eid);
        String PWD = worker.getPassword();
        if(!oldpwd.trim().equals(PWD)){
            model.addAttribute("result", "旧密码错误！！");
            return "worker/reset_pwd";
            
        }
        if(!pwd.trim().equals(repwd.trim())){
            model.addAttribute("result", "两次输入的密码不相同！！");
            return "worker/reset_pwd";
              }
        
        worker.setPassword(repwd);
        boolean flag=workerService.updateWorkerPassword(worker);
        if(flag)
        {
            model.addAttribute("msg","修改成功,返回登录界面！");
            return "worker/login";
        }
        else {
            model.addAttribute("result", "修改失败！");
            return "worker/reset_pwd";
        }
    }
	
	@RequestMapping("updateWorkerInfo")
	public String updateWorkerInfo(WorkerInfo workerInfo,Model model,HttpSession session) {
		String is_single,phone,mail,address;
		is_single = workerInfo.getIs_single();
		phone = workerInfo.getPhone();
		mail = workerInfo.getMail();
		address = workerInfo.getAddress();
		if(is_single.trim().equals("")||phone.trim().equals("")||address.trim().equals(""))
        {
            model.addAttribute("result", "输入不能为空！");
            return "worker/reset_info";
        }
		int eid = workerInfo.getEid();
		WorkerInfo worker = workerService.findWorkerByEid(eid);
		worker.setIs_single(is_single);
		worker.setPhone(phone);
		worker.setMail(mail);
		worker.setAddress(address);
		//System.out.print(address);
		boolean flag = workerService.updateWorkerInfo(worker);
		if(flag) {
			model.addAttribute("result","修改成功！");
			
		}
		else {
			model.addAttribute("result","修改失败！");
		}
		session.setAttribute("worker", worker);
		return "worker/reset_info";
	}
	
	@RequestMapping("updateWorkerAllInfo")
	public String updateWorkerAllInfo(WorkerInfo workerInfo,Model model,HttpSession session) throws ParseException {
		String name,sex,dpname,position,nation,education,id_number,phone,mail,address,is_single;
		Date birth,entry_time;
		name = workerInfo.getName();sex = workerInfo.getSex();dpname = workerInfo.getDpname();position = workerInfo.getPosition();nation=workerInfo.getNation();education=workerInfo.getEducation();id_number=workerInfo.getId_number();
		is_single = workerInfo.getIs_single();phone = workerInfo.getPhone();mail = workerInfo.getMail();address = workerInfo.getAddress();
		birth = workerInfo.getBirth();entry_time=workerInfo.getEntry_time();
		if(is_single.trim().equals("")||phone.trim().equals("")||address.trim().equals("")||name.trim().equals("")||sex.trim().equals("")||dpname.trim().equals("")||position.trim().equals("")||nation.trim().equals("")||education.trim().equals("")||id_number.trim().equals(""))
        {
            model.addAttribute("result", "输入不能为空！");
            return "adm/search";
        }
		int eid = workerInfo.getEid();
		WorkerInfo worker = workerService.findWorkerByEid(eid);
		worker.setIs_single(is_single);worker.setPhone(phone);worker.setMail(mail);worker.setAddress(address);
		worker.setName(name);worker.setSex(sex);worker.setDpname(dpname);worker.setPosition(position);worker.setNation(nation);worker.setEducation(education);worker.setId_number(id_number);
		worker.setBirth(birth);worker.setEntry_time(entry_time);
		boolean flag = workerService.updateWorkerAllInfo(worker);
		if(flag) {
			model.addAttribute("result","修改成功！");
			
		}
		else {
			model.addAttribute("result","修改失败！");
		}
		session.setAttribute("w", worker);
		return "adm/search";
	}
	
	@RequestMapping("/allWorker")
    public String allStudent(Model model) throws ParseException
    {
        List<WorkerInfo> workers = workerService.findWorkerAll();
        //System.out.print(workers);
        int workyear;
        for(int i=0;i<workers.size();i++) {
        	Date entry_time = workers.get(i).getEntry_time(); 
        	String strDate = entry_time.toString();
            workyear = other.calculateTimeDifferenceByCalendar(strDate);
            workers.get(i).setWorkyear(workyear);
        }
        
        model.addAttribute("workers", workers);
        model.addAttribute("workersflag", "true");
        model.addAttribute("msg","所有职工一览");
        return "adm/query";
    }
	
	@RequestMapping("/searchWorker")
	public String searchWorker(Model model,WorkerInfo workerInfo,HttpSession session) {
		int eid = workerInfo.getEid();
		WorkerInfo worker = workerService.findWorkerByEid(eid);
		session.setAttribute("w", worker);
		return "adm/search";
	}
	
	@RequestMapping("/statistics")
	public String statistics(Model model,Statistics s,HttpSession session) {
		int male=0,female=0,single=0,GCD;
		List<WorkerInfo> workers = workerService.findWorkerAll();
		for(int i=0;i<workers.size();i++) {
			if(workers.get(i).getSex().equals("男")) 
				male++;
			else
				female++;
			if(workers.get(i).getIs_single().equals("是"))
				single++;
		}
		s.setFemale(female);
		s.setMale(male);
		s.setSingle(single);
		GCD = other.GCD(male, female);
		session.setAttribute("statistics", s);
		model.addAttribute("male_scale",male/GCD);
		model.addAttribute("female_scale",female/GCD);
		return "adm/statistics";
	}
	
	@RequestMapping("/findWorkerBySex")
    public String findWorkerBySex(Model model,String sex) throws ParseException
    {
        List<WorkerInfo> workers = workerService.findWorkerBySex(sex);
        //System.out.print(workers);
        int workyear;
        for(int i=0;i<workers.size();i++) {
        	Date entry_time = workers.get(i).getEntry_time(); 
        	String strDate = entry_time.toString();
            workyear = other.calculateTimeDifferenceByCalendar(strDate);
            workers.get(i).setWorkyear(workyear);
        }
        if(sex.equals("男"))
        	model.addAttribute("msg","男性职工一览");
        else
        	model.addAttribute("msg","女性职工一览");
        model.addAttribute("workers", workers);
        model.addAttribute("workersflag", "true");
        return "adm/query";
    }
	
	@RequestMapping("/findWorkerByIs_single")
    public String findWorkerByIs_single(Model model,String is_single) throws ParseException
    {
        List<WorkerInfo> workers = workerService.findWorkerByIs_single(is_single);
        //System.out.print(workers);
        int workyear;
        for(int i=0;i<workers.size();i++) {
        	Date entry_time = workers.get(i).getEntry_time(); 
        	String strDate = entry_time.toString();
            workyear = other.calculateTimeDifferenceByCalendar(strDate);
            workers.get(i).setWorkyear(workyear);
        }
        
        model.addAttribute("msg","单身职工一览");
        model.addAttribute("workers", workers);
        model.addAttribute("workersflag", "true");
        return "adm/query";
    }
	
	@RequestMapping("/insertWorker")
	public String insertWorker(Model model,WorkerInfo workerInfo,GetString haveEid) {
		String name,sex,dpname,position,nation,education,id_number,phone,mail,address,is_single;
		Date birth,entry_time;
		String id;
		
		name = workerInfo.getName();sex = workerInfo.getSex();dpname = workerInfo.getDpname();position = workerInfo.getPosition();nation=workerInfo.getNation();education=workerInfo.getEducation();id_number=workerInfo.getId_number();
		is_single = workerInfo.getIs_single();phone = workerInfo.getPhone();mail = workerInfo.getMail();address = workerInfo.getAddress();
		birth = workerInfo.getBirth();entry_time=workerInfo.getEntry_time();
		id = haveEid.getId();
		if(id.trim().equals("")||mail.trim().equals("")||is_single.trim().equals("")||phone.trim().equals("")||address.trim().equals("")||name.trim().equals("")||sex.trim().equals("")||dpname.trim().equals("")||position.trim().equals("")||nation.trim().equals("")||education.trim().equals("")||id_number.trim().equals("")||birth==null||entry_time==null)
        {
            model.addAttribute("result", "输入不能为空！");
            return "adm/insert";
        }
		if(!IsNumber.isNumber(id)) {
			model.addAttribute("result","职工号输入不规范");
			return "adm/insert";
			
		}
		int eid = Integer.valueOf(id);
		if(workerService.findWorkerByEid(eid) != null)
        {
            model.addAttribute("result", "职工号已存在！！");
            return "adm/insert";
        }
		boolean flag = workerService.insertWorker(workerInfo);
		if(flag) {
			model.addAttribute("result","添加成功");
		}else {
			model.addAttribute("result","添加失败");
		}
		return "adm/insert";
	}
	
	@RequestMapping("/deleteWorker")
	public String deleteWorker(Model model,int eid) throws ParseException {
		boolean flag = workerService.deleteWorekr(eid);
		if(flag) {
			model.addAttribute("result","【通知栏：删除职工信息成功！】");
			return allStudent(model);
		}else {
			model.addAttribute("result", "【通知栏：删除职工信息失败！】");
			return allStudent(model);
		}
	}
	
	@RequestMapping("/findWorkerByEid")
	public String findWorkerByEid(Model model,int eid) throws ParseException {
		WorkerInfo worker = workerService.findWorkerByEid(eid);
		List<WorkerInfo> workers = new ArrayList<WorkerInfo>();
		workers.add(worker);
		int workyear;
        for(int i=0;i<workers.size();i++) {
        	Date entry_time = workers.get(i).getEntry_time(); 
        	String strDate = entry_time.toString();
            workyear = other.calculateTimeDifferenceByCalendar(strDate);
            workers.get(i).setWorkyear(workyear);
        }
		model.addAttribute("msg","搜索结果");
		if(workers.isEmpty()) {
        	model.addAttribute("result","【通知栏：没有该职工信息,请确保职工号输入无误。】");
        	return "adm/query";
        }
        model.addAttribute("workers", workers);
        return "adm/query";
	}
	
	@RequestMapping("/findWorkerByDpname")
	public String findWorkerByDpname(Model model,String dpname) throws ParseException {
		List<WorkerInfo> workers = workerService.findWorkerByDpname(dpname);
		int workyear;
        for(int i=0;i<workers.size();i++) {
        	Date entry_time = workers.get(i).getEntry_time(); 
        	String strDate = entry_time.toString();
            workyear = other.calculateTimeDifferenceByCalendar(strDate);
            workers.get(i).setWorkyear(workyear);
        }
        model.addAttribute("msg","搜索结果");
        if(workers.isEmpty()) {
        	model.addAttribute("result","【通知栏：没有该部门职工信息，请确保部门名称无误。】");
        	return "adm/query";
        }
        model.addAttribute("workers", workers);
        return "adm/query";
	}
}
