
from django.shortcuts import render
from django.http import HttpResponse, Http404
from rest_framework.views import APIView
from rest_framework.response import Response



class HelloWorld(APIView):
    def get(self, request, format=None):
        return Response('hello world!')