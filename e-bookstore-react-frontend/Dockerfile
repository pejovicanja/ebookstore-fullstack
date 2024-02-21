FROM node:20.11.0 as build-stage

WORKDIR /app

COPY ./e-bookstore-react-frontend/package*.json ./

RUN npm install

COPY ./e-bookstore-react-frontend/ .

RUN npm run build

FROM node:20.11.0

RUN npm install -g serve

COPY --from=build-stage /app/build /app/build

EXPOSE 3000

CMD ["serve", "-s", "/app/build", "-l", "3000"]