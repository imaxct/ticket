from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^login$', views.user_login, name='user_login'),
    url(r'^ms/$', views.get_movies, name='get_movie_list'),
    url(r'^m/(?P<movie_id>[0-9]+)/$', views.get_movie, name='get_movie'),
    url(r'^orders$', )
]
