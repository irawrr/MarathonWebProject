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

class VolunteerSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Volunteer
        fields = '__all__'

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
    
class VolunteerCSVSerializer(serializers.Serializer):
    # volunteer_id = serializers.IntegerField()
    first_name = serializers.CharField(max_length=80)
    last_name = serializers.CharField(max_length=80)
    country_code = serializers.CharField(max_length=3)
    gender = serializers.CharField(max_length=1)

    def create(self, validated_data):
        country_code = validated_data.pop('country_code')
        gender = {'F': 'Female', 'M': 'Male'}[validated_data.pop('gender')]

        country = models.Country.objects.get(code=country_code)
        gender = models.Gender.objects.get(name=gender)

        return models.Volunteer.objects.create(country=country, gender=gender, **validated_data)