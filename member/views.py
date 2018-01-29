from django.shortcuts import render,redirect
from .models import Member
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
import datetime
from django.utils.encoding import smart_str
from item.models import Item
# Create your views here.

def login_test(request):
    if request.method=='POST':
        email = request.POST['user_email']
        pwd = request.POST['user_password']
        member = Member.objects.filter(user_email=email,user_password=pwd).values('user_name')
        account = Member.objects.filter(user_email=email,user_password=pwd).values('user_email')
        if member:
            themember = member[0]
            theaccount = account[0]
            response = HttpResponse('<script>alert("success");location.href="/member/travelers/";</script>')
            # return response

            # un = themember['user_name']
            # response.set_cookie("username", un) # UnicodeEncodeError!
            # un2 = smart_str(un)

            if 'rememberme' in request.POST.keys() and request.POST['rememberme']:
                expiredate = datetime.datetime.now() + datetime.timedelta(days=7)
                response.set_cookie("name",themember['user_name'],expires=expiredate)
                response.set_cookie("useraccount",theaccount['user_email'],expires=expiredate)
            else:
                response.set_cookie("name",themember['user_name'])
                response.set_cookie("useraccount",theaccount['user_email'])
            return response
        else:
            return HttpResponse('<script>alert("error");location.href="/item/";</script>')
    return render(request,'member/create.html',locals())

def login(request):
    pass
    # if request.method == 'POST':
    #     useremail = request.POST["useremail"]
    #     password = request.POST["userpassword"]
    #     member = Member.objects.filter(password=password,useremail=useremail).value('username')
    #     # if member:
    #     #     themember = member[0]
    #     #     response = HttpResponse('<script>alert("success");location.href="/member/";</script>')
    #     #     if 'rememberme' in request.POST.keys() and request.POST['rememberme']:
    #     #         expiredate = datetime.datetime.now() + datetime.timedelta(days=7)
    #     #         response.set_cookie("account",themember['useracc'],expires=expiredate)
    #     #     else:
    #     #         response.set_cookie("name",themember['username'])
    #     #     return response

    # return render(request,'member/login_test.html')




def logout(request):
    response = HttpResponse('<script>alert("success");location.href="/item/";</script>')
    response.delete_cookie('name')
    response.delete_cookie('useraccount')
    return response

def register(request):
    if request.method == 'POST':
        user_name = request.POST["user_name"]
        user_email = request.POST["user_email"]
        user_password = request.POST["user_password"]
        #todo 接收到的會員資料寫進資料庫
        Member.objects.create(user_name=user_name,user_password=user_password,user_email=user_email)
        #todo 新增完成後轉到http://localhost:8000/member
        return redirect('/item/')             
    return render(request,'member/register.html')

def profile(request,user_email):
    if request.method == 'POST':        
        user_name = request.POST["user_name"]
        # user_email = request.POST["user_email"]
        user_birth = request.POST["user_birth"]
        user_nationality = request.POST["user_nationality"]
        user_about = request.POST["user_about"]


        #todo 修改資料庫中的會員資料
        member = Member.objects.get(user_email=user_email)
        member.user_name=user_name
        # member.user_email=user_email
        member.user_birth=user_birth
        member.user_nationality=user_nationality
        member.user_about=user_about

        user_image_file = request.FILES["user_image"]
        fs = FileSystemStorage()
        fs.save(user_image_file.name, user_image_file)
        member.user_image=user_image_file.name
        member.save()
        return redirect('/member/travelers')

    # Member.objects.filter()
    member = Member.objects.get(user_email=user_email)
    user_items = Item.objects.filter(user_email=user_email)
    return render(request,'member/profile.html',locals())

def travelers(request):
    members = Member.objects.all()
    return render(request,'member/travelers.html',locals())

def update(request):
    if request.method == 'POST':        
        user_email = request.POST["user_email"]
        user_email_new = request.POST["user_email_new"]
        user_password = request.POST["user_password"]

        
        member = Member.objects.get(user_email=user_email)
        member.user_email = user_email_new
        member.user_password = user_password
        member.save()
        return redirect('/member/travelers')



