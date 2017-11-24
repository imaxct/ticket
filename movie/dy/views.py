# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render
import models
import json
from datetime import date, datetime,time
from django.views.decorators.csrf import csrf_exempt

class MyEncoder(json.JSONEncoder):
    def default(self, obj):
        # if isinstance(obj, datetime.datetime):
        #     return int(mktime(obj.timetuple()))
        if isinstance(obj, datetime):
            return obj.strftime('%Y-%m-%d %H:%M:%S')
        elif isinstance(obj, date):
            return obj.strftime('%Y-%m-%d')
        elif isinstance(obj, time):
            return obj.strftime('%H:%M:%S')
        else:
            return json.JSONEncoder.default(self, obj)

def getMovies(request):
    movie_set = models.Movie.objects.all().values()
    movie_list = list(movie_set)
    resp = {'ok' : True, 'msg' : None, 'obj' : movie_list}
    resp_json=json.dumps(resp, cls = MyEncoder,ensure_ascii=False)
    return HttpResponse(resp_json)

def getMovieByID(request):
    movieID = request.GET.get('movieID')
    movie_set = models.Movie.objects.filter(movieid=movieID).values()
    movie_list = list(movie_set)
    resp = {'ok': True, 'msg': None, 'obj': movie_list}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

@csrf_exempt
def setMovie(request):
    #movie_id = request.POST['movieID']
    imageURL = request.POST['imageURL']
    movieName = request.POST['movieName']
    totalTime = request.POST['totalTime']
    actor = request.POST['actor']
    type = request.POST['type']
    director = request.POST['director']
    models.Movie.objects.create(imageurl=imageURL,moviename=movieName,totaltime=totalTime,type=type,actor=actor,derictor=director)
    resp = {'ok': True, 'msg': None, 'obj': 'success'}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

@csrf_exempt
def deleteMovie(request):
        movieID = request.POST['movieID']
        models.Movie.objects.filter(movieid=movieID).delete()
        resp = {'ok': True, 'msg': None, 'obj': 'success'}
        resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
        return HttpResponse(resp_json)

def getTickets(request):
    ticket_set = models.Ticket.objects.all().values()
    ticket_list = list(ticket_set)
    resp = {'ok': True, 'msg': None, 'obj': ticket_list}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

def getTicketByID(request):
    ticketID = request.GET.get('ticketID')
    ticket_set = models.Ticket.objects.filter(ticketid=ticketID).values()
    ticket_list = list(ticket_set)
    resp = {'ok': True, 'msg': None, 'obj': ticket_list}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

@csrf_exempt
def deleteTicket(request):
    ticketID = request.POST['ticketID']
    models.Ticket.objects.filter(ticketid=ticketID).delete()
    resp = {'ok': True, 'msg': None, 'obj': 'success'}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

def getSessions(request):
    session_set = models.Session.objects.all().values()
    session_list = list(session_set)
    resp = {'ok': True, 'msg': None, 'obj': session_list}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

def getSessionByID(request):
    sessionID = request.GET.get('sessionID')
    session_set = models.Session.objects.filter(sessionid=sessionID).values()
    session_list = list(session_set)
    resp = {'ok': True, 'msg': None, 'obj': session_list}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

@csrf_exempt
def setSession(request):
    #sessionID = request.POST['sessionID']
    movie_id = request.POST['movieID']
    startTime = request.POST['startTime']
    price = request.POST['price']
    seat = request.POST['seat']
    movie = models.Movie.objects.get(movieid=movie_id)
    models.Session.objects.create(movieid=movie,starttime=startTime,price=price,seat=seat)
    resp = {'ok': True, 'msg': None, 'obj': 'success'}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

@csrf_exempt
def deleteSession(request):
    sessionID = request.POST['sessionID']
    models.Session.objects.filter(sessionid=sessionID).delete()
    resp = {'ok': True, 'msg': None, 'obj': 'success'}
    resp_json = json.dumps(resp, cls=MyEncoder, ensure_ascii=False)
    return HttpResponse(resp_json)

def setTicket(ticketID,sessionID,seatID,request):
    userID = "userID"
    seatID = seatID
    sessionID = sessionID
    models.Ticket.objects.create(ticketID=ticketID,userID=userID,sessionID=sessionID,seatID=seatID)

