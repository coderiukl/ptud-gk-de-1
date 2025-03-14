from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class UserRole(models.Model):
    ROLE_CHOICES = [
        ('viewer', 'Viewer'),
        ('collaborator', 'Collaborator'),
        ('editor', 'Editor'),
    ]

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    role = models.CharField(max_length=20, choices=ROLE_CHOICES, default='viewer')

    def __str__(self):
        return f"{self.user.username} - {self.get_role_display()}"
