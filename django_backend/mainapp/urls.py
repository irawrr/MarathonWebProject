from django.urls import path, include
from rest_framework import routers, serializers, viewsets
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
    path('api-auth/', include('rest_framework.urls')),
    path('api/hello-world', views.HelloWorld.as_view()),
    # path('api/registrate-user/')
]