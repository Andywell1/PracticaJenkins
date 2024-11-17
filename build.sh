#!/bin/bash

SITE_DIR="mi_sitio_web"

mkdir -p "$SITE_DIR/css"

cat <<EOL > "$SITE_DIR/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Mark Andrew Satian Guailla">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
</head>
<body>
    <header><h1>Este es el indice de la pagina web</h1></header>
<p>Esta es la página principal</p>
<a href="página1.html">Ir a Página 1</a><br>
<a href="página2.html">Ir a Página 2</a>
</body>
</html>
EOL
cat <<EOL > "$SITE_DIR/página1.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Mark Andrew Satian Guailla">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 1</title>
</head>
<body>
    <header><h1>Página1</h1></header>
<p>Esta es la página 1</p>
<a href="index.html">Volver al inicio</a><br>
<a href="página2.html">Ir a Página 2</a>
</body>
</html>
EOL
cat <<EOL > "$SITE_DIR/página2.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Mark Andrew Satian Guailla">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 2</title>
</head>
<body>
    <header><h1>Página2</h1></header>
<p>Esta es la página 1</p>
<a href="index.html">Volver al inicio</a><br>
<a href="página1.html">Ir a Página 1</a>
</body>
</html>
EOL
