package com.fastcampus.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.fastcampus.jwt.interceptor.JwtInterceptor;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Configuration
public class WebConfig implements WebMvcConfigurer {
    //접근 제한 없는 URI
	private static final String[] EXCLUDE_PATHS = {
<<<<<<< HEAD
			"/login",
=======
			      "/login",
>>>>>>> 200e550b518775bdd91549197c97d82b588fa10b
            "/users",
            "/error/**",
            "/v2/api-docs",
            "/swagger-resources/**",
<<<<<<< HEAD
            "/swagger-ui/**"
=======
            "/swagger-ui/**",
            "/products",
            "/products/*"   
>>>>>>> 200e550b518775bdd91549197c97d82b588fa10b
    };
    
    private final JwtInterceptor jwtInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(jwtInterceptor)
						.addPathPatterns("/**")
						.excludePathPatterns(EXCLUDE_PATHS);
    }
}
