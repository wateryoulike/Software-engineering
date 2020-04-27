from django.db import models

# Create your models here.
class Engineer(models.Model):
    id = models.IntegerField(primary_key=True)
    number = models.IntegerField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    sex = models.IntegerField(blank=True, null=True)
    birth_date = models.DateTimeField(blank=True, null=True)
    education = models.IntegerField(blank=True, null=True)
    hometown = models.CharField(max_length=255, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    telphone = models.CharField(max_length=255, blank=True, null=True)
    seniority = models.IntegerField(blank=True, null=True)
    basic_wage = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'engineer'
