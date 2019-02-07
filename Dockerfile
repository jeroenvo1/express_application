# docker image build -t express_application .
# docker run -d -p 3000:3000 --rm express_application

FROM hypriot/rpi-node

# Create app directory
WORKDIR /app

# Copy app dependencies to container and rebuild bcrypt lib
COPY package.json /app

# Install app dependencies
RUN npm install

# Bundle app source
COPY . /app

CMD npm run start

# Expose port
EXPOSE 3000