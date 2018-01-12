server {
       listen 80;
       listen [::]:80;

       server_name hw01.calderoncs4550.com;

       root /home/francisco/www/hw01.calderoncs4550.com;
       index index.html;

       location / {
               try_files $uri $uri/ =404;
       }
}
