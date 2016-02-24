from django.http import HttpResponse
from django.template import loader
from .models import Country


# Create your views here.
def index(request):
    return HttpResponse("Hola mundo desde Docker !!")

def countries(request):
    countries = Country.objects.all()
    context = {
        'countries': countries,
    }
    template = loader.get_template('countries.html')
    return HttpResponse(template.render(context, request))
