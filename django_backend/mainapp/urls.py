from django.urls import path, include
from rest_framework import routers, serializers, viewsets
from rest_framework.authtoken import views as authtoken_views
from . import models
from . import views


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.User
        fields = ['password', 'first_name', 'last_name']

class UserViewSet(viewsets.ModelViewSet):
    queryset = models.User.objects.all()
    serializer_class = UserSerializer


router = routers.DefaultRouter()
router.register(r'users', UserViewSet)


urlpatterns = [
    path('', include(router.urls)),
    path('api-token-auth', authtoken_views.obtain_auth_token),
    path('hello-world', views.HelloWorld.as_view()),
]