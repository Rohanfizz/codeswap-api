FROM python:3.8
WORKDIR /.
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt  pip==20.3.4
COPY . ./
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
