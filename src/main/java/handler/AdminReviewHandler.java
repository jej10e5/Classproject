package handler;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecture.LectureDao;
import lecture.LectureDataBean;

@Controller
public class AdminReviewHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("adminReview")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String)request.getSession().getAttribute("memid");
		if(id==null) id="guest";
		if(id.equals("class365")) {
			int lec_num=Integer.parseInt(request.getParameter("lec_num"));
			int sta=3;
			LectureDataBean dto=new LectureDataBean();
			dto.setLec_num(lec_num);
			dto.setSta(sta);
			lectureDao.changeClass(dto);
			request.setAttribute("lec_num", lec_num);
			
			return new ModelAndView("/class365/adminReview");
		}else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script type='text/javascript'>");
			out.println("alert('접근이 허용되지 않습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			//history.back()때문에 필요없는 부분이지만 return값때문에 넣어줌
			String re=request.getHeader("Referer");
			request.setAttribute("re", re);
			return new ModelAndView("/class365/redirectPage");
		}
		
	}
}
