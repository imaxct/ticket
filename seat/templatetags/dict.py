from django import template

register = template.Library()


def get_item(value, arg):
    if arg in value:
        return value[arg]
    return ''


register.filter('item', get_item)
