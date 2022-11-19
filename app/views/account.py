from django.shortcuts import render, HttpResponse, redirect
from app import models
from app.utils.form import LoginForm
from app.utils.code import check_code
from io import BytesIO


def login(request):
    """登录"""
    if request.method == 'GET':
        form = LoginForm()
        return render(request, 'sign-in.html', {'form': form})

    form = LoginForm(data=request.POST)

    # 验证成功
    if form.is_valid():
        # 获取数据
        # form.cleaned_data
        # 这里使用pop，因为后面要拿着数据去数据库中校验
        user_input_data = form.cleaned_data.pop('code')
        code = request.session.get('image_code', '')
        if code.upper() != user_input_data.upper():
            form.add_error('code', '验证码错误')
            return render(request, 'sign-in.html', {'form': form})

        # 验证和数据库的是否匹配
        admin_object = models.Admin.objects.filter(**form.cleaned_data).first()
        # 输入错误
        if not admin_object:
            form.add_error('password', '用户名或密码错误')
            return render(request, 'sign-in.html', {'form': form})
        # 用户密码正确
        # 网站生成随机字符串，写到用户浏览器的cookie中，再写入session中
        request.session['info'] = {'id': admin_object.id,
                                   'name': admin_object.username}
        # 七天免登录
        request.session.set_expiry(60*60*24*7)
        return redirect('/admin/list/')
    else:
        return render(request, 'sign-in.html', {'form': form})


def logout(request):
    """用户注销"""
    request.session.clear()
    return redirect('/login/')


def image_code(request):
    """验证码图片"""
    # 导入生成的图片
    img, code_string = check_code()

    # 把图片写入到session里面
    request.session['image_code'] = code_string
    # 设置60s超时
    request.session.set_expiry(60)

    print(code_string)
    stream = BytesIO()
    img.save(stream, 'png')
    return HttpResponse(stream.getvalue())
