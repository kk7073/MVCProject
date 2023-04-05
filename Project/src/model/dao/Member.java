package model.dao;

public class Member {
	int mno;
	String mname;
	String id;
	String pw;
	String tel;
	int point;
	String grade;
	String addr;
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Member(){};
	public Member(int mno, String mname, String id, String pw, String tel,
			int point, String grade, String addr) {
		super();
		this.mno = mno;
		this.mname = mname;
		this.id = id;
		this.pw = pw;
		this.tel = tel;
		this.point = point;
		this.grade = grade;
		this.addr = addr;
	}
	@Override
	public String toString() {
		return "Member [mno=" + mno + ", mname=" + mname + ", id=" + id
				+ ", pw=" + pw + ", tel=" + tel + ", point=" + point
				+ ", grade=" + grade + ", addr=" + addr + "]";
	}



}