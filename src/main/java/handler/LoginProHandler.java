package handler;

import lecture.LectureDao;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginProHandler implements CommandHandler{
	
	@Resource
	private LectureDao lectureDao;
	
	@RequestMapping("/loginPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse reponse) throws Exception {		 
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	
		
	
		
		int result = lectureDao.check(id, passwd);
	
		request.setAttribute("result", result);
		request.setAttribute("id", id);
		request.getSession().setAttribute("memid", id);
		if(id.equals("class365")) return new ModelAndView("class365/adminMainForm");
		else return new ModelAndView("class365/loginPro");
	}
}
