from django.shortcuts import render, HttpResponse, redirect
from app import models
from app.utils.form import PrettyModelForm, PrettyEditModelForm, UserModelForm
from app.utils.pagination import Pagination


def test(request):
    """测试"""
    return render(request, 'layout.html')


def depart_list(request):
    """部门列表"""
    # 去数据库中取数据
    # queryset类型，可以理解为是列表，封装了一行数据[object,object,object...]
    queryset = models.Department.objects.all()
    page_object = Pagination(request, queryset)
    context = {
        "data_list": page_object.page_queryset,  # 分完页的数据
        "page_string": page_object.html()  # 生成页码
    }
    return render(request, 'depart_list.html',context)


def depart_add(request):
    """新建部门"""
    if request.method == 'GET':
        return render(request, 'depart_add.html')
    # 获取用户post的数据
    title = request.POST.get('title')
    # 保存到数据库
    models.Department.objects.create(title=title)
    return redirect('/depart/list/')


def depart_delete(request):
    """删除部门"""
    # 获取id
    nid = request.GET.get('nid')
    models.Department.objects.filter(id=nid).delete()
    return redirect('/depart/list/')


def depart_edit(request, nid):
    """编辑部门"""
    if request.method == 'GET':
        # 获取id
        row_data = models.Department.objects.filter(id=nid).first()
        return render(request, 'depart_edit.html', {'data_list': row_data})
    # 获取页面中提交的title（input框中的name中）
    title = request.POST.get('title')
    # 修改
    models.Department.objects.filter(id=nid).update(title=title)

    # 重定向
    return redirect('/depart/list/')

