/Applications/Utilities/DeployStudio\ Assistant.app/Contents/Resources/sysBuilder/sys_builder.sh \
   -type=netboot \
   -id=909 \
   -dest=/tmp/ \
   -name=DeployStudioRuntime \
   -loc=Current \
   -timeout=30 \
   -displaysleep=10 \
   -disablewirelesssupport \
   -custombackground=/tmp/DSCustomDefaultDesktop.jpg \
   -ntp=time.euro.apple.com \
   -serverurl=https://127.0.0.1:60443 \
   -login=admin \
   -ardlogin=admin \
   -ardpassword=apple \
   -displaylogs
