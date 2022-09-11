from django.urls import path
from . import views

urlpatterns = [
    path('signup/', views.addrecord,),
    # path('abc/', views.index2),
    path('users/', views.getAll)

]
