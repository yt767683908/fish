package cn.fishling.business.dto;

/**
 * 用户信息实体类
 * 
 * @author 76768
 *
 */
public class UserInfo {
	private Integer no;
	private String userid;
	private String createuser;
	private String createtime;
	private String updateuser;
	private String updatetime;
	private String username;
	private String realname;
	private String phone;
	private String email;
	private String valid;

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getCreateuser() {
		return createuser;
	}

	public void setCreateuser(String createuser) {
		this.createuser = createuser;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getUpdateuser() {
		return updateuser;
	}

	public void setUpdateuser(String updateuser) {
		this.updateuser = updateuser;
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getValid() {
		return valid;
	}

	public void setValid(String valid) {
		this.valid = valid;
	}

	public UserInfo(Integer no, String userid, String createuser, String createtime, String updateuser,
			String updatetime, String username, String realname, String phone, String email, String valid) {
		super();
		this.no = no;
		this.userid = userid;
		this.createuser = createuser;
		this.createtime = createtime;
		this.updateuser = updateuser;
		this.updatetime = updatetime;
		this.username = username;
		this.realname = realname;
		this.phone = phone;
		this.email = email;
		this.valid = valid;
	}

	public UserInfo() {
		super();
	}

}
