FROM rasa/rasa:3.6.10

# Copy all project files
COPY . /app
WORKDIR /app

# Optional: install any extra dependencies
# RUN pip install -r requirements.txt

EXPOSE 5005

CMD ["run", "--enable-api", "--model", "models/giftmodel.gz", "--cors", "*", "--debug"]