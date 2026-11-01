FROM nginx:1.25-alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the Haruna Family static pages into Nginx public directory
COPY *.html /usr/share/nginx/html/
COPY deploy/nginx/haruna-family.web.id.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
