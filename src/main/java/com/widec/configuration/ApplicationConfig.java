package com.widec.configuration;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.Jackson2ObjectMapperFactoryBean;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Configuration
@ComponentScan(basePackages = "com.widec")
@EnableWebMvc
public class ApplicationConfig extends WebMvcConfigurerAdapter {
 
    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
 
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/css/");
        registry.addResourceHandler("/css/images/**").addResourceLocations("/css/images/");
        registry.addResourceHandler("/js/**").addResourceLocations("/js/");
        registry.addResourceHandler("/js/views/**").addResourceLocations("/js/views/");
    }
    

    @Bean
	public RequestMappingHandlerAdapter requestMappingHandlerAdapter() {
		final RequestMappingHandlerAdapter adapter = new RequestMappingHandlerAdapter();
		final List<HttpMessageConverter<?>> messageConverters = new ArrayList<>();
		final MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter = new MappingJackson2HttpMessageConverter();
		mappingJackson2HttpMessageConverter.setObjectMapper(this.objectMapper().getObject());
		messageConverters.add(mappingJackson2HttpMessageConverter);
		adapter.setMessageConverters(messageConverters);
		return adapter;
	}
    
    @Bean(name = "objectMapper")
	public Jackson2ObjectMapperFactoryBean objectMapper() {
		final Jackson2ObjectMapperFactoryBean factory = new Jackson2ObjectMapperFactoryBean();
		factory.setFeaturesToEnable(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT);
		factory.setFeaturesToDisable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
		factory.setFeaturesToEnable(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY);

		return factory;
	}
 
}