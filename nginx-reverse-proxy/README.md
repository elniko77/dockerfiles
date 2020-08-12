#### Prueba de concepto de contenedores con distintas versiones de php ####

Este grupo de contenedores levantan un reverse proxy con nginx, para poder servir los distintos sitios en distintas versiones de php. Los legacy 5.6 si no se pueden migrar al menos estarían menos expuestos.


Crear en /etc/hosts

    127.0.0.1  sitio1php5.test
    127.0.0.1  sitio2php7.test
    127.0.0.1  sitio3apache.test
    127.0.0.1  sitio4apache.test
