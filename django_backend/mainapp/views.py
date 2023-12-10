from rest_framework import generics
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import viewsets
from . import models
from . import serializers as my_serializers


class HelloWorld(APIView):
    def get(self, request, format=None):
        return Response('hello world!')
    
class UserViewSet(viewsets.ModelViewSet):
    queryset = models.User.objects.all()
    serializer_class = my_serializers.UserSerializer

class GenderViewSet(viewsets.ModelViewSet):
    queryset = models.Gender.objects.all()
    serializer_class = my_serializers.GenderSerializer

class CountriesViewSet(viewsets.ModelViewSet):
    queryset = models.Country.objects.all()
    serializer_class = my_serializers.CounrtySerializer

class RunnerViewSet(viewsets.ModelViewSet):
    queryset = models.Runner.objects.all()
    serializer_class = my_serializers.RunnerSerializer

class SignUpView(generics.CreateAPIView):
    queryset = models.Runner.objects.all()
    serializer_class = my_serializers.SignUpSerializer

    def create(self, request, *args, **kwargs):
        # Extract runner_profile data from the request data
        user_data = request.data.copy()
        runner_profile_data = user_data.pop('runner_profile', None)

        # Validate and create the user object
        serializer = my_serializers.UserSerializer(data=user_data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()

        # If there is runner_profile data, create the Runner object
        if runner_profile_data:
            runner_serializer = my_serializers.RunnerSerializer(user=user, data=runner_profile_data)
            runner_serializer.is_valid(raise_exception=True)
            runner_serializer.save(user=user)

        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)
