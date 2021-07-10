package com.cjh.ssm.dao;

import java.util.List;

import com.cjh.ssm.pojo.WorkerInfo;

public interface WorkerDao {
	//��¼
	public String findPwdByEid(int eid);
	
	//��ѯ������Ϣ
	public WorkerInfo findWorkerByEid(int eid);
	
	//�޸ĸ�����Ϣ
	public boolean updateWorkerInfo(WorkerInfo workerInfo);
	
	//修改所有信息
	public boolean updateWorkerAllInfo(WorkerInfo workerInfo);
	
	//�޸ĸ�������
	public boolean updateWorkerPassword(WorkerInfo workerInfo);
	
	//查看所有职工
	public List<WorkerInfo> findWorkerAll();
	
	//根据性别查找职工
	public List<WorkerInfo> findWorkerBySex(String sex);
	
	//根据是否单身查找职工
	public List<WorkerInfo> findWorkerByIs_single(String is_single);
	
	//添加职工
	public boolean insertWorker(WorkerInfo workerInfo);
	
	//删除职工
	public boolean deleteWorker(int eid);
	
	//根据职工号查找职工
	
	//根据部门查找职工
	public List<WorkerInfo> findWorkerByDpname(String dpname);
}
