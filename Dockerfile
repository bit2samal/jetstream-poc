FROM b2k8786/php-node

ARG PORT
ENV PORT=${PORT}

RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

RUN a2enmod rewrite

# COPY . .

#RUN composer install

#RUN chmod -R 777 ./storage/ ./bootstrap/ ./public/
#RUN npm install
#RUN npm run dev

# ENTRYPOINT php artisan migrate --force && apache2-foreground
