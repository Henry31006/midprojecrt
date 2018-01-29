from django.shortcuts import render,redirect
from .models import Item
from django.core.files.storage import FileSystemStorage

# Create your views here.
def item(request):
    #todo 讀取會員資料傳給item.html

    items = Item.objects.all()
    return render(request,'item/item.html',locals())

def item_detail(request,id):
    return render(request,'item/item_detail.html')

def create(request):
    # useremail = models.EmailField(max_length=100,blank=False)
    # item_id = models.IntegerField(max_length=10,blank=False)
    # item_name = models.CharField(max_length=60,blank=False)
    # item_image = models.ImageField()
    # item_from = models.CharField(max_length=20,blank=False)
    # item_to = models.CharField(max_length=20,blank=False)
    # item_start_time = models.DateTimeField()
    # item_arrive_time = models.DateTimeField()
    # item_description = models.CharField(max_length=150,blank=True)
    # item_price = models.FloatField(max_length=10,blank=False)
    # item_price_currency = models.CharField(max_length=10,blank=False)
    if request.method == 'POST' and request.FILES["item_image"]:
        # item_image = request.POST["item_image"]
        item_name = request.POST["item_name"]
        item_from = request.POST["item_from"]
        item_to = request.POST["item_to"]
        item_arrive_time = request.POST["item_arrive_time"]
        item_price = request.POST["item_price"]
        item_price_currency = request.POST["item_price_currency"]
        item_description = request.POST["item_description"]
        user_email = request.POST["user_email"]

        item_image_file = request.FILES["item_image"]
        fs = FileSystemStorage()
        fs.save(item_image_file.name, item_image_file)
        


        Item.objects.create(item_name=item_name,item_from=item_from, \
        item_to=item_to,item_arrive_time=item_arrive_time, \
        item_price=item_price,item_price_currency=item_price_currency, \
        item_description=item_description,item_image=item_image_file.name,user_email=user_email)
        return redirect('/item/')
    return render(request,'item/create.html')

def update(request,id):
    if request.method == 'POST' and request.FILES["item_image"]:
        # item_image = request.POST["item_image"]
        item_name = request.POST["item_name"]
        item_from = request.POST["item_from"]
        item_to = request.POST["item_to"]
        item_arrive_time = request.POST["item_arrive_time"]
        item_price = request.POST["item_price"]
        item_price_currency = request.POST["item_price_currency"]
        item_description = request.POST["item_description"]

        item_image_file = request.FILES["item_image"]
        fs = FileSystemStorage()
        fs.save(item_image_file.name, item_image_file)

        item = Item.objects.get(id=int(id))
        item.item_name=item_name
        item.item_from=item_from
        item.item_to=item_to
        item.item_arrive_time=item_arrive_time
        item.item_price=item_price
        item.item_price_currency=item_price_currency
        item.item_description=item_description
        item.item_image=item_image_file.name
        item.save()
        return redirect('/member/profile/'+item.user_email)
    item = Item.objects.get(id=int(id))
    return render(request,'item/create.html',locals())

def delete(request,id):
    item = Item.objects.get(id=int(id))
    item.delete()
    return redirect('/member/profile/'+item.user_email)