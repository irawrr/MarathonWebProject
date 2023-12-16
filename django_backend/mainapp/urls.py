from django.urls import path, include
from rest_framework import routers
from rest_framework.authtoken import views as authtoken_views
from . import models
from . import views



router = routers.DefaultRouter()
router.register(r'users', views.UserViewSet)
router.register(r'runners', views.RunnerViewSet)
router.register(r'genders', views.GenderViewSet)
router.register(r'countries', views.CountriesViewSet)


urlpatterns = [
    path('', include(router.urls)),
    path('sign-up', views.SignUpView.as_view()),
    path('api-token-auth', authtoken_views.obtain_auth_token),
    path('hello-world', views.HelloWorld.as_view()),
    path('upload-volunteers', views.VolunteerUploadView.as_view())
]