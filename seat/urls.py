from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^login$', views.user_login, name='user_login'),
    url(r'^admin/login$', views.admin_login, name='admin_login'),
]
