from django.db import models

# Create your models here.
class Item(models.Model):
    # useremail = models.EmailField(max_length=100,blank=False)
    # item_id = models.IntegerField(max_length=10,blank=False)
    item_name = models.CharField(max_length=60,blank=False)
    item_image = models.CharField(max_length=100,blank=True)
    item_from = models.CharField(max_length=20,blank=False)
    item_to = models.CharField(max_length=20,blank=False)
    # item_start_time = models.DateTimeField()
    item_arrive_time = models.DateTimeField()
    item_description = models.CharField(max_length=150,blank=True)
    item_price = models.FloatField(max_length=10,blank=False)
    item_price_currency = models.CharField(max_length=10,blank=False)
    user_email = models.EmailField(max_length=100,blank=False)  

    
    
    class Meta:
        db_table = "items"