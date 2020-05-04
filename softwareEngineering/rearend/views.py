from django.shortcuts import render
from django.http import JsonResponse
import json
from .models import Engineer

# Create your views here.
def index(request):
    cateId = 1
    context = {
        'cateId': cateId
    }
    return render(request, 'index.html', context=context)

def workerList(request):
    cateId = 2
    datas = Engineer.objects.filter().values()
    for key, data in enumerate(datas):
        datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")

    context = {
        'cateId': cateId,
        'datas': datas
    }
    return render(request, 'workerList.html', context=context)

def calculation(request):
    cateId = 3
    context = {
        'cateId': cateId
    }
    return render(request, 'calculation.html', context=context)

def engineer_detail(request):
    cateId = 3
    context = {
        'cateId': cateId
    }
    return render(request, 'calculation.html', context=context)

def hand_calculation(request):
    cateId = 3
    context = {
        'cateId': cateId
    }
    return render(request, 'calculation.html', context=context)

def aboutUs(request):
    cateId = 4
    context = {
        'cateId': cateId
    }
    return render(request, 'aboutUs.html', context=context)

def login(request):
    return render(request, 'login.html')

def handLogin(request):
    data = json.loads(request.body)
    account = data['account']
    password = data['password']
    print(account, password)
    if account == 'root' and password == 'password':
        loginStatus = 1
        request.session['loginStatus'] = True
    else:
        loginStatus = 0
    cateId = 1
    context = {
        'cateId': cateId,
        'loginStatus': loginStatus,
    }
    return JsonResponse(context, safe=False)