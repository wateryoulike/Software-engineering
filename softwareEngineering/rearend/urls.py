"""softwareEngineering URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
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
from django.urls import path, include, re_path
from . import views

urlpatterns = [
    path('', views.index),
    path('aboutUs/', views.aboutUs),
    path('workerList/', views.workerList),
    path('calculation/', views.calculation),
    path('hand_calculation/', views.hand_calculation),
    path('login/', views.login),
    path('loginOut/', views.loginOut),
    path('handLogin', views.handLogin),
    path('engineer_detail', views.engineer_detail),
    path('update_message', views.update_message),
    path('delete_message', views.delete_message),
    path('add_message', views.add_message),
    path('select_message', views.select_message),
    path('sort', views.sort),
    path('sort_other', views.sort_other),
    path('delete_recover', views.delete_restore),
    path('recover_data', views.recover_data),
]
