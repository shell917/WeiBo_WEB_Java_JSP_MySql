package dao;
import java.util.List;

import entity.User;

public interface UserDao {
//		ͨ������ע���û�
	public void add(String email,String password,String nicheng,String sex,String address,String address_,String school,String name,String id,String registeTime,String memo);
//		ͨ���ֻ�ע���û�
	public void add_(String email,String password,String nicheng,String sex,String address,String address_,String id,String time,String memo);
//		��������ѯ�û�
	public List<User> query(String name);
//		��½΢��
	public boolean denglu1(String name,String password);
	public boolean denglu2(String name,String password);
//		����΢��
	public void fabiao(String text,String time);
//      ����	
	public List<User> update();
}
