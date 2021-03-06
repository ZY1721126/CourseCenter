package buaa.course.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class User implements Serializable{
	private static final long serialVersionUID = 4545526984155472015L;
	private int num;
	private String id;
	private String password;
	private String name;
	private boolean gender;
	/**
	 * 用户类型：学生0，教师1，教务2
	 */
	private int type;
	private boolean valid;
	private Timestamp lastLoginTime;
	private String lastLoginIp;
	public User() {
		super();
	}
	public User(String id, String password, String name, boolean gender, int type, boolean valid,
				Timestamp lastLoginTime, String lastLoginIp) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.type = type;
		this.valid = valid;
		this.lastLoginTime = lastLoginTime;
		this.lastLoginIp = lastLoginIp;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	/**
	 * 用户类型：学生0，教师1，教务2
	 */
	public int getType() {
		return type;
	}
	/**
	 * 用户类型：学生0，教师1，教务2
	 */
	public void setType(int type) {
		this.type = type;
	}
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	public Timestamp getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public String getLastLoginIp() {
		return lastLoginIp;
	}
	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}
	@Override
	public String toString() {
		return "User [num=" + num + ", id=" + id + ", password=" + password + ", name=" + name
				+ ", gender=" + gender + ", type=" + type + ", valid=" + valid + ", lastLoginTime=" + lastLoginTime
				+ ", lastLoginIp=" + lastLoginIp + "]";
	}
	
}
