package no1;

import com.opensymphony.xwork2.ActionSupport;

import Bean.Stu;

public class checkLoginByObj extends ActionSupport {
    Stu stu;

	public Stu getStu() {
		return stu;
	}

	public void setStu(Stu stu) {
		this.stu = stu;
	}
     public void validate(){
    	 if(stu.getUsername().isEmpty()){
    		 addFieldError("stu.username","�û�������Ϊ��");
    	 }
    	 if(stu.getPass().isEmpty()){
    		 addFieldError("stu.pass","���벻��Ϊ��");
    	 }
     }
//     �����������඼��д�˷�����
//     Object ��� toString ��������һ���ַ��������ַ����������������Ǹ����һ��ʵ������
//     at ��Ƿ���@���ʹ˶����ϣ����޷���ʮ�����Ʊ�ʾ��ɡ�
     @Override public String execute(){
		if("admin".equals(stu.getUsername())){
			return SUCCESS;
		}else
    	 return "fail";
     }
}
