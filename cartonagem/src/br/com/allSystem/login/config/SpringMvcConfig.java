package br.com.allSystem.login.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import br.com.allSystem.login.dao.LoginDAO;
import br.com.allSystem.login.dao.LoginDAOImpl;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "br.com.allSystem.login")
public class SpringMvcConfig implements WebMvcConfigurer {

	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/cartonagem");
		dataSource.setUsername("root");
		dataSource.setPassword("Mysql4783*1");

		return dataSource;
	}
	
	@Bean
	public ViewResolver getViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views");
		resolver.setSuffix(".jsp");
		
		return resolver;		
	}
	
	@Bean
	public LoginDAO getLoginDAO() {
		return new LoginDAOImpl(getDataSource());
	}
}
