@echo off
echo Abriendo servidor local para que la musica funcione...
echo.
echo Cuando veas "Serving", abre en el navegador:  http://localhost:8080
echo Cierra esta ventana para apagar el servidor.
echo.
python -m http.server 8080 2>nul || (
  echo Python no encontrado. Probando con Node...
  npx -y serve -p 8080 2>nul || (
    echo Instala Python o Node.js, o usa la extension "Live Server" en VS Code.
    pause
    exit /b 1
  )
)
pause
