from django.db import models

class Runner(models.Model):
    email = models.CharField(max_length=80)
    gender = models.CharField(max_length=80)
    date_of_birth = models.DateField()

    def __str__(self):
        return self.email
    
class User(models.Model):
    password = models.CharField(max_length=80)
    first_name = models.CharField(max_length=80)
    last_name = models.CharField(max_length=80)