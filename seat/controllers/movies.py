from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from ..models import Movie


def get_movies(request):
    """
    获取电影列表
    :param request:
    :return:
    """
    movie_list = Movie.objects.all()
    hot_list = movie_list[:6]
    render(request, 'movies.html', {'movies': movie_list, 'hot': hot_list})


def get_movie(request, movie_id):
    """
    获取某部电影
    :param request:
    :param movie_id:
    :return:
    """
    movie = get_object_or_404(Movie, id=movie_id)
    render(request, 'movie.html', {'movie': movie})
