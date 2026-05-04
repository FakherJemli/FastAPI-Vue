FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
ENV CLIENT_ID=
ENV CLIENT_SECRET=
ENV TENANT=
ENV SCOPES=
ENV FRONTEND=
EXPOSE 8000
HEALTHCHECK CMD curl -f http://localhost:8000/ || exit 1
CMD ["nginx", "-g", "daemon off;"]