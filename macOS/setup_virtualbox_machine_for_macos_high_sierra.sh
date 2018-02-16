MACHINE_NAME=$1

VBoxManage modifyvm "$MACHINE_NAME" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "$MACHINE_NAME" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "$MACHINE_NAME" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "$MACHINE_NAME" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "BOARD-PRODUCT"
VBoxManage setextradata "$MACHINE_NAME" "VBoxInternal/Devices/efi/0/Config/DmiSystemSerial" "SERIAL"
VBoxManage setextradata "$MACHINE_NAME" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "$MACHINE_NAME" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
