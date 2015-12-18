package com.gas.aop;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.gas.model.User;
import com.gas.model.WechatConfig;
import com.gas.service.UserService;

public class WXAOP implements HandlerInterceptor {
    @Autowired
    private UserService userService;
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

        if (request.getSession().getAttribute("user") == null) {
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName() == "user") {
                        User user = userService.wxLogin(cookie.getValue());
                        if (user != null) {
                            request.getSession().setAttribute("user", user);
                            return true;
                        }
                    }
                }
            }
            String uri = request.getRequestURI();
            String appid = WechatConfig.getWechatConfig().getWxCpInMemoryConfigStorage().getCorpId();
            String redirectUrl = WechatConfig.getWechatConfig().getDomain() + "/wechat/oauth";
            String state = uri;

            String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + appid + "&redirect_uri="
                    + redirectUrl + "&response_type=code&scope=SCOPE&state=" + state + "#wechat_redirect";
            response.sendRedirect(url);
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        // TODO Auto-generated method stub

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        // TODO Auto-generated method stub

    }
}
