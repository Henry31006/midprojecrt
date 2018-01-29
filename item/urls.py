from django.contrib import admin
from django.urls import path
from . import views
app_name='item'
urlpatterns = [
#     path('login/',views.login,name='login'),
#     path('logout/',views.logout,name='logout'),
#     path('register/',views.register,name='register'),
#     path('profile/<str:useraccount>',views.profile,name='profile'),
    path('',views.item,name='item'),
    path('<int:id>/',views.item_detail,name='item_detail'),
    path('create/',views.create,name='create'),
    path('update/<int:id>',views.update,name='update'),
    path('delete/<int:id>',views.delete,name='delete'),
]
