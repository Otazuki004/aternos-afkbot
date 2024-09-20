# Step 1: Use the official Node.js 18 alpine image
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the necessary port (Minecraft server, if needed)
EXPOSE 25565

# Step 7: Set the default command to run the bot (from your Procfile)
CMD ["npm", "start"]
