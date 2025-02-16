FROM node:18-alpine
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
RUN npm install
# Make port 3000 available to the world outside this container
EXPOSE 3000
RUN ls -ltr
# Run app.js when the container launches
CMD ["npm", "start"]
