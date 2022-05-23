package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecmem.LecmemDataBean;
import lecture.LectureDao;

@Controller
public class ModifyProHandler implements CommandHandler {

	@Resource
	private LectureDao lectureDao;
	
	@RequestMapping( "/modifyPro" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		LecmemDataBean dto = new LecmemDataBean();
		dto.setPasswd( request.getParameter( "passwd" ) );
		
		String tel = null;
		String tel1 = request.getParameter( "tel1" );
		String tel2 = request.getParameter( "tel2" );
		String tel3 = request.getParameter( "tel3" );
		if( ! tel1.equals( "" ) && ! tel2.equals( "" ) && ! tel3.equals( "" ) ) {
			tel = tel1 + "-" + tel2 + "-" + tel3;
		}
		dto.setTel( tel );	
	
		String email = null;
		String email1 = request.getParameter( "email1" );
		String email2 = request.getParameter( "email2" );
		if( ! email1.equals( "" ) && ! email2.equals( "" ) ) {
			email = email1 + "@" + email2;
		}
		dto.setEmail( email );
	
		dto.setId( (String) request.getSession().getAttribute( "memid") ); 
	
		int result = lectureDao.modifyMember( dto );

		request.setAttribute( "result", result );	
		
		return new ModelAndView( "class365/modifyPro" );
	}

}














