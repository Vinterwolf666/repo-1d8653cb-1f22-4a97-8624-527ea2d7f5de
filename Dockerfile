# Usa Nginx como imagen base
FROM nginx:alpine

# Elimina el contenido predeterminado de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia los archivos estáticos al directorio predeterminado de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 para el contenedor
EXPOSE 80

# Iniciar Nginx en modo de primer plano
CMD ["nginx", "-g", "daemon off;"]
