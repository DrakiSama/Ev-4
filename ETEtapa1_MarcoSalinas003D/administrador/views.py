from django.shortcuts import render
from .models import Libro
from django.db import DatabaseError, transaction

# Create your views here.

def home(request):
    return render(request, 'listar.html')

def list(request):
    libros = Libro.objects.all()
    return render(request, 'listar.html', {'libros': libros, 'mensaje': ''})

def create(request):
    if request.method == "POST":
        try:
            libro = Libro()
            libro.Nombre = request.POST.get('Nombre')
            libro.Autor = request.POST.get('Autor')
            libro.Precio = request.POST.get('Precio')
            libro.Stock = request.POST.get('Stock')
            libro.Publicacion = request.POST.get('Publicacion')
            libro.save()
            return render(request, 'listar.html', {'mensaje': "Usuario registrado"})
        except DatabaseError as ex:
            return render(request, 'agregar.html', {'mensaje': ex.__str__})
    return render(request, 'agregar.html', {'mensaje': ""})

def delete(request, id):
    Libro.objects.get(pk=id).delete()
    return render(request, 'listar.html', {'mensaje': 'Libro eliminado'})
