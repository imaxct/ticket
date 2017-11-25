from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.get_movies, name='index'),
    url(r'^login$', views.oauth, name='oauth'),
    url(r'^m/(?P<movie_id>[0-9]+)/$', views.get_movie, name='get_movie'),
    url(r'^orders$', )
]
