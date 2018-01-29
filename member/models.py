from django.db import models

# Create your models here.
class Member(models.Model):

    user_email = models.EmailField(max_length=100,blank=False)    
    user_password = models.CharField(max_length=25,blank=False)
    user_name = models.CharField(max_length=20,blank=True)
    user_birth = models.DateField(null=True)
    user_nationality = models.CharField(max_length=40,blank=True)
    user_image = models.CharField(max_length=20,blank=True)
    user_about = models.CharField(max_length=500,blank=True)

    
    
    class Meta:
        db_table = "members"