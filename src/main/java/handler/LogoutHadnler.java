package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutHadnler implements CommandHandler{

		@RequestMapping( "/logout" )
		@Override
		public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			request.getSession().removeAttribute( "memid" );
			return new ModelAndView( "class365/mainForm" );
		}
}


