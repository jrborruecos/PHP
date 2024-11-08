#!/bin/bash
if mount | grep /home/ususario/shared/vba2 > /dev/null; then
ssh user@vba2 -p 22 'sudo chmod -R 755 /var/www/html'
sudo umount /home/ususario/shared/vba2
echo "Desconexión realizada correctamente"
else
ssh user@vba2 -p 22 'sudo chmod -R 777 /var/www/html'
sudo sshfs -p 22 -o IdentityFile=/home/ususario/.ssh/id_rsa,allow_other,default_permissions user@vba2:/var/www/html /home/ususario/shared/vba2/
echo "Conexión realizada con éxito"
fi
