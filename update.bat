:: shizapret

@echo off
cd /d "%~dp0"

:: external calls
if "%~1"=="list" (
    call :list
    exit /b
)

if "%~1"=="cf" (
    call :cf
    exit /b
)

if "%~1"=="bin" (
    call :bin
    exit /b
)

if "%~1"=="et" (
    call :et
    exit /b
)

:menu
cls
echo 0. Everything
echo 1. IP Sets
echo 2. List
echo 3. Bin Folder
set /p upd=Update (0-3): 

if "%upd%"=="0" goto et
if "%upd%"=="1" goto cf
if "%upd%"=="2" goto list
if "%upd%"=="3" goto bin

:cf
cls
echo Downloading ipset-cloudflare.txt...
powershell -Command "Start-BitsTransfer -Source https://raw.githubusercontent.com/V3nilla/IPSets-For-Bypass-in-Russia/refs/heads/main/ipset-cloudflare.txt -Destination lists"
exit /b

:bin
cls
echo Downloading winws.exe...
powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/winws.exe -Destination bin"
cls
echo Downloading WinDivert.dll...
powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/WinDivert.dll -Destination bin"
cls
echo Downloading WinDivert64.sys...
powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/WinDivert64.sys -Destination bin"
cls
echo Downloading cygwin1.dll...
powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/cygwin1.dll -Destination bin"
exit /b

:list
cls
echo Downloading list-general.txt...
powershell -Command "Start-BitsTransfer -Source https://raw.githubusercontent.com/bol-van/rulist/refs/heads/main/reestr_hostname.txt -Destination lists/list-general.txt"
echo discord.app>> lists/list-general.txt
echo discord.co>> lists/list-general.txt
echo discord.com>> lists/list-general.txt
echo discord.design>> lists/list-general.txt
echo discord.dev>> lists/list-general.txt
echo discord.gift>> lists/list-general.txt
echo discord.gifts>> lists/list-general.txt
echo discord.gg>> lists/list-general.txt
echo discord.media>> lists/list-general.txt
echo discord.new>> lists/list-general.txt
echo discord.store>> lists/list-general.txt
echo discord.status>> lists/list-general.txt
echo discord-activities.com>> lists/list-general.txt
echo discordactivities.com>> lists/list-general.txt
echo discordapp.com>> lists/list-general.txt
echo discordapp.net>> lists/list-general.txt
echo discordcdn.com>> lists/list-general.txt
echo discordmerch.com>> lists/list-general.txt
echo discordpartygames.com>> lists/list-general.txt
echo discordsays.com>> lists/list-general.txt
echo discordsez.com>> lists/list-general.txt
echo ggpht.com>> lists/list-general.txt
echo googlevideo.com>> lists/list-general.txt
echo jnn-pa.googleapis.com>> lists/list-general.txt
echo stable.dl2.discordapp.net>> lists/list-general.txt
echo wide-youtube.l.google.com>> lists/list-general.txt
echo youtube-nocookie.com>> lists/list-general.txt
echo youtube-ui.l.google.com>> lists/list-general.txt
echo youtube.com>> lists/list-general.txt
echo youtubeembeddedplayer.googleapis.com>> lists/list-general.txt
echo youtubekids.com>> lists/list-general.txt
echo youtubei.googleapis.com>> lists/list-general.txt
echo youtu.be>> lists/list-general.txt
echo yt-video-upload.l.google.com>> lists/list-general.txt
echo ytimg.com>> lists/list-general.txt
echo ytimg.l.google.com>> lists/list-general.txt
echo frankerfacez.com>> lists/list-general.txt
echo ffzap.com>> lists/list-general.txt
echo betterttv.net>> lists/list-general.txt
echo 7tv.app>> lists/list-general.txt
echo 7tv.io>> lists/list-general.txt
echo signin.aws.amazon.com>> lists/list-general.txt
echo cloudfront.net>> lists/list-general.txt
echo s3.amazonaws.com>> lists/list-general.txt
echo awsstatic.com>> lists/list-general.txt
echo console.aws.a2z.com>> lists/list-general.txt
echo amazonaws.com>> lists/list-general.txt
echo awsapps.com>> lists/list-general.txt
echo sso.amazonaws.com>> lists/list-general.txt
echo cloudfront.net>> lists/list-general.txt
echo deadbydaylight.com>> lists/list-general.txt
echo deadbydaylight.fandom.com>> lists/list-general.txt
echo argotunnel.com>> lists/list-general.txt
echo cfargotunnel.com>> lists/list-general.txt
echo cfl.re>> lists/list-general.txt
echo cloudflare-dns.com>> lists/list-general.txt
echo cloudflare-ech.com>> lists/list-general.txt
echo cloudflare-esni.com>> lists/list-general.txt
echo cloudflare-gateway.com>> lists/list-general.txt
echo cloudflare-quic.com>> lists/list-general.txt
echo cloudflare.com>> lists/list-general.txt
echo cloudflare.net>> lists/list-general.txt
echo cloudflare.tv>> lists/list-general.txt
echo cloudflareaccess.com>> lists/list-general.txt
echo cloudflareapps.com>> lists/list-general.txt
echo cloudflarebolt.com>> lists/list-general.txt
echo cloudflareclient.com>> lists/list-general.txt
echo cloudflareinsights.com>> lists/list-general.txt
echo cloudflareok.com>> lists/list-general.txt
echo cloudflarepartners.com>> lists/list-general.txt
echo cloudflareportal.com>> lists/list-general.txt
echo cloudflarepreview.com>> lists/list-general.txt
echo cloudflareresolve.com>> lists/list-general.txt
echo cloudflaressl.com>> lists/list-general.txt
echo cloudflarestatus.com>> lists/list-general.txt
echo cloudflarestorage.com>> lists/list-general.txt
echo cloudflarestream.com>> lists/list-general.txt
echo cloudflaretest.com>> lists/list-general.txt
echo cloudflarewarp.com>> lists/list-general.txt
echo every1dns.net>> lists/list-general.txt
echo isbgpsafeyet.com>> lists/list-general.txt
echo one.one.one.one>> lists/list-general.txt
echo one.one.one>> lists/list-general.txt
echo pacloudflare.com>> lists/list-general.txt
echo pages.dev>> lists/list-general.txt
echo trycloudflare.com>> lists/list-general.txt
echo videodelivery.net>> lists/list-general.txt
echo warp.plus>> lists/list-general.txt
echo workers.dev>> lists/list-general.txt
echo yt4.ggpht.com>> lists/list-general.txt
echo yt3.googleusercontent.com>> lists/list-general.txt
exit /b

:et
if exist "params/Updater/EverythingWinws1" (
    cls
    echo Downloading winws.exe...
    powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/winws.exe -Destination bin"
)
if exist "params/Updater/EverythingWinDivert1" (
    cls
    echo Downloading WinDivert.dll...
    powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/WinDivert.dll -Destination bin"
)
if exist "params/Updater/EverythingWinDivert641" (
    cls
    echo Downloading WinDivert64.sys...
    powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/WinDivert64.sys -Destination bin"
)
if exist "params/Updater/EverythingCygwin11" (
    cls
    echo Downloading cygwin1.dll...
    powershell -Command "Start-BitsTransfer -Source https://github.com/bol-van/zapret-win-bundle/raw/refs/heads/master/zapret-winws/cygwin1.dll -Destination bin"
)
if exist "params/Updater/EverythingIPSet1" (
    cls
    echo Downloading ipset-cloudflare.txt...
    powershell -Command "Start-BitsTransfer -Source https://raw.githubusercontent.com/V3nilla/IPSets-For-Bypass-in-Russia/refs/heads/main/ipset-cloudflare.txt -Destination lists"
)
if exist "params/Updater/EverythingList1" (
    cls
    echo Downloading list-general.txt...
    powershell -Command "Start-BitsTransfer -Source https://raw.githubusercontent.com/bol-van/rulist/refs/heads/main/reestr_hostname.txt -Destination lists/list-general.txt"
    echo discord.app>> lists/list-general.txt
    echo discord.co>> lists/list-general.txt
    echo discord.com>> lists/list-general.txt
    echo discord.design>> lists/list-general.txt
    echo discord.dev>> lists/list-general.txt
    echo discord.gift>> lists/list-general.txt
    echo discord.gifts>> lists/list-general.txt
    echo discord.gg>> lists/list-general.txt
    echo discord.media>> lists/list-general.txt
    echo discord.new>> lists/list-general.txt
    echo discord.store>> lists/list-general.txt
    echo discord.status>> lists/list-general.txt
    echo discord-activities.com>> lists/list-general.txt
    echo discordactivities.com>> lists/list-general.txt
    echo discordapp.com>> lists/list-general.txt
    echo discordapp.net>> lists/list-general.txt
    echo discordcdn.com>> lists/list-general.txt
    echo discordmerch.com>> lists/list-general.txt
    echo discordpartygames.com>> lists/list-general.txt
    echo discordsays.com>> lists/list-general.txt
    echo discordsez.com>> lists/list-general.txt
    echo ggpht.com>> lists/list-general.txt
    echo googlevideo.com>> lists/list-general.txt
    echo jnn-pa.googleapis.com>> lists/list-general.txt
    echo stable.dl2.discordapp.net>> lists/list-general.txt
    echo wide-youtube.l.google.com>> lists/list-general.txt
    echo youtube-nocookie.com>> lists/list-general.txt
    echo youtube-ui.l.google.com>> lists/list-general.txt
    echo youtube.com>> lists/list-general.txt
    echo youtubeembeddedplayer.googleapis.com>> lists/list-general.txt
    echo youtubekids.com>> lists/list-general.txt
    echo youtubei.googleapis.com>> lists/list-general.txt
    echo youtu.be>> lists/list-general.txt
    echo yt-video-upload.l.google.com>> lists/list-general.txt
    echo ytimg.com>> lists/list-general.txt
    echo ytimg.l.google.com>> lists/list-general.txt
    echo frankerfacez.com>> lists/list-general.txt
    echo ffzap.com>> lists/list-general.txt
    echo betterttv.net>> lists/list-general.txt
    echo 7tv.app>> lists/list-general.txt
    echo 7tv.io>> lists/list-general.txt
    echo signin.aws.amazon.com>> lists/list-general.txt
    echo cloudfront.net>> lists/list-general.txt
    echo s3.amazonaws.com>> lists/list-general.txt
    echo awsstatic.com>> lists/list-general.txt
    echo console.aws.a2z.com>> lists/list-general.txt
    echo amazonaws.com>> lists/list-general.txt
    echo awsapps.com>> lists/list-general.txt
    echo sso.amazonaws.com>> lists/list-general.txt
    echo cloudfront.net>> lists/list-general.txt
    echo deadbydaylight.com>> lists/list-general.txt
    echo deadbydaylight.fandom.com>> lists/list-general.txt
    echo argotunnel.com>> lists/list-general.txt
    echo cfargotunnel.com>> lists/list-general.txt
    echo cfl.re>> lists/list-general.txt
    echo cloudflare-dns.com>> lists/list-general.txt
    echo cloudflare-ech.com>> lists/list-general.txt
    echo cloudflare-esni.com>> lists/list-general.txt
    echo cloudflare-gateway.com>> lists/list-general.txt
    echo cloudflare-quic.com>> lists/list-general.txt
    echo cloudflare.com>> lists/list-general.txt
    echo cloudflare.net>> lists/list-general.txt
    echo cloudflare.tv>> lists/list-general.txt
    echo cloudflareaccess.com>> lists/list-general.txt
    echo cloudflareapps.com>> lists/list-general.txt
    echo cloudflarebolt.com>> lists/list-general.txt
    echo cloudflareclient.com>> lists/list-general.txt
    echo cloudflareinsights.com>> lists/list-general.txt
    echo cloudflareok.com>> lists/list-general.txt
    echo cloudflarepartners.com>> lists/list-general.txt
    echo cloudflareportal.com>> lists/list-general.txt
    echo cloudflarepreview.com>> lists/list-general.txt
    echo cloudflareresolve.com>> lists/list-general.txt
    echo cloudflaressl.com>> lists/list-general.txt
    echo cloudflarestatus.com>> lists/list-general.txt
    echo cloudflarestorage.com>> lists/list-general.txt
    echo cloudflarestream.com>> lists/list-general.txt
    echo cloudflaretest.com>> lists/list-general.txt
    echo cloudflarewarp.com>> lists/list-general.txt
    echo every1dns.net>> lists/list-general.txt
    echo isbgpsafeyet.com>> lists/list-general.txt
    echo one.one.one.one>> lists/list-general.txt
    echo one.one.one>> lists/list-general.txt
    echo pacloudflare.com>> lists/list-general.txt
    echo pages.dev>> lists/list-general.txt
    echo trycloudflare.com>> lists/list-general.txt
    echo videodelivery.net>> lists/list-general.txt
    echo warp.plus>> lists/list-general.txt
    echo workers.dev>> lists/list-general.txt
    echo yt4.ggpht.com>> lists/list-general.txt
    echo yt3.googleusercontent.com>> lists/list-general.txt
)
exit /b
