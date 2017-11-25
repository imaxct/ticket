from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^ms$', views.get_movies, name='movies'),
    url(r'^login$', views.oauth, name='oauth'),
    url(r'^m/(?P<movie_id>[0-9]+)/$', views.get_movie, name='movie'),
    url(r'^orders$', views.get_orders, name='orders'),
    url(r'^buy/(?P<session_id>[0-9]+)/$', views.buy, name='buy'),
    url(r'^mine$', views.mine, name='mine'),
    url(r'^doBuy$', views.do_buy, name='ajax_buy'),
    url(r'^test$', views.test, name='test'),
]
