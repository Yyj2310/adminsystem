from django.shortcuts import render, HttpResponse, redirect
from app import models
from app.utils.form import UserModelForm
from app.utils.pagination import Pagination


def user_list(request):
    """用户列表"""
    query_Set = models.UserInfo.objects.all()
    page_object = Pagination(request, query_Set, page_size=2)
    context = {
        'data_list': page_object.page_queryset,
        "page_string": page_object.html()
    }
    return render(request, 'user_list.html', context)


def user_add(request):
    """用户添加"""
    if request.method == 'GET':
        context = {
            'depart_list': models.Department.objects.all(),
            'gender_choices': models.UserInfo.gender_choice
        }
        return render(request, 'user_add.html', context)


def user_add_form_add(request):
    """modelform版本的用户添加"""
    if request.method == 'GET':
        form = UserModelForm()
        return render(request, 'user_model_form_add.html', {'form': form})

    # 用户post提交数据，数据校验。
    form = UserModelForm(data=request.POST)
    # 校验
    if form.is_valid():
        print('校验成功')
        # 数据保存到数据库
        # models.UserInfo.objects.create(..)
        form.save()
        return redirect('/user/list/')
    # 校验失败（在页面上显示错误信息）
    else:
        return render(request, 'user_model_form_add.html', {'form': form})


def user_edit(request, nid):
    """用户编辑"""
    row_object = models.UserInfo.objects.filter(id=nid).first()
    if request.method == 'GET':
        form = UserModelForm(instance=row_object)
        return render(request, 'user_edit.html', {'form': form})
    # 获取数据
    form = UserModelForm(data=request.POST, instance=row_object)
    # 校验
    if form.is_valid():
        form.save()
        return redirect('/user/list/')
    else:
        return render(request, 'user_model_form_add.html', {'form': form})


def user_delete(request, nid):
    """用户删除"""
    models.UserInfo.objects.filter(id=nid).delete()
    return redirect('/user/list/')
