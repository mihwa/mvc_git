package grade;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.DispatcherServlet;
import global.Separator;
import member.MemberService;
import member.MemberServiceImpl;
/*
	<li><a href="${context}/grade/regist.do">등록</a></li>
		<li><a href="${context}/grade/update.do">수정</a></li>
		<li><a href="${context}/grade/delete.do">삭제</a></li>
		<li><a href="${context}/grade/list.do">목록 </a></li>
		<li><a href="${context}/grade/count.do">카운트</a></li>
		<li><a href="${context}/grade/search.do">
 * */
@WebServlet("/grade.do")
public class GradeController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("===member 컨트롤러진입===");
	Separator.init(request, response);
		
		MemberService service = MemberServiceImpl.getInstance();
		switch (Separator.command.getAction()) {
		case "move":break;
		case "login":break;
		case "regist":break;
		
		default:
			break;
				
			
			
	}
		DispatcherServlet.send(request, response, Separator.command);
	}
}
	