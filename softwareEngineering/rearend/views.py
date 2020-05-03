from django.shortcuts import render

# Create your views here.
def index(request):
    cateId = 1
    context = {
        'cateId': cateId
    }
    return render(request, 'index.html', context=context)

def workerList(request):
    cateId = 2
    context = {
        'cateId': cateId
    }
    return render(request, 'workerList.html', context=context)

def calculation(request):
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