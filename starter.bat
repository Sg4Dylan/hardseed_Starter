@echo off&title Hardseed�����ű�BETA  by Sg4dylan

:start
::����Ĭ����ֵ
@set class=3
@set range=2
@set time=32
@set tasks=8
@set dlpath=D:\
::��ʼ��������ʾ
cls
echo Hardseed�����ű�BETA
echo -----------------------------
echo ���ű�ʹ��hardseed������ȡ���񰮳ǵ����Ӽ����׷���
echo ʹ�ñ��ű�Ŀ����Ϊ�˼���ؽ�������ǲ�����hardseed������
echo -----------------------------
echo by SgDylan
pause
cls
::���GoAgent����״̬
echo ���GoAgent�Ƿ��Ѿ����С���
echo -----------------------------
tasklist | findstr /I "goagent"
echo -----------------------------
if errorlevel 1 ((cls&echo δ��⵽GoAgent���� ��)&goto end)
if errorlevel 0 ((echo GoAgent�������� ��)&pause&cls&goto Setting)
echo -----------------------------
cls

:Setting
::�趨���ز���
echo ȷ����Ҫ��ȡ��AV���
echo -----------------------------
echo ŷ��ԭ�� [����] �� ������1
echo ŷ��ת�� [����] �� ������2
echo ��������ԭ�� [����] �� ������3
echo ��������ת�� [����] �� ������4
echo ��������ԭ�� [����] �� ������5
echo ��������ת�� [����] �� ������6
echo ��ͨԭ�� [����] �� ������7
echo ��ͨת�� [����] �� ������8
echo �Ƕ������� [����] �� ������9
echo �������� [����] �� ������10
echo �������� [����] �� ������11
echo ŷ�� [����] �� ������12
echo ��ͨ [����] �� ������13
echo -----------------------------
echo ��ֱ�ӻس�Ĭ��ѡ��3
echo -----------------------------
set /p class= �������ְ��س���
if "%class%"=="1" set class=caoliu_west_original
if "%class%"=="2" set class=caoliu_west_reposted
if "%class%"=="3" set class=caoliu_asia_non_mosaicked_original
if "%class%"=="4" set class=caoliu_asia_non_mosaicked_reposted
if "%class%"=="5" set class=caoliu_asia_mosaicked_original
if "%class%"=="6" set class=caoliu_asia_mosaicked_reposted
if "%class%"=="7" set class=caoliu_cartoon_original
if "%class%"=="8" set class=caoliu_cartoon_reposted
if "%class%"=="9" set class=caoliu_selfie
if "%class%"=="10" set class=aicheng_asia_non_mosaicked
if "%class%"=="11" set class=aicheng_asia_mosaicked
if "%class%"=="12" set class=aicheng_west
if "%class%"=="13" set class=aicheng_cartoon
cls
echo ������ȡ����������
echo -----------------------------
echo ���ظ������ȫ������ �� ������1
echo ���ظ������100���������� �� ������2
echo ���ظ������200���������� �� ������3
echo ���ظ������500���������� �� ������4
echo ���ظ������1000���������� �� ������5
echo ���ظ������5000���������� �� ������6
echo -----------------------------
echo ��ֱ�ӻس�Ĭ��ѡ��2
echo -----------------------------
set /p range= �������ְ��س���
if "%range%"=="1" set range=-1
if "%range%"=="2" set range=500
if "%range%"=="3" set range=1000
if "%range%"=="4" set range=2000
if "%range%"=="5" set range=5000
if "%range%"=="6" set range=20000
cls
echo �������س�ʱ��ֵ
echo -----------------------------
echo ����1-32����ֵ������32
echo ��ֱ�ӻس�Ĭ��32
echo -----------------------------
set /p time= �������ְ��س���
cls
echo ���뵥������������߳���
echo -----------------------------
echo ����1-8����������������8
echo ��ֱ�ӻس�Ĭ��8
echo -----------------------------
set /p tasks= �������ְ��س���
cls
echo ��������·��
echo -----------------------------
echo ����Windows��Դ��������ַ����·��
echo ��ֱ�ӻس�Ĭ������D:\
echo -----------------------------
set /p dlpath= ����󰴻س���
cls
echo ���������ʼ���� 
pause


:work
::���ؽ�������
@set restart=stop 
hardseed --saveas-path %dlpath% --topics-range %range% --concurrent-tasks %tasks% --av-class %class% --timeout-download-picture %time% --proxy http://127.0.0.1:8087 socks5://127.0.0.1:1080 
echo -----------------------------
echo ��������ɣ��Ƿ�����µ���������?
echo -----------------------------
echo ��(������Y)	��(������N)
echo -----------------------------
echo      ������ֱ�ӻس��˳�
echo -----------------------------
set /p restart= ����󰴻س���
if "%restart%"=="Y" set restart=start
if "%restart%"=="y" set restart=start
if "%restart%"=="N" set restart=stop
if "%restart%"=="n" set restart=stop
goto %restart%
cls


:stop
cls
echo Ů����%dlpath%����Ŷ~��
pause
exit


:end
::ȷ�ϴ������
@set check=start
echo -----------------------------
echo ������ʹ��GoAgent��ǰ�ô���
echo �����޸�Դ������ǰ�ô����������
echo ������ Y ������
echo ���������� N �ٴμ�鲢����
echo -----------------------------
set /p check= ����󰴻س���
if "%check%"=="Y" set check=Setting
if "%check%"=="y" set check=Setting
if "%check%"=="N" set check=start
if "%check%"=="n" set check=start
goto %check%
cls



