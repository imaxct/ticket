from django.http import HttpRequest, Http404, HttpResponse, JsonResponse
from django.shortcuts import get_list_or_404, render
from ..models import Order


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


def buy(request):
    if 'openid' not in request.session:
        return HttpResponse(status=400)

    openid = request.session['openid']
    seats = request.POST['seats']
    seat_arr = [int(x) for x in seats.split('|')]
    session_id = int(request.POST['sid'])
    return JsonResponse({'ok': True}, safe=False)
