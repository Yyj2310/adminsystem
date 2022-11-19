from django.db import models


# Create your models here.
class Department(models.Model):
    """部门表"""
    # id 自动生成
    title = models.CharField(verbose_name='部门表', max_length=32)

    def __str__(self):
        return self.title


class UserInfo(models.Model):
    """用户表"""
    name = models.CharField(verbose_name='姓名', max_length=16)
    password = models.CharField(verbose_name='密码', max_length=64)
    age = models.IntegerField(verbose_name='年龄')
    account = models.DecimalField(verbose_name='账户余额', max_digits=10,
                                  decimal_places=2,
                                  default=0)
    create_time = models.DateField(verbose_name='入职时间')
    # 1.无约束
    # d_id = models.BigAutoField(verbose_name='部门ID')
    # 2.有约束
    # django自动
    # -写的depart
    # -生成数据列depart_id
    # 3.部门表被删除（默认需要先删除父表）
    # 3.1级联删除
    # depart = models.ForeignKey(to='Department',to_field='id',on_delete=models.CASCADE)
    # 3.2置空（这种情况要加上可为空）
    depart = models.ForeignKey(verbose_name='部门名称', to='Department', to_field='id',
                               null=True, blank=True,
                               on_delete=models.SET_NULL)
    # 性别没有必要再新建一个表，不会动态增加,可以使用1/2存储来减小数据库存储空间
    # 在django中约束
    gender_choice = (
        (1, '男'),
        (2, '女')
    )
    # 在数据库中的约束
    gender = models.SmallIntegerField(verbose_name='性别', choices=gender_choice)


class PrettyNum(models.Model):
    """靓号表"""
    mobile = models.CharField(verbose_name='手机号', max_length=11)
    price = models.IntegerField(verbose_name='价格', default=0)
    level_choices = (
        (1, '一级'),
        (2, '二级'),
        (3, '三级'),
        (4, '四级'),
        (5, '五级'),
    )
    level = models.SmallIntegerField(verbose_name='级别', choices=level_choices,
                                     default=1)
    status_choices = (
        (1, '已占用'),
        (2, '未占用'),
    )
    status = models.SmallIntegerField(verbose_name='状态', choices=status_choices,
                                      default=2)


class Admin(models.Model):
    """管理员"""
    username = models.CharField(verbose_name='管理员名称', max_length=32)
    password = models.CharField(verbose_name='密码', max_length=64)

    def __str__(self):
        return self.username


class Account(models.Model):
    """登录数据"""
    username = models.CharField(verbose_name='用户名', max_length=32)
    password = models.CharField(verbose_name='密码', max_length=64)


class Task(models.Model):
    """任务"""
    level_choice = (
        (1, '紧急'),
        (1, '重要'),
        (1, '临时'),
    )

    level = models.SmallIntegerField(verbose_name='级别', choices=level_choice, default=1)
    title = models.CharField(verbose_name='标题', max_length=64)
    detail = models.TextField(verbose_name='详细信息')
    user = models.ForeignKey(verbose_name='负责人', to='Admin', on_delete=models.CASCADE)
