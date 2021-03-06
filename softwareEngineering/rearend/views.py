from django.shortcuts import render
from django.http import JsonResponse
import json
from .models import Engineer, RecoveredEngineer as RE, Opeartions
from datetime import datetime
from django.db.models import Q, Avg
import time

# Create your views here.
def index(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        cateId = 1
        boy_num = Engineer.objects.filter(sex=1).count()
        girl_num = Engineer.objects.filter(sex=0).count()
        all_num = Engineer.objects.filter().count()

        avg_seniority = round(Engineer.objects.aggregate(Avg('seniority'))['seniority__avg'], 2)
        avg_basic_wage = round(Engineer.objects.aggregate(Avg('basic_wage'))['basic_wage__avg'], 2)
        print(avg_seniority, type(avg_seniority))
        print(boy_num, girl_num)
        boy_proportion = boy_num / (boy_num + girl_num)
        girl_proportion = girl_num / (boy_num + girl_num)
        sex_pie = {
            'boy': boy_proportion,
            'girl': girl_proportion
        }

        work_time_5 = Engineer.objects.filter(seniority__lte=5).count()
        work_time_10 = Engineer.objects.filter(Q(seniority__gt=5) & Q(seniority__lte=10)).count()
        work_time_15 = Engineer.objects.filter(seniority__gt=10).count()

        print(work_time_5, work_time_10, work_time_15)
        work_pro_5 = work_time_5 / all_num
        work_pro_10 = work_time_10 / all_num
        work_pro_15 = work_time_15 / all_num
        print(work_pro_5, work_pro_10, work_pro_15)

        work_pie = {
            'work_pro_5': work_pro_5,
            'work_pro_10': work_pro_10,
            'work_pro_15': work_pro_15,
        }

        wage_datas = Engineer.objects.all().values('seniority', 'basic_wage')
        all_datas = []
        for data in wage_datas:
            all_datas.append([data['seniority'], data['basic_wage']])
        print(wage_datas)
        context = {
            'cateId': cateId,
            'sex_pie': sex_pie,
            'work_pie': work_pie,
            'basic_wage': avg_basic_wage,
            'seniority': avg_seniority,
            'all_num': all_num,
            'all_datas': all_datas
        }
        return render(request, 'index.html', context=context)

def sort(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        now_page = int(request.GET.get('page', '1'))
        sex_sort = int(request.POST.get('sex_sort', '-1'))
        education_sort = int(request.POST.get('education_sort', '-1'))
        basic_wage_sort = int(request.POST.get('basic_wage_sort', '-1'))
        seniority_sort = int(request.POST.get('seniority_sort', '-1'))
        print(sex_sort, education_sort, basic_wage_sort, seniority_sort)


        cateId = 2
        datas = Engineer.objects.all()
        if sex_sort != -1 and sex_sort != -2:
            if education_sort != -1 and education_sort != -2:
                datas = Engineer.objects.filter(Q(education=education_sort) & Q(sex=sex_sort))
            else:
                datas = Engineer.objects.filter(sex=sex_sort)
        else:
            if education_sort != -1 and education_sort != -2:
                datas = Engineer.objects.filter(education=education_sort)

        if basic_wage_sort == 0:
            datas = datas.order_by('-basic_wage')
        else:
            datas = datas.order_by('basic_wage')

        if seniority_sort == 0:
            datas = datas.order_by('-seniority')
        else:
            datas = datas.order_by('seniority')

        datas = datas.values()
        all_num = len(datas)
        datas = datas[(now_page-1) * 8: now_page * 8]

        for key, data in enumerate(datas):
            datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")
            datas[key]['all_wage'] = round((data['basic_wage'] + 10 * 25 + data['seniority'] * 800) * 0.9 - 500, 1)

        for data in datas:
            print(data)
        all_years = list(range(1, 51))

        sort = {
            'sex_sort': sex_sort,
            'education_sort': education_sort,
            'seniority_sort': seniority_sort,
            'basic_wage_sort': basic_wage_sort,
        }
        context = {
            'cateId': cateId,
            'datas': datas,
            'all_years': all_years,
            'num': all_num,
            'sort': sort,
            'is_sort': 1,
            'now_page': now_page
        }
        return render(request, 'workerList.html', context=context)

def sort_other(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        now_page = int(request.GET.get('page', '1'))
        sex_sort = int(request.GET.get('sex_sort', '-1'))
        education_sort = int(request.GET.get('education_sort', '-1'))
        basic_wage_sort = int(request.GET.get('basic_wage_sort', '-1'))
        seniority_sort = int(request.GET.get('seniority_sort', '-1'))
        print(sex_sort, education_sort, basic_wage_sort, seniority_sort)


        cateId = 2
        test = Engineer.objects.filter().order_by('basic_wage').values()
        for te in test:
            print(te)
        datas = Engineer.objects.filter()
        if sex_sort != -1 and sex_sort != -2:
            print('232323')
            if education_sort != -1 and education_sort != -2:
                datas = Engineer.objects.filter(Q(education=education_sort) & Q(sex=sex_sort))
            else:
                datas = Engineer.objects.filter(sex=sex_sort)
        else:
            if education_sort != -1 and education_sort != -2:
                datas = Engineer.objects.filter(education=education_sort)

        if basic_wage_sort == 0:
            print('111')
            datas = datas.order_by('-basic_wage')
        else:
            datas = datas.order_by('basic_wage')

        if seniority_sort == 0:
            datas = datas.order_by('-seniority')
        else:
            datas = datas.order_by('seniority')

        datas = datas.values()
        for data in datas:
            print(data)
        all_num = len(datas)
        datas = datas[(now_page-1) * 8: now_page * 8]

        for key, data in enumerate(datas):
            datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")
            datas[key]['all_wage'] = round((data['basic_wage'] + 10 * 25 + data['seniority'] * 800) * 0.9 - 500, 1)
        all_years = list(range(1, 51))

        sort = {
            'sex_sort': sex_sort,
            'education_sort': education_sort,
            'seniority_sort': seniority_sort,
            'basic_wage_sort': basic_wage_sort,
        }
        context = {
            'cateId': cateId,
            'datas': datas,
            'all_years': all_years,
            'num': all_num,
            'sort': sort,
            'is_sort': 1,
            'now_page': now_page
        }
        return render(request, 'workerList.html', context=context)

def workerList(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        now_page = int(request.GET.get('page', '1'))
        cateId = 2
        datas = Engineer.objects.filter().values()
        all_num = len(datas)
        datas = datas[(now_page-1) * 8: now_page * 8]
        for key, data in enumerate(datas):
            datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")
            datas[key]['all_wage'] = round((data['basic_wage'] + 10 * 25 + data['seniority'] * 800) * 0.9 - 500, 1)
        all_years = list(range(1, 51))
        print(all_years)

        sort = {
            'sex_sort': -1,
            'education_sort': -1,
            'seniority_sort': -1,
            'basic_wage_sort': -1,
        }

        context = {
            'cateId': cateId,
            'datas': datas,
            'all_years': all_years,
            'num': all_num,
            'sort': sort,
            'now_page': now_page
        }
        return render(request, 'workerList.html', context=context)

def calculation(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        cateId = 3
        now_page = int(request.GET.get('page', '1'))
        all_num = Opeartions.objects.filter().count()
        datas = Opeartions.objects.filter().order_by('-pk').values()[(now_page - 1) * 8: now_page * 8]

        for key, data in enumerate(datas):
            datas[key]['time'] = datas[key]['time'].strftime("%Y-%m-%d %H:%M:%S")

        context = {
            'cateId': cateId,
            'datas': datas,
            'num': all_num,
            'now_page': now_page
        }
        return render(request, 'calculation.html', context=context)

def delete_restore(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        cateId = 3
        now_page = int(request.GET.get('page', '1'))
        all_num = Opeartions.objects.filter().count()

        delete_id = int(request.POST.get('delete_id', ''))
        op = Opeartions.objects.filter(pk=delete_id)
        if op.exists():
            print(op.values()[0])
            delete_data = RE.objects.filter(id = op.values()[0]['re_id'])
            if delete_data.exists():
                print(delete_data.values()[0])
                delete_data.delete()
            else:
                pass
            op.delete()
        else:
            pass

        datas = Opeartions.objects.filter().order_by('-pk').values()[(now_page - 1) * 8: now_page * 8]
        for key, data in enumerate(datas):
            datas[key]['time'] = datas[key]['time'].strftime("%Y-%m-%d %H:%M:%S")

        context = {
            'cateId': cateId,
            'datas': datas,
            'num': all_num,
            'now_page': now_page
        }
        return render(request, 'calculation.html', context=context)

def recover_data(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        cateId = 3
        now_page = int(request.GET.get('page', '1'))
        all_num = Opeartions.objects.filter().count()

        restore_id = int(request.POST.get('restore_id', ''))
        op = Opeartions.objects.filter(pk=restore_id)
        if op.exists():
            print(op.values()[0])
            delete_data = RE.objects.filter(pk=op.values()[0]['re_id'])
            if delete_data.exists():
                print(delete_data.values()[0])
                recover_data = delete_data
                delete_data = delete_data.values()[0]
                if op.values()[0]['type'] == 1:
                    origin_data = Engineer.objects.filter(pk=delete_data['origin_id'])
                    if origin_data.exists():
                        origin_data.delete()
                    op.delete()
                    recover_data.delete()

                elif op.values()[0]['type'] == 2:
                    origin_data = Engineer(name=delete_data['name'], number=delete_data['number'], sex=delete_data['sex'],
                                           birth_date=delete_data['birth_date'], education=delete_data['education'], hometown=delete_data['hometown'],
                                           address=delete_data['address'], telphone=delete_data['telphone'], seniority=delete_data['seniority'],
                                           basic_wage=delete_data['basic_wage'])
                    origin_data.save()
                    op.delete()
                    recover_data.delete()

                elif op.values()[0]['type'] == 3:
                    origin_data = Engineer.objects.filter(pk=delete_data['origin_id'])
                    print(origin_data)
                    if origin_data.exists():
                        origin = Engineer.objects.get(pk=delete_data['origin_id'])
                        print('delete: ', delete_data)
                        print('origin: ', origin)
                        origin.name = delete_data['name']
                        origin.number = delete_data['number']
                        origin.sex = delete_data['sex']
                        origin.birth_date = delete_data['birth_date']
                        origin.education = delete_data['education']
                        origin.hometown = delete_data['hometown']
                        origin.address = delete_data['address']
                        origin.telphone = delete_data['telphone']
                        origin.seniority = delete_data['seniority']
                        origin.basic_wage = delete_data['basic_wage']
                        origin.save()
                    op.delete()
                    recover_data.delete()

                else:
                    pass
            else:
                pass
        else:
            pass

        datas = Opeartions.objects.filter().order_by('-pk').values()[(now_page - 1) * 8: now_page * 8]
        for key, data in enumerate(datas):
            datas[key]['time'] = datas[key]['time'].strftime("%Y-%m-%d %H:%M:%S")

        context = {
            'cateId': cateId,
            'datas': datas,
            'num': all_num,
            'now_page': now_page
        }
        return render(request, 'calculation.html', context=context)

def engineer_detail(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        if request.is_ajax():
            data = json.loads(request.body)
            id = int(data['id'])
            datas = Engineer.objects.filter(id=id).values()[0]
            datas['birth_date'] = datas['birth_date'].strftime("%Y-%m-%d")
            print(id, datas)

            context = {
                'datas': datas,
            }
            return JsonResponse(context, safe=False)


def hand_calculation(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        cateId = 3
        context = {
            'cateId': cateId
        }
        return render(request, 'calculation.html', context=context)

def aboutUs(request):
    loginStatus =  request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        cateId = 4
        context = {
            'cateId': cateId
        }
        return render(request, 'aboutUs.html', context=context)

def login(request):
    return render(request, 'login.html')

def loginOut(request):
    del request.session['loginStatus']
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

def update_message(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        ID = int(request.POST.get('ID', '1'))
        now_page = int(request.GET.get('page', '1'))
        sort = {
            'sex_sort': -1,
            'education_sort': -1,
            'seniority_sort': -1,
            'basic_wage_sort': -1,
        }
        all_num = Engineer.objects.filter().count()
        print(ID, type(ID))
        name = request.POST.get('name', '')
        number = request.POST.get('number', '')
        sex = request.POST.get('sex', '')
        birth_date = request.POST.get('birth_date', '')
        education = request.POST.get('education', '')
        hometown = request.POST.get('hometown', '')
        address = request.POST.get('address', '')
        telphone = request.POST.get('telphone', '')
        seniority = request.POST.get('seniority', '')
        basic_wage = request.POST.get('basic_wage', '')
        print(ID, name, number, sex, birth_date, education, hometown, address, telphone, seniority, basic_wage)
        human = Engineer.objects.get(pk=ID)
        recover = RE(name=human.name, number=human.number, sex=human.sex, birth_date=human.birth_date, education=human.education, hometown=human.hometown,
                     address=human.address, telphone=human.telphone, seniority=human.seniority, basic_wage=human.basic_wage, img=human.img, origin_id=human.id)
        recover.save()
        print('*'*50)
        print(datetime.now())
        op = Opeartions(time=datetime.now(), name='管理员', description='修改了编号为' + number + ', 名字为' + name + '的数据', type=3, re_id=recover.id)
        op.save()

        human.name = name
        human.number = number
        human.sex = sex
        human.birth_date = datetime.strptime(birth_date, '%Y-%m-%d')
        human.education = education
        human.hometown = hometown
        human.address = address
        human.telphone = telphone
        human.seniority = seniority
        human.basic_wage = basic_wage
        human.save()

        datas = Engineer.objects.filter().values()
        datas = datas[(now_page - 1) * 8: now_page * 8]
        for key, data in enumerate(datas):
            datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")
            datas[key]['all_wage'] = round((data['basic_wage'] + 10 * 25 + data['seniority'] * 800) * 0.9 - 500, 1)
        all_years = list(range(1, 51))
        cateId = 2

        context = {
            'cateId': cateId,
            'datas': datas,
            'all_years': all_years,
            'now_page': now_page,
            'num': all_num,
            'sort': sort
        }

        return render(request, 'workerList.html', context=context)


def add_message(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        now_page = int(request.GET.get('page', '1'))
        sort = {
            'sex_sort': -1,
            'education_sort': -1,
            'seniority_sort': -1,
            'basic_wage_sort': -1,
        }
        all_num = Engineer.objects.filter().count()
        name = request.POST.get('name', '')
        number = request.POST.get('number', '')
        sex = request.POST.get('sex', '')
        birth_date = request.POST.get('birth_date', '')
        education = request.POST.get('education', '')
        hometown = request.POST.get('hometown', '')
        address = request.POST.get('address', '')
        telphone = request.POST.get('telphone', '')
        seniority = request.POST.get('seniority', '')
        basic_wage = request.POST.get('basic_wage', '')
        print(name, number, sex, birth_date, education, hometown, address, telphone, seniority, basic_wage)
        human = Engineer(name=name, number=number, sex=sex, birth_date=birth_date, education=education, hometown=hometown, address=address, telphone=telphone, seniority=seniority, basic_wage=basic_wage)
        human.save()

        human = Engineer.objects.get(pk=human.id)
        recover = RE(name=name, number=number, sex=sex, birth_date=birth_date, education=education, hometown=hometown,
                     address=address, telphone=telphone, seniority=seniority, basic_wage=basic_wage, img=human.img,
                     origin_id=human.id)
        recover.save()
        print('*' * 50)
        print(datetime.now())
        op = Opeartions(time=datetime.now(), name='管理员', description='增加了编号为' + number + ', 名字为' + name + '的数据', type=1,
                        re_id=recover.id)
        op.save()

        datas = Engineer.objects.filter().values()
        datas = datas[(now_page - 1) * 8: now_page * 8]
        for key, data in enumerate(datas):
            datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")
            datas[key]['all_wage'] = round((data['basic_wage'] + 10 * 25 + data['seniority'] * 800) * 0.9 - 500, 1)
        all_years = list(range(1, 51))
        cateId = 2

        context = {
            'cateId': cateId,
            'datas': datas,
            'all_years': all_years,
            'num': all_num,
            'sort': sort,
            'now_page': now_page
        }

        return render(request, 'workerList.html', context=context)


def delete_message(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        now_page = int(request.GET.get('page', '1'))
        sort = {
            'sex_sort': -1,
            'education_sort': -1,
            'seniority_sort': -1,
            'basic_wage_sort': -1,
        }
        all_num = Engineer.objects.filter().count()
        id = int(request.POST.get('delete_id', '0'))
        human1 = Engineer.objects.filter(pk=id)
        human = Engineer.objects.get(pk=id)
        recover = RE(name=human.name, number=human.number, sex=human.sex, birth_date=human.birth_date, education=human.education, hometown=human.hometown,
                     address=human.address, telphone=human.telphone, seniority=human.seniority, basic_wage=human.basic_wage, img=human.img,
                     origin_id=human.id)
        recover.save()
        print('*' * 50)
        print(datetime.now())
        op = Opeartions(time=datetime.now(), name='管理员', description='删除了编号为' + human.number + ', 名字为' + human.name + '的数据', type=2,
                        re_id=recover.id)
        op.save()

        print(human, id)
        if human1.exists():
            human1.delete()
        else:
            print("kongkongkongkong")

        cateId = 2
        datas = Engineer.objects.filter().values()
        datas = datas[(now_page - 1) * 8: now_page * 8]
        for key, data in enumerate(datas):
            datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")
            datas[key]['all_wage'] = round((data['basic_wage'] + 10 * 25 + data['seniority'] * 800) * 0.9 - 500, 1)
        all_years = list(range(1, 51))

        context = {
            'cateId': cateId,
            'datas': datas,
            'all_years': all_years,
            'num': all_num,
            'sort': sort,
            'now_page': now_page
        }
        return render(request, 'workerList.html', context=context)

def select_message(request):
    loginStatus = request.session.get('loginStatus')
    if loginStatus is not True:
        return render(request, 'login.html')
    else:
        search = request.POST.get('search', '')
        cateId = 2
        datas = Engineer.objects.filter(Q(number__icontains=search) | Q(name__icontains=search)).values()
        for key, data in enumerate(datas):
            datas[key]['birth_date'] = datas[key]['birth_date'].strftime("%Y-%m-%d")
        all_years = list(range(1, 51))

        context = {
            'cateId': cateId,
            'searchResult': 0,
            'searchContent': search,
            'datas': datas,
            'all_years': all_years,
        }
        return render(request, 'workerList.html', context=context)

