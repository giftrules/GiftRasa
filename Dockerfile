# Use a slim Python 3.9 image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy all files to the container
COPY . .

# Install extra dependencies if needed (e.g., for actions.py)
# RUN pip install -r requirements.txt

# Train model (optional if you're uploading a pre-trained model)
# RUN rasa train

# Default command to start the Rasa server using your model
CMD ["run", "--enable-api", "--model", "models/giftmodel.gz", "--port", "5005", "--cors", "*"]