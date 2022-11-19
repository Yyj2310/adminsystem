"""day17 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from app.views import department, user, pretty, admin, account, task, upload

urlpatterns = [
    path('test/', department.test),
    path('depart/list/', department.depart_list),
    path('depart/add/', department.depart_add),
    path('depart/delete/', department.depart_delete),
    path('depart/<int:nid>/edit/', department.depart_edit),

    path('user/list/', user.user_list),
    path('user/add/', user.user_add),
    path('user/add/form/add/', user.user_add_form_add),
    path('user/<int:nid>/edit/', user.user_edit),
    path('user/<int:nid>/delete/', user.user_delete),

    path('pretty/list/', pretty.pretty_list),
    path('pretty/add/', pretty.pretty_add),
    path('pretty/<int:nid>/edit/', pretty.pretty_edit),
    path('pretty/<int:nid>/delete/', pretty.pretty_delete),

    path('admin/list/', admin.admin_list),
    path('admin/add/', admin.admin_add),
    path('admin/<int:nid>/edit/', admin.admin_edit),
    path('admin/<int:nid>/delete/', admin.admin_delete),
    path('admin/<int:nid>/reset/', admin.admin_reset),

    path('',account.login),
    path('login/', account.login),
    path('logout/', account.logout),
    path('image/code/', account.image_code),

    path('task/list/', task.task_list),
    path('task/test/', task.task_test),
    path('task/add/', task.task_add),

    path('upload/list/', upload.upload_list),
    path('upload/multi/', upload.upload_multi),


]
