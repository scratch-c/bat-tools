@echo off
%1 %SystemRoot%\System32\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
echo �������@scratch_szc( https://www.luogu.com.cn/user/1260767 )
set /p in=(1.git clone 2.ɾ��������Ա��)
if %in%==1 goto git
if %in%==2 goto del

:del
set /p in=(1.ɾ��ָ��Ŀ¼ 2.ɾ��ָ���ļ�)
if %in%==1 goto del1
if %in%==2 goto del2

:del1
set /p in=������Ŀ¼:
rd /s /q %in%
echo �ɹ�!
pause
exit

:del2
set /p in=�������ļ�:
del %in%
echo �ɹ�!
pause
exit

:git
set /p a=��Ŀ��ַ:
set /p b=��Ŀ��:
git clone %a% E:\projects\%b%
echo �ɹ�!
pause
exit