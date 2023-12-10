from django.db import models
from django.contrib.auth.models import AbstractUser

from .managers import UserManager
    

class Gender(models.Model):
    name = models.CharField(max_length=80)

    def __str__(self) -> str:
        return self.name

class Country(models.Model):
    name = models.CharField(max_length=80)
    flag = models.ImageField(upload_to='country_flags')

    def __str__(self) -> str:
        return self.name


# TODO custom user
class User(AbstractUser):
    ADMIN = 'A'
    COORDINATOR = 'C'
    RUNNER = 'R'

    ROLES = (
        (ADMIN, 'Admin'),
        (COORDINATOR, 'Coordinator'),
        (RUNNER, 'Runner')
    )

    username = None
    email = models.EmailField(unique=True)
    first_name = models.CharField(max_length=80)
    last_name = models.CharField(max_length=80)
    role = models.CharField(max_length=1, choices=ROLES, default=RUNNER)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = UserManager()

    def __str__(self) -> str:
        return self.email

class Runner(models.Model):
    user = models.OneToOneField(User, on_delete=models.PROTECT)
    gender = models.ForeignKey(Gender, on_delete=models.PROTECT)
    date_of_birth = models.DateField()
    country = models.ForeignKey(Country, on_delete=models.PROTECT)

    def __str__(self) -> str:
        return self.user