from django.urls import include, path
from . import views

urlpatterns = [
    path('', views.home, name="home"),
    
    path('libro-list/', views.list, name="libro_list"),
    path('libro-create/', views.create, name="libro_create"),
    path('libro-delete/<int:id>/', views.delete, name="libro_delete"),
]