# Use the official Rasa image
FROM rasa/rasa:3.6.10

# Set working directory
WORKDIR /app

# Copy all project files
COPY . /app

# Optional: install Python dependencies if needed
# RUN pip install --no-cache-dir -r requirements.txt

# Train the model inside the container
RUN rasa train

# Expose Rasa API port
EXPOSE 5005

# Start the Rasa server with API and CORS enabled
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--debug"]
