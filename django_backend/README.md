Сделать базу:
```ps
$ rm .\db.sqlite3
(env) $ python .\manage.py migrate
(env) $ python .\manage.py populate_db
```