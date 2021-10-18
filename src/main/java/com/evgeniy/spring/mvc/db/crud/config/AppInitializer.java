package com.evgeniy.spring.mvc.db.crud.config;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[] {DBConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() { // В этот метод подставляем наш класс SpringConfig
        // Теперь наш MySpringMVCDispatcherServletInitializer знает, где находится Spring конфигурация
        return new Class[] {WebConfig.class};
    }

    @Override
    protected String[] getServletMappings() { // <!-- Любой url который вводит пользователь перенаправляется на наш DespatcherServlet -->
        return new String[] {"/"};
    }

    @Override
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
        characterEncodingFilter.setEncoding("UTF-8");
        characterEncodingFilter.setForceEncoding(true);
        return new Filter[] { characterEncodingFilter};
    }
}
