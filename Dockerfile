FROM python:3.13-slim

WORKDIR /app 
# sets the working directory

COPY . /app/ 
# copy all the files to the image's working directory

RUN pip install -r requirements.txt
# install all the required python packages and libraries

EXPOSE 8000
# Exporting the port 
CMD ["fastapi", "run", "extract_save_data.py", "--host", "0.0.0.0", "--port", "8000"]
# Running the fastapi application on 0.0.0.0