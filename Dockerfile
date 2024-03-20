From node:20-alpine
WORKDIR C:\Users\dinashap\sfcs-base
COPY package.json package-lock.json ./
RUN npm install
RUN npm install -g @nestjs/cli
COPY tsconfig.json ./ 
COPY tsconfig.build.json ./ 
COPY . .
EXPOSE 3000
CMD ["npx", "nest", "start"]


