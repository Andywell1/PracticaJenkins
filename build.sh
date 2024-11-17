#!/bin/bash

SITE_DIR="simple_site"
CSS_DIR="$SITE_DIR/css"
W3CSS_URL="https://www.w3schools.com/w3css/4/w3.css"
W3CSS_FILE="$CSS_DIR/w3.css"

mkdir -p "$CSS_DIR"

if [ ! -f "$W3CSS_FILE " ]; then
echo "Descargfando w3.css"
curl -o "$W3CSS_FILE" "$W3CSS_URL"

if [ $? -ne 0 ]; then
echo "Error: No se pudo descargar la hoja de estilos W3.CSS."
exit 1

fi
else
echo "La hoja de estilos W3.CSS ya está descargada"
fi


cat <<EOL > "$SITE_DIR/index.html"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Mark Andrew Satian Guailla">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/w3.css"> 
    <title>Inicio</title>
</head>
<body>
    <header>
    <h1 class="w3-center">Este es el indice de la pagina web</h1>
    </header>
<p>Esta es la página principal</p>
<a href="página1.html">Ir a Página 1</a><br>
<a href="página2.html">Ir a Página 2</a>
</body>
</html>
EOL
cat <<EOL > "$SITE_DIR/página1.html"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Mark Andrew Satian Guailla">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 1</title>
    <link rel="stylesheet" href="css/w3.css"> 
</head>
<body>
    <header><h1 class="w3-center">Página1</h1></header>
<p>Esta es la página 1</p>
<a href="index.html">Volver al inicio</a><br>
<a href="página2.html">Ir a Página 2</a>
</body>
</html>
EOL
cat <<EOL > "$SITE_DIR/página2.html"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Mark Andrew Satian Guailla">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 2</title>
     <link rel="stylesheet" href="css/w3.css"> 
</head>
<body>
    <header><h1 class="w3-center">Página2</h1></header>
<p>Esta es la página 1</p>
<a href="index.html">Volver al inicio</a><br>
<a href="página1.html">Ir a Página 1</a>
</body>
</html>
EOL

echo "Sitio web creado en el directorio '$SITE_DIR'."