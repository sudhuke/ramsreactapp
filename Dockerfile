# pull official base image
FROM node:15.0.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json .
COPY package-lock.json ./
RUN yarn install --silent
RUN yarn global add react-scripts@3.4.1 --silent

# add app
COPY . ./

# start app
CMD ["npm", "start"]
