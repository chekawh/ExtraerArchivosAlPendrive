@echo off

IF NOT EXIST ".\archivospc" MD ".\archivospc"
cd .\archivospc

REM Copiar archivos desde Escritorio
for /R "%USERPROFILE%\Desktop" %%x in (*.png *.jpg *.pdf) do copy "%%x" ".\"

REM Copiar archivos desde Documentos
for /R "%USERPROFILE%\Documents" %%x in (*.png *.jpg *.pdf) do copy "%%x" ".\"

REM Copiar archivos desde Imágenes
for /R "%USERPROFILE%\Pictures" %%x in (*.png *.jpg *.pdf) do copy "%%x" ".\"

REM Copiar archivos desde Descargas
for /R "%USERPROFILE%\Downloads" %%x in (*.png *.jpg *.pdf) do copy "%%x" ".\"

REM Generar el archivo "filepath.txt" con los nombres de los archivos encontrados
for /f "tokens=*" %%A in ('dir /b /s /a-d') do (
    find "%%~A" >>filepath.txt
)

exit
