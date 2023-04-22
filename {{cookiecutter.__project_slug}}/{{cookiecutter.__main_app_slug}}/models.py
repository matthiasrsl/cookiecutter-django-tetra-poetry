from django.db import models  # pylint:disable=unused-import

class ToDo(models.Model):
    session_key = models.CharField(max_length=40, db_index=True)
    title = models.CharField(max_length=80)
    done = models.BooleanField(default=False)
