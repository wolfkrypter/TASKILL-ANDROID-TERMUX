#!/bin/bash



echo "\033[35m\n\nTaskill\n\n\033[0m"
echo "\033[35m\nInf/taskill:\n\033[0m"
echo "\033[32mCopie y pegue el nombre del paquete en paquete, y force la detención de los aplicativos de su sistema operativo mediante la consola linux.\033[0m"
echo "\033[35m\n\nInf:\n"
echo "\033[32mAntes de utilizar TASKILL-ANDROID-TX active su red wifi o wlan e active depuración inalambrica para poder utilizar taskill.\033[0m\n"


echo "\033[32m" "\n\033m"
adb start-server
adb connect 127.0.0.1:5037
adb connect 127.0.0.1:5037
adb tcpip 5037




echo "\033[035m" "\n[Procesando lista de paquetes]\033[0m\n"
echo "\033[032m" "\n\033m"
adb shell pm list packages



echo "\033[35m" "\nPaquete:\033[0m"
echo "\033[32m\033m"
read pcg
echo "\033[32m" "\n\033m"
adb shell am force-stop $pcg


echo "\033[35m\n\nProceso \033[0m""\033[33m"$pcg"\033[0m""\033[35m detenido.\033[0m"
echo "\033[32m" "\n\033m"
adb disconnect 127.0.0.1:5037
adb kill-server

echo "\033[32m" "\n\n\033m"
