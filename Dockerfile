# Use the official Browsertrix crawler image
FROM webrecorder/browsertrix-crawler:latest

# Use bash as the default shell
SHELL ["/bin/bash", "-c"]

# Update the package list and install curl (if necessary, though it may be pre-installed in the base image)
RUN apt-get update && apt-get install -y \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy requirements.txt if you have any additional Python dependencies
# This step assumes you have a requirements.txt file to install additional Python packages
COPY requirements.txt ./requirements.txt

# Install additional Python dependencies, if any
RUN pip install --no-cache-dir -r requirements.txt

# Optionally, set the PYTHONPATH (if you're adding Python code that needs to be imported)
ENV PYTHONPATH="$PYTHONPATH:/app"

# Default command to run the crawler (You can override this command if needed)
CMD ["bash"]
