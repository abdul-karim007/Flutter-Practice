import email
from operator import index
from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

from aug21app.models import SignUpMember


# Create your views here.
def addrecord(request):
  x = request.POST['first']
  y = request.POST['last']
  z = request.POST['email']
  SignupMembers = SignUpMember(firstname=x, lastname=y, email=z)
  SignupMembers.save()
  return HttpResponse(SignupMembers)

def getAll(request):
  SignupMembers = SignUpMember.objects.all().values()
#   output = ""
#   for x in SignUpMembers:
#     output += x["firstname"]
  return HttpResponse(SignupMembers)
