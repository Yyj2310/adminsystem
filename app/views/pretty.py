from django.shortcuts import render, HttpResponse, redirect
from app import models
from app.utils.form import PrettyModelForm, PrettyEditModelForm, UserModelForm
from app.utils.pagination import Pagination


def pretty_list(request):
    """靓号列表"""
    data_dict = {}
    search_data = request.GET.get('q', '')
    if search_data:
        data_dict['mobile__contains'] = search_data

    # 筛选好的数据
    query_set = models.PrettyNum.objects.filter(**data_dict).order_by('level')

    page_object = Pagination(request, query_set)

    context = {
        'data_list': page_object.page_queryset,  # 分完页的数据
        'search_data': search_data,
        'page_string': page_object.html()  # 页码
    }

    return render(request, 'pretty_list.html', context)


def pretty_add(request):
    """添加靓号"""
    if request.method == 'GET':
        form = PrettyModelForm()
        return render(request, 'pretty_add.html', {'form': form})
    # 获取数据
    form = PrettyModelForm(data=request.POST)
    # 校验
    if form.is_valid():
        form.save()
        return redirect('/pretty/list/')
    else:
        return render(request, 'pretty_add.html', {'form': form})


def pretty_edit(request, nid):
    """编辑靓号"""
    row_object = models.PrettyNum.objects.filter(id=nid).first()
    if request.method == 'GET':
        form = PrettyEditModelForm(instance=row_object)
        return render(request, 'pretty_add.html', {'form': form})
    form = PrettyEditModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        form.save()
        return redirect('/pretty/list/')
    else:
        return render(request, 'pretty_add.html', {'form': form})


def pretty_delete(request, nid):
    """删除靓号"""
    models.PrettyNum.objects.filter(id=nid).delete()
    return redirect('/pretty/list/')
