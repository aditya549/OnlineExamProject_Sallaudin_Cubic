package userbean;

import java.sql.Date;

public class userbean {

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isValid() {
		return isValid;
	}
	public void setValid(boolean isValid) {
		this.isValid = isValid;
	}
	public String getHide() {
		return hide;
	}
	public void setHide(String hide) {
		this.hide = hide;
	}
	public String getFn() {
		return fn;
	}
	public void setFn(String fn) {
		this.fn = fn;
	}
	public String getLn() {
		return ln;
	}
	public void setLn(String ln) {
		this.ln = ln;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	private String username;
	private String password;
	private String email;
	private boolean isValid;
	private String hide;
	private String fn ;
	private String ln;
	private String date;
	private String gender;
	private String phno;
	
	public String getQuestions() {
		return Questions;
	}
	public void setQuestions(String questions) {
		Questions = questions;
	}
	public String getOpt1() {
		return opt1;
	}
	public void setOpt1(String opt1) {
		this.opt1 = opt1;
	}
	public String getOpt2() {
		return opt2;
	}
	public void setOpt2(String opt2) {
		this.opt2 = opt2;
	}
	public String getOpt3() {
		return opt3;
	}
	public void setOpt3(String opt3) {
		this.opt3 = opt3;
	}
	public String getOpt4() {
		return opt4;
	}
	public void setOpt4(String opt4) {
		this.opt4 = opt4;
	}

	private String Questions;
	private String opt1;
	private String opt2;
	private String opt3;
	private String opt4;
	private String qno;
	private String answer;
	private int passout ;
	public int getPassout() {
		return passout;
	}
	public void setPassout(int passout) {
		this.passout = passout;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getQno() {
		return qno;
	}
	public void setQno(String qno) {
		this.qno = qno;
	}
	
	
	
	
}

