FROM rasa/rasa:3.6.10

# Copy all project files
COPY . /app
WORKDIR /app

# Optional: install any extra dependencies yes
#RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

EXPOSE 5005

CMD ["rasa", "run", "--enable-api", "--model", "models/giftmodel.gz", "--cors", "*", "--debug"]
