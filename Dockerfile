FROM ubuntu
# Instalar Nginx.
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/* && echo "daemon off;" >> /etc/nginx/nginx.conf
# Definir diretorio de trabalho
WORKDIR /etc/nginx
# Definir comando default
CMD ["nginx"]
# Adicionar configuracao
ADD default /etc/nginx/sites-available/default
ADD index.html /var/www/
# Expose ports.
EXPOSE 80

