from django.db import models

# Create your models here.
class Engineer(models.Model):
    number = models.CharField(max_length=11, blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    sex = models.IntegerField(blank=True, null=True)
    birth_date = models.DateTimeField(blank=True, null=True)
    education = models.IntegerField(blank=True, null=True)
    hometown = models.CharField(max_length=255, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    telphone = models.CharField(max_length=255, blank=True, null=True)
    seniority = models.IntegerField(blank=True, null=True)
    basic_wage = models.FloatField(blank=True, null=True)
    img = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'engineer'


class Opeartions(models.Model):
    time = models.DateTimeField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    description = models.CharField(max_length=255, blank=True, null=True)
    type = models.IntegerField(blank=True, null=True)
    re_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'opeartions'


class RecoveredEngineer(models.Model):
    number = models.CharField(max_length=11, blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    sex = models.IntegerField(blank=True, null=True)
    birth_date = models.DateTimeField(blank=True, null=True)
    education = models.IntegerField(blank=True, null=True)
    hometown = models.CharField(max_length=255, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    telphone = models.CharField(max_length=255, blank=True, null=True)
    seniority = models.IntegerField(blank=True, null=True)
    basic_wage = models.FloatField(blank=True, null=True)
    img = models.CharField(max_length=255, blank=True, null=True)
    origin_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'recovered_engineer'





