import requests
from django.conf import settings
from django.http import HttpResponse
from django.shortcuts import redirect, render, get_object_or_404
from django.urls import reverse
from ..constants import *
from ..models import *
import random


def oauth(request):
    """
    oauth
    :param request:
    :return:
    """
    if 'openid' in request.session:
        return redirect('index')

    code = request.GET['code']
    if code is None or code == '':
        return HttpResponse(status=400, content='no-code')

    user_info = get_user_info(code)
    if 'errcode' in user_info:
        return HttpResponse(status=400, content=str(user_info))

    try:
        user = User.objects.get(openid=user_info['openid'])
    except User.DoesNotExist:
        user = User(
            openid=user_info['openid'],
            nickname=user_info['nickname'],
            head=user_info['headimgurl'],
            score=0,
            remaining=0
        )
        user.save()

    request.session['openid'] = user_info['openid']
    return redirect('index')


def mine(request):
    if 'openid' not in request.session:
        return HttpResponse(status=400)
    openid = request.session['openid']
    user = get_object_or_404(User, openid=openid)
    return render(request, 'mine.html', {'user': user})


def get_user_info(code):
    ret = requests.get(url=URL_ACCESS_TOKEN.format(settings.WECHAT_APP_ID, settings.WECHAT_APP_SECRET, code))
    if ret.status_code != 200:
        return None
    if 'errcode' in ret.json():
        return ret.json()
    ak = ret.json()
    access_token = ak['access_token']
    openid = ak['openid']
    ret = requests.get(url=URL_USER_INFO.format(access_token, openid))
    ret.encoding = 'utf-8'
    if ret.status_code != 200:
        return None
    return ret.json()


def test(request):
    try:
        user = User.objects.get(openid='openid')
    except User.DoesNotExist:
        user = User(
            openid='openid',
            nickname='nickname',
            head='http://www.feizl.com/upload2007/2014_01/140116182482507.jpg',
            score=0,
            remaining=0
        )
        user.save()
    request.session['openid'] = 'openid'
    return redirect('index')
