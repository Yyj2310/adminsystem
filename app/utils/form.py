"""form class"""

from app import models
from django.core.validators import RegexValidator
from django import forms
from app.utils.utils_BootStrapModelForm import BootStrapModelForm
from django.core.exceptions import ValidationError
from app.utils.encrypt import md5


class PrettyEditModelForm(forms.ModelForm):
    """靓号modelform"""

    mobile = forms.CharField(
        label='手机号',
        validators=[RegexValidator(r'^1\d{10}', '手机号格式错误')]
    )

    class Meta:
        """元数据"""
        model = models.PrettyNum
        # fields = ['mobile', 'price', 'level', 'status']
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        for name, field in self.fields.items():
            print(name, field)
            field.widget.attrs = {"class": "form-control", "placeholder": field.label}

    def clean_mobile(self):
        """钩子"""
        txt_mobile = self.cleaned_data['mobile']
        exit = models.PrettyNum.objects.exclude(id=self.instance.pk).filter(
            mobile=txt_mobile).exists()
        if exit:
            raise ValidationError('手机号已存在')
        else:
            return txt_mobile


class PrettyModelForm(forms.ModelForm):
    """靓号modelform"""

    mobile = forms.CharField(
        label='手机号',
        validators=[RegexValidator(r'^1\d{10}', '手机号格式错误')]
    )

    class Meta:
        """元数据"""
        model = models.PrettyNum
        # fields = ['mobile', 'price', 'level', 'status']
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        for name, field in self.fields.items():
            print(name, field)
            field.widget.attrs = {"class": "form-control", "placeholder": field.label}

    def clean_mobile(self):
        """钩子"""
        txt_mobile = self.cleaned_data['mobile']
        exits = models.PrettyNum.objects.filter(mobile=txt_mobile).exists()
        if exits:
            raise ValidationError('手机号已存在')
        else:
            return txt_mobile


class UserModelForm(forms.ModelForm):
    """modelform的类"""
    name = forms.CharField(min_length=3, label='姓名')

    class Meta:
        """用于提取部分userinfo的数据"""
        model = models.UserInfo
        fields = ['name', 'password', 'age', 'account', 'create_time', 'depart', 'gender']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        for name, field in self.fields.items():
            print(name, field)
            field.widget.attrs = {"class": "form-control", "placeholder": field.label}


class AdminModelForm(BootStrapModelForm):
    """modelform类"""
    # 确认密码框
    confirm_password = forms.CharField(label='确认密码',
                                       widget=forms.PasswordInput(render_value=True))

    # 元数据
    class Meta:
        model = models.Admin
        fields = ['username', 'password']
        widgets = {
            'password': forms.PasswordInput(render_value=True)
        }

    def clean_password(self):
        """钩子"""
        pwd = self.cleaned_data.get('password')
        return md5(pwd)

    def clean_confirm_password(self):
        """钩子"""
        print(self.cleaned_data.get('password'))
        print(self.cleaned_data.get('confirm_password'))
        confirm_password = md5(self.cleaned_data.get('confirm_password'))
        pwd = self.cleaned_data.get('password')
        if pwd != confirm_password:
            raise ValidationError('密码不一致')
        # 这个return的值会保存在cleaned_data里面，最终会保存在数据库，如果数据库没有对应的字段就不会保存
        return confirm_password


class AdminEditModelForm(BootStrapModelForm):
    """编辑管理员名"""

    class Meta:
        model = models.Admin
        fields = ['username']
        widgets = {
            'username': forms.TextInput()
        }


class AdminResetModelForm(BootStrapModelForm):
    """重置密码类"""
    # 确认密码框
    confirm_password = forms.CharField(label='确认密码',
                                       widget=forms.PasswordInput(render_value=True))

    # 元数据
    class Meta:
        model = models.Admin
        fields = ['password']
        widgets = {
            'password': forms.PasswordInput(render_value=True)
        }

    def clean_password(self):
        """钩子"""
        pwd = self.cleaned_data.get('password')
        md5_pwd = md5(pwd)

        # 去数据库校验当前密码和新输入密码是否一致
        exits = models.Admin.objects.filter(id=self.instance.pk,password=md5_pwd).exists()
        if exits:
            raise ValidationError('密码不能与之前一致')

        return md5_pwd

    def clean_confirm_password(self):
        """confirm钩子"""
        print(self.cleaned_data.get('password'))
        print(self.cleaned_data.get('confirm_password'))
        confirm_password = md5(self.cleaned_data.get('confirm_password'))
        pwd = self.cleaned_data.get('password')
        if pwd != confirm_password:
            raise ValidationError('密码不一致')
        # 这个return的值会保存在cleaned_data里面，最终会保存在数据库，如果数据库没有对应的字段就不会保存
        return confirm_password

class LoginForm(forms.Form):
    """登录form"""
    username = forms.CharField(
        label='用户名',
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': "用户名"}),
    )
    password = forms.CharField(
        label='密码',
        widget=forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': "密码",
                                          'style': 'margin-top:10px'}, render_value=True),
    )

    code = forms.CharField(
        label='验证码',
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': "密码"}),
    )

    def clean_password(self):
        """钩子"""
        pwd = self.cleaned_data.get('password')
        return md5(pwd)

