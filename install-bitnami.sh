#!/bin/bash

#-------------------------------------------------------------------------------
# Instalación de Bitnami
#-------------------------------------------------------------------------------

# Habilitamos el modo de shell para mostrar los comandos que se ejecutan
set -x

# Actualizamos la lista de paquetes
apt update -y

# Actualizamos los paquetes que lo necesiten
apt upgrade -y

# Descargamos el instalador de Bitnami
wget https://bitnami.com/redirect/to/1459674/bitnami-drupal-9.1.7-0-linux-x64-installer.run

# Damos permisos de ejecución al paquete
chmod 755 bitnami-drupal-9.1.7-0-linux-x64-installer.run

# Instalamos los paquetes necesarios
apt-get install libncurses5 -y

# Ejecutamos el instalador de Bitnami
./bitnami-drupal-9.1.7-0-linux-x64-installer.run