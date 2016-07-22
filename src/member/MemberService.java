
package member;

import java.util.List;

import global.CommonService;


public interface MemberService extends CommonService{
	public String regist(MemberBean mem);
	public Object update(MemberBean mem);
	public String delete(String id);
	public MemberBean findById(String id);
	public String login(MemberBean member);
	public MemberBean getSession();
	public void logoutSession();
	
}


