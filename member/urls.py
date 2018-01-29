from django.contrib import admin
from django.urls import path
from . import views
app_name='member'
urlpatterns = [
    path('login/',views.login,name='login'),
    path('logout/',views.logout,name='logout'),
    path('register/',views.register,name='register'),
    path('profile/<str:user_email>',views.profile,name='profile'),
    path('travelers/',views.travelers,name='travelers'),
    path('login_test/',views.login_test,name='login_test'),
    path('update/',views.update,name = 'update'),
]
