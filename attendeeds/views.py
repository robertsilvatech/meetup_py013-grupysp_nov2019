from django.shortcuts import render
import socket

# Create your views here.
def home(request):
    hostname = socket.gethostname()
    return render(request, 'home.html', {'hostname': hostname})

