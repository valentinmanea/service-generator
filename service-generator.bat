rmdir service-generator\output\api /Q /S
mkdir service-generator\output
mkdir service-generator\output\api 
rem First copy existing files to service-generator, in order to preserve existing code changes performed in frontend. 
rem (e.g. if we have a new method added to the service, the tool keeps it after regenerates the service)
xcopy src\app\api\** service-generator\output\api /E /Y
cd service-generator
call  npm start
xcopy src\app\api\** service-generator\output\api /E /Y
timeout /T 10

xcopy output\api\** ..\src\app\api /E /Y
rmdir output\api /Q /S
