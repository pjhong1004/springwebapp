package com.mycompany.springwebapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.springwebapp.dto.Ch08Member;
import com.mycompany.springwebapp.interceptor.Auth.Role;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch08LoginCheckInterceptor implements HandlerInterceptor {
   
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
      //log.info("실행");
      
      // 요청 처리 메소드가 @Login가 붙어 있는지 확인
      HandlerMethod handlerMethod = (HandlerMethod) handler;
      Login login = handlerMethod.getMethodAnnotation(Login.class);
      
      // @Login이 붙어 있다면
      if(login != null) {
         HttpSession session = request.getSession();
         Ch08Member member = (Ch08Member) session.getAttribute("login");
         
         // 로그인이 되었다면
         if(member != null) {
            return true;
         } else {
            response.sendRedirect(request.getContextPath() + "/ch08/content");
            return false;
         }
      } else {
         // @Login이 붙어있지 않다면
         return true;
      }
   }
}