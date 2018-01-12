server {
       listen 80;
       listen [::]:80;

       server_name calderoncs4550.com www.calderoncs4550.com;

       root /home/francisco/www/calderoncs4550.com;
       index index.html;

       location / {
               try_files $uri $uri/ =404;
       }
}
