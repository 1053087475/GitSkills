package com.cjh.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cjh.ssm.dao.WorkerDao;
import com.cjh.ssm.pojo.WorkerInfo;

@Service
@Transactional
public class WorkerService {
	@Autowired
	public WorkerDao workerDao;
	public boolean workerUserLogin(int eid,String password) {
		String turepwd = this.workerDao.findPwdByEid(eid);
		if(password.equals(turepwd))
			return true;
		return false;
	}
	
	public WorkerInfo findWorkerByEid(int eid) {
		
			return workerDao.findWorkerByEid(eid);
	}
	
	public boolean updateWorkerPassword(WorkerInfo workerinfo) {
		boolean flag = workerDao.updateWorkerPassword(workerinfo);
		if (flag) return true;
		return false;
	}
	
	public boolean updateWorkerInfo(WorkerInfo workerinfo) {
		boolean flag = workerDao.updateWorkerInfo(workerinfo);
		if (flag) return true;
		return false;
	}
	
	public boolean updateWorkerAllInfo(WorkerInfo workerinfo) {
		boolean flag = workerDao.updateWorkerAllInfo(workerinfo);
		if (flag) return true;
		return false;
	}
	
	public List<WorkerInfo> findWorkerAll()
    {
        return workerDao.findWorkerAll();
    }
	
    public List<WorkerInfo> findWorkerBySex(String sex)
    {
        return workerDao.findWorkerBySex(sex);
    }
    
    public List<WorkerInfo> findWorkerByIs_single(String is_single)
    {
        return workerDao.findWorkerByIs_single(is_single);
    }
    
    public List<WorkerInfo> findWorkerByDpname(String dpname)
    {
        return workerDao.findWorkerByDpname(dpname);
    }
    
    public boolean insertWorker(WorkerInfo workerInfo) {
    	boolean flag = workerDao.insertWorker(workerInfo);
    	if(flag) return true;
    	return false;
    }
    
    public boolean deleteWorekr(int eid) {
    	boolean flag = workerDao.deleteWorker(eid);
    	if(flag) return true;
    	return false;
    }
}
