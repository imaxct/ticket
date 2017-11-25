from django.http import HttpRequest, Http404, HttpResponse, JsonResponse
from django.shortcuts import get_list_or_404, render, get_object_or_404
from ..models import *
from datetime import timedelta


def get_orders(request):
    """
    获取订单列表
    :param request:
    :return:
    """
    if 'openid' not in request.session:
        return HttpResponse(status=400)

    openid = request.session['openid']
    order_list = get_list_or_404(Order, user_id=openid)
    render(request, 'orders.html', {'orders': order_list})


def buy(request, session_id):
    session = get_object_or_404(Session, id=session_id)
    session['end_time'] = session.start_time + timedelta(minutes=session.movie_id.length)
    return render(request, 'buy.html', {'s': session})


def do_buy(request):
    """
    购票
    :param request:
    :return:
    """
    if 'openid' not in request.session:
        return HttpResponse(status=400)

    openid = request.session['openid']
    user = get_object_or_404(User, openid=openid)

    seats = request.POST['seats']
    seat_arr = [int(x) for x in seats.split('|')]

    session_id = int(request.POST['sid'])
    session = Session.objects.get(id=session_id)

    # judge seat

    for x in seat_arr:
        pos = int(x)
        if 0 <= pos < len(session.seat):
            if session.seat[pos] == '1':
                return JsonResponse({'ok': False}, safe=False)

    order = Order(session_id=session, user_id=user, seats=seats, price=session.price)
    order.save()

    return JsonResponse({'ok': True}, safe=False)
