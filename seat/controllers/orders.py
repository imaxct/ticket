from django.db import transaction, DatabaseError
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, get_object_or_404

from ..models import *


def get_seat_str(seats):
    arr = seats.split('|')
    str_list = []
    for x in arr:
        pos = int(x)
        str_list.append('%s排%s座' % ((pos // 8) + 1, (pos % 8) + 1))
    return ','.join(str_list)


def get_orders(request):
    """
    获取订单列表
    :param request:
    :return:
    """
    if 'openid' not in request.session:
        return HttpResponse(status=400)

    openid = request.session['openid']
    order_list = Order.objects.filter(user_id=openid)
    seat_list = {x.id: get_seat_str(x.seats) for x in order_list}
    return render(request, 'orders.html', {'orders': order_list, 'seats': seat_list})


def buy(request, session_id):
    session = get_object_or_404(Session, id=session_id)
    # session['end_time'] = session.start_time + timedelta(minutes=session.movie_id.length)
    return render(request, 'buy.html', {'s': session, 'sid': session_id})


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

    if len(seat_arr) > 3:
        return JsonResponse({'ok': False, 'msg': '最多只能购买3张.'}, safe=False)
    session_id = int(request.POST['sid'])
    session = Session.objects.get(id=session_id)

    # judge seat

    for x in seat_arr:
        pos = int(x)
        if 0 <= pos < len(session.seat):
            if session.seat[pos] == '1':
                return JsonResponse({'ok': False, 'msg': '座位已经被选, 请更换座位.'}, safe=False)

    order = Order(session_id=session, user_id=user, seats=seats, price=session.price * len(seat_arr))

    for x in seat_arr:
        session.seat = session.seat[:x] + '1' + session.seat[x + 1:]

    try:
        with transaction.atomic():
            order.save()
            session.save()
    except DatabaseError:
        print('error')
        return JsonResponse({'ok': False, 'msg': '购票失败'}, safe=False)

    return JsonResponse({'ok': True}, safe=False)
