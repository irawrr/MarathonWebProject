from rest_framework import serializers
from . import models

class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.User
        fields = ['email', 'first_name', 'last_name', 'password', 'role']

    def create(self, validated_data):
        user = models.User.objects.create_user(**validated_data)
        return user

class RunnerSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Runner
        fields = '__all__'

class GenderSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Gender
        fields = '__all__'

class CounrtySerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Country
        fields =  '__all__'

class RunnerProfileSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Runner
        fields = ['date_of_birth', 'gender', 'country']

class SignUpSerializer(serializers.ModelSerializer):
    runner_profile = RunnerProfileSerializer(required=True)

    class Meta:
        model = models.User
        fields = ['email', 'first_name', 'last_name', 'password', 'role', 'runner_profile']
    
    def create(self, validated_data):
        user_data = validated_data.copy()
        user_data.pop('runner_profile')
        runner_data = validated_data['runner_profile']
        user = models.User.objects.create(**user_data)
        models.Runner.objects.create(user=user, **runner_data)
        return user