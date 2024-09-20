# Step 1: Use the official Node.js image as the base image
FROM node:18-alpine

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy the package files first (to take advantage of Docker layer caching)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the necessary port (if needed)
EXPOSE 25565  # or any port your bot might use (assuming it's a Minecraft server)

# Step 7: Set the default command to run the bot (from your Procfile)
CMD ["node", "index.js"]
