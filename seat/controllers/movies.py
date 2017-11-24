from django.http import HttpResponse
from django.shortcuts import render
from ..models import Movie


def get_movies(request):
    """
    获取电影列表
    :param request:
    :return:
    """
    movie_list = Movie.objects.all()
    render(request, '')
