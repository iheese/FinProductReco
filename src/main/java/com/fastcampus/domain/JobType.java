package com.fastcampus.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@ToString
@AllArgsConstructor
@Getter
@JsonFormat
public enum JobType {
	EMPLOYEE,
	UNEMPLOYED, 
	BUSINESS, 
	STUDENT, 
	FREELANCER;  
}
