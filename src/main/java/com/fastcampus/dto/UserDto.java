package com.fastcampus.dto;

import javax.persistence.Column;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class UserDto {

private Long id;   // 식별키
	
	@ApiModelProperty(value = "회원 아이디", example = "asdfw", required = true )
	private String username;    // 아이디
	
	@ApiModelProperty(value = "회원 비밀번호", example = "1q2w3e4r", required = true )
	private String password;    // 비밀번호
	
	@ApiModelProperty(value = "회원 이름", example = "홍길동", required = true )
	private String name;    // 이름
			
	@ApiModelProperty(value = "회원 직업", example = "직장인", required = true )
	private String job;     // 직업
	
	@ApiModelProperty(value = "회원 나이", example = "20", required = true )
	private int age;        // 나이

}

