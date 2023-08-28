# Use the official python image as base
FROM python:3.9

# set the working directory 
WORKDIR /app

#copy the requirments file
COPY requirements.txt requirements.txt

#install app dependencies
RUN pip install -r requirements.txt

#copy app source code
COPY . .

#Expose the application port
EXPOSE 5000

#Command to start the app
CMD ["python", "app.py"]
