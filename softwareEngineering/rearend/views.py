from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'index.html')

def workerList(request):
    return render(request, 'workerList.html')

def calculation(request):
    return render(request, 'calculation.html')

def aboutUs(request):
    return render(request, 'aboutUs.html')