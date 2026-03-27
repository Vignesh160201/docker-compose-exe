# Use official Python image
FROM python:3.10-slim

EXPOSE 8501

CMD MKDIR  -p /app
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]