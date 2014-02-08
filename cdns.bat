@echo off

echo 1:����ΪOpenDNS��DNS
echo 2:����ΪGoogle��DNS
echo 3:����Ϊ127.0.0.1

set /p sel=ѡ�����(1/3):

if not defined sel (
echo ����Ϊ�Զ���ȡ ...
netsh interface ip set dns "��������" dhcp
pause
exit
)

if %sel% LEQ 1 (
echo ����OpenDNS��DNS ...
netsh interface ip set dns "��������" static 208.67.222.222 primary
netsh interface ip add dns "��������" 208.67.220.220
)else if %sel% LEQ 2 (
echo ����Google��DNS ...
netsh interface ip set dns "��������" static 8.8.8.8 primary
netsh interface ip add dns "��������" 8.8.4.4
)else if %sel% LEQ 3 (
echo ����127.0.0.1 ...
netsh interface ip set dns "��������" static 127.0.0.1
)

pause