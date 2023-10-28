package cafeBook;

public class cafeDTO{ /*회원가입시*/
	private String cafe_id;
	private String cafe_pwd;
	private String cafe_name;
	private String cafe_phone;
	private String cafe_email;
	
	private int list_no;
	private String list_name;
	private String list_pwd;
	private String list_title;
	private String list_content;
	private String list_logtime;
	
public cafeDTO(String cafe_id, String cafe_pwd, String cafe_name, String cafe_phone, String cafe_email) {
	this.cafe_id = cafe_id;
	this.cafe_pwd = cafe_pwd;
	this.cafe_name = cafe_name;
	this.cafe_phone = cafe_phone;
	this.cafe_email = cafe_email;
}

public cafeDTO(String cafe_pwd, String cafe_name, String cafe_phone, String cafe_email) {
	this.cafe_pwd = cafe_pwd;
	this.cafe_name = cafe_name;
	this.cafe_phone = cafe_phone;
	this.cafe_email = cafe_email;
}

public cafeDTO() {}

public cafeDTO(String cafe_id, String cafe_pwd) {
	this.cafe_id = cafe_id;
	this.cafe_pwd = cafe_pwd;
}

/*공지사항*/
public void cafeDTO(int list_no,String list_name, String list_pwd, String list_title, String list_content, String list_logtime) {
	this.list_no=list_no;
	this.list_name=list_name;
	this.list_pwd=list_pwd;
	this.list_title=list_title;
	this.list_content= list_content;
	this.list_logtime=list_logtime;
}


public cafeDTO(String list_pwd, String list_title, String list_content) {
	this.list_pwd=list_pwd;
	this.list_title=list_title;
	this.list_content=list_content;
}

public cafeDTO(int list_no, String list_pwd) {
	this.list_no=list_no;
	this.list_pwd=list_pwd;
}
//======================================

public String getCafe_id() {
	return cafe_id;
}

public void setCafe_id(String cafe_id) {
	this.cafe_id = cafe_id;
}

public String getCafe_pwd() {
	return cafe_pwd;
}

public void setCafe_pwd(String cafe_pwd) {
	this.cafe_pwd = cafe_pwd;
}

public String getCafe_name() {
	return cafe_name;
}

public void setCafe_name(String cafe_name) {
	this.cafe_name = cafe_name;
}

public String getCafe_phone() {
	return cafe_phone;
}

public void setCafe_phone(String cafe_phone) {
	this.cafe_phone = cafe_phone;
}

public String getCafe_email() {
	return cafe_email;
}

public void setCafe_email(String cafe_email) {
	this.cafe_email = cafe_email;
}
//======================================

public int getList_no() {
	return list_no;
}

public void setList_no(int list_no) {
	this.list_no = list_no;
}

public String getList_title() {
	return list_title;
}

public void setList_title(String list_title) {
	this.list_title = list_title;
}

public String getList_name() {
	return list_name;
}

public void setList_name(String list_name) {
	this.list_name = list_name;
}

public String getList_pwd() {
	return list_pwd;
}

public void setList_pwd(String list_pwd) {
	this.list_pwd = list_pwd;
}

public String getList_logtime() {
	return list_logtime;
}

public void setList_logtime(String list_logtime) {
	this.list_logtime = list_logtime;
}

public String getList_content() {
	return list_content;
}

public void setList_content(String list_content) {
	this.list_content = list_content;
}



}