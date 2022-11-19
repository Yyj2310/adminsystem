from django.shortcuts import render, HttpResponse, redirect

from app import models
from app.utils.form import AdminModelForm, AdminEditModelForm, AdminResetModelForm
from app.utils.pagination import Pagination


def admin_list(request):
    """管理员列表"""
    # info_dict = request.session['info']
    # print(info_dict)
    # print(info_dict['name'])
    # print(info_dict['id'])

    data_dict = {}
    search_data = request.GET.get('q', '')
    if search_data:
        data_dict['username__contains'] = search_data

    query_set = models.Admin.objects.filter(**data_dict)
    page_object = Pagination(request, query_set)
    context = {
        "data_list": page_object.page_queryset,  # 分完页的数据
        "page_string": page_object.html(),  # 生成页码
        'search_data': search_data,
    }
    return render(request, 'admin_list.html', context)


def admin_add(request):
    """新建管理员"""
    if request.method == 'GET':
        form = AdminModelForm()
        context = {
            'form': form
        }
        return render(request, 'admin_add.html', context)

    # 提交数据到数据库
    form = AdminModelForm(data=request.POST)

    if form.is_valid():
        form.save()
        return redirect('/admin/list/')
    context = {
        'form': form
    }
    return render(request, 'admin_add.html', context)


def admin_edit(request, nid):
    """编辑管理员"""
    row_object = models.Admin.objects.filter(id=nid).first()
    # 有可能多人同时登陆，数据被提前删除了
    if not row_object:
        return HttpResponse('数据已经不存在')

    if request.method == 'GET':
        form = AdminEditModelForm(instance=row_object)
        context = {
            'form': form
        }
        return render(request, 'admin_edit.html', context)

    form = AdminEditModelForm(instance=row_object, data=request.POST)
    if form.is_valid():
        form.save()
        return redirect('/admin/list/')

    context = {
        'form': form
    }
    return render(request, 'admin_edit.html', context)


def admin_delete(request, nid):
    """删除管理员"""
    models.Admin.objects.filter(id=nid).delete()
    return redirect('/admin/list/')


def admin_reset(request, nid):
    """重置密码"""
    row_object = models.Admin.objects.filter(id=nid).first()
    if not row_object:
        return HttpResponse('数据不存在')
    if request.method == "GET":
        form = AdminResetModelForm()
        context = {
            'form': form
        }
        return render(request, 'admin_reset.html', context)

    form = AdminResetModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        form.save()
        return redirect('/admin/list/')
    else:
        context = {
            'form': form
        }
        return render(request, 'admin_reset.html', context)
