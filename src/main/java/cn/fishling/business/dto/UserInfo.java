package cn.fishling.business.dto;


/**
 * 用户信息实体类
 * 
 * @author 76768
 *
 */
public class UserInfo {
	private Integer no;
	private String user_id;
	private String create_user;
	private String createTime;
	private String modifier;
	private String lastTime;
	private String username;
	private String realname;
	private String phone;
	private String email;
	private String valid_sta;

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getCreate_user() {
		return create_user;
	}

	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getModifier() {
		return modifier;
	}

	public void setModifier(String modifier) {
		this.modifier = modifier;
	}

	public String getLastTime() {
		return lastTime;
	}

	public void setLastTime(String lastTime) {
		this.lastTime = lastTime;
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

	public String getValid_sta() {
		return valid_sta;
	}

	public void setValid_sta(String valid_sta) {
		this.valid_sta = valid_sta;
	}

	public UserInfo(Integer no, String user_id, String create_user, String createTime, String modifier,
			String lastTime, String username, String realname, String phone, String email, String valid_sta) {
		super();
		this.no = no;
		this.user_id = user_id;
		this.create_user = create_user;
		this.createTime = createTime;
		this.modifier = modifier;
		this.lastTime = lastTime;
		this.username = username;
		this.realname = realname;
		this.phone = phone;
		this.email = email;
		this.valid_sta = valid_sta;
	}

	public UserInfo() {
		super();
	}

}
