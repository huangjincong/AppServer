package com.evan.app.user;

import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private Logger logger = Logger.getLogger(LoginAction.class);
	
	private String userName;
	private String password;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public void validate() {
		logger.info("validate......");
//		if(this.getUserName() == null || "".equals(this.getUserName().trim())) {
//			this.addFieldError("userName", "username.error");
//		}
//		if(null==this.getPassword()||"".equals(this.getPassword().trim())){    
//            this.addFieldError("password", "password error");//添加错误信息    
//        }   
		logger.info("End validate....");
	}
	
	public String init() throws Exception {
		logger.info("excute.....");
		return INPUT;
	}
	
	public String login() throws Exception {
		logger.info("login.......");
		if("Evan".equals(this.getUserName().trim())&&"password".equals(this.getPassword().trim())){
			logger.info("The entered username and password are correct!");
            
			Map<String, Object> attibutes = ActionContext.getContext().getSession();//记录用户登录信息
			attibutes.put("userName", userName);
			attibutes.put("password", password);
			return SUCCESS;       
        }    
        else{    
            this.addFieldError("username", "username or password error"); 
            logger.info("The entered username or password is wrong!");
            return INPUT;        
        }  
	}

}
