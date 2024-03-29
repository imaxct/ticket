from django.db import models


class User(models.Model):
    openid = models.CharField(primary_key=True, max_length=64)
    phone = models.CharField(max_length=11, unique=True, default=None, null=True)
    nickname = models.CharField(max_length=190)
    head = models.CharField(max_length=200)
    remaining = models.FloatField()
    score = models.IntegerField()

    def __str__(self):
        return '%s-%s' % (self.openid, self.nickname)

    class Meta:
        db_table = 'ticket_user'


class Movie(models.Model):
    id = models.IntegerField(primary_key=True, auto_created=True)
    name = models.CharField(max_length=200)
    ename = models.CharField(max_length=200, db_column='eng_name')
    type = models.CharField(max_length=200)
    length = models.IntegerField()
    comeout = models.DateField(db_column='come_out')
    country = models.CharField(max_length=20)
    intro = models.TextField(max_length=500)
    url = models.CharField(max_length=200)
    actor = models.CharField(max_length=200)
    director = models.CharField(max_length=100)

    def __str__(self):
        return '%s - %s' % (self.id, self.name)

    class Meta:
        db_table = 'ticket_movie'


class Session(models.Model):
    id = models.IntegerField(primary_key=True, auto_created=True)
    movie_id = models.ForeignKey(Movie, db_column='movie_id', on_delete=models.CASCADE)
    start_time = models.DateTimeField(db_column='start_time')
    price = models.FloatField()
    seat = models.CharField(max_length=60)

    def __str__(self):
        return '%s - %s - %s - %s' % (self.id, self.movie_id.name, self.start_time, self.price)

    class Meta:
        db_table = 'ticket_session'


class Order(models.Model):
    # id = models.IntegerField(primary_key=True, auto_created=True)
    session_id = models.ForeignKey(Session, db_column='session_id')
    user_id = models.ForeignKey(User, db_column='user_id')
    seats = models.CharField(max_length=50)
    price = models.FloatField()

    def __str__(self):
        return '%s %s %s %s' % (self.session_id, self.user_id, self.seats, self.price)

    class Meta:
        db_table = 'ticket_order'
