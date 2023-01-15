package model;

public class AdminMSG {
	
	private String arg,msg;
	
	public AdminMSG() {
		super();
		this.arg = "";
		this.msg = "";
	}

	public AdminMSG(String arg, String msg) {
		super();
		this.arg = arg;
		this.msg = msg;
	}

	public String getArg() {
		return arg;
	}

	public void setArg(String arg) {
		this.arg = arg;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "AdminMSG [arg=" + arg + ", msg=" + msg + "]";
	}
}
