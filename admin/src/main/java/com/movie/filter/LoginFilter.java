package com.movie.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;
        HttpSession session = request.getSession();
        String path = request.getRequestURI();
        if (path.contains("login")){
            chain.doFilter(req, resp);
        } else if(session.getAttribute("userSession")==null){
            request.getRequestDispatcher("/jsp/401.jsp").forward(request,response);
        }else{
            chain.doFilter(req, resp);
        }
    }

    @Override
    public void destroy() {

    }
}
