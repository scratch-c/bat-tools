@echo off
%1 %SystemRoot%\System32\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
echo 作者洛谷@scratch_szc( https://www.luogu.com.cn/user/1260767 )
set /p in=(1.git clone 2.删除（管理员）)
if %in%==1 goto git
if %in%==2 goto del

:del
set /p in=(1.删除指定目录 2.删除指定文件)
if %in%==1 goto del1
if %in%==2 goto del2

:del1
set /p in=请输入目录:
rd /s /q %in%
echo 成功!
pause
exit

:del2
set /p in=请输入文件:
del %in%
echo 成功!
pause
exit

:git
set /p a=项目地址:
set /p b=项目名:
git clone %a% E:\projects\%b%
echo 成功!
pause
exit