package lecture;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

@Configuration
public class CreateBean {
	
	@Bean
	public LectureDao lectureDao() {
		return new LectureDBBean();
	}

	
	@Bean
	public ViewResolver viewResolver() {
		UrlBasedViewResolver viewReasolver = new  UrlBasedViewResolver();
		viewReasolver.setViewClass(JstlView.class);
		viewReasolver.setPrefix("/");
		viewReasolver.setSuffix(".jsp");
		return viewReasolver;
		
	}
}
