package member;

import java.io.IOException;import java.lang.ref.ReferenceQueue;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.Command;
import global.DispatcherServlet;
import global.Separator;

@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response, Object String) throws ServletException, IOException {
		System.out.println("===member 컨트롤러진입===");
	    Separator.init(request, response);
		
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		
		switch (Separator.command.getAction()) {
		case "login":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			String name =service.login(member);
			
			if (name.equals("")) {
				Separator.command.setPage("login");
				Separator.command.setView();
			} else {
				Separator.command.setDirectory(request.getParameter("directory"));
				member.setName(name);
			}
			request.setAttribute("result",name.equals("")?"로그인실패":member);
			break;
			
		case "regist":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setName(request.getParameter("name"));
			member.setEmail(request.getParameter("email"));
			member.setSsn(request.getParameter("ssn"));
			String result= service.regist(member);
			if (result.equals("")) {
				Separator.command.setPage("regist");
				Separator.command.setView();
				
			} else {
				Separator.command.setDirectory(request.getParameter(""));
				member.setProfileImg(result);
			}
			break;
		case "update_show";
			member=service.findBy();
			member.setPw(request.getParameter("pw"));
			String update_result = service.update(member);
			
			String  = service.update(member);
			
			
			break;
		case "update":
			member.setEmail(request.getParameter("email"));
			member.setPw(request.getParameter("pw"));
			String update_result = service.update(member);
			
			String  = service.update(member);
			
			
			break;
		case "delete":
			String pw = request.getParameter("pw")
			break;
		case "list":
			
			break;//next
		case "logout":

			
			break;
		case "count":
			
			break;
		case "find_by":
			member.setId((request.getParameter("id"));
			
			break;//next
		
		default:
			break;
				
			
			
	}
		DispatcherServlet.send(request, response, Separator.command);
	}
}
	