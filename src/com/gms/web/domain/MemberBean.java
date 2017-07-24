package com.gms.web.domain;

import java.io.Serializable;

public class MemberBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
		private String id, pw, ssn, name, regdate,phone, email, major, subject;
		
	
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


		public String getMajor() {
			return major;
		}


		public void setMajor(String major) {
			this.major = major;
		}


		public String getSubject() {
			return subject;
		}


		public void setSubject(String subject) {
			this.subject = subject;
		}


		public String getRegdate() {
			return regdate;
		}


		public void setRegdate(String regdate) {
			this.regdate = regdate;
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


		public String getSsn() {
			return ssn;
		}


		public void setSsn(String ssn) {
			this.ssn = ssn;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		@Override
		public String toString() {
			return "MemberBean [id=" + id + ", pw=" + pw + ", ssn=" + ssn + ", name=" + name + ", regdate=" + regdate
					+ ", phone=" + phone + ", email=" + email + ", major=" + major + ", subject=" + subject + "]";
		}


		
		

	
}