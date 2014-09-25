package dao;
import java.util.List;

import entity.User;

public interface UserDao {
//		通过邮箱注册用户
	public void add(String email,String password,String nicheng,String sex,String address,String address_,String school,String name,String id,String registeTime,String memo);
//		通过手机注册用户
	public void add_(String email,String password,String nicheng,String sex,String address,String address_,String id,String time,String memo);
//		按姓名查询用户
	public List<User> query(String name);
//		登陆微博
	public boolean denglu1(String name,String password);
	public boolean denglu2(String name,String password);
//		发表微博
	public void fabiao(String text,String time);
//      更新	
	public List<User> update();
}
