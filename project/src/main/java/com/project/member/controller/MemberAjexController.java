package com.project.member.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController // 페이지이동이 없음 
@RequiredArgsConstructor
@RequestMapping("/members/*")
@Log4j
public class MemberAjexController {

}
