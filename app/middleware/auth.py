"""
验证
"""
from django.utils.deprecation import MiddlewareMixin
from django.shortcuts import HttpResponse, redirect


class AuthMiddleware(MiddlewareMixin):
    """中间件"""

    def process_request(self, request):
        """中间件"""
        # 排除不需要登录就能访问的页面
        if request.path_info in ['/login/', '/image/code/']:
            return
        # 读取当前访问用户的session的信息，如果能读到，说明已登录
        info = request.session.get('info')
        if info:
            return
        # 没有登录信息
        return redirect('/login/')
