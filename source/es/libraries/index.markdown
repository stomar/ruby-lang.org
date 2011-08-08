---
layout: page
title: "Librerías"
date: 2011-08-07 16:35
comments: false
sharing: false
footer: false
---
Existen fascinantes, útiles y variadas bibliotecas para Ruby, muchas
disponibles como un conveniente archivo _gem_. Otras bibliotecas son liberadas
como directorios comprimidos (.zip o .tar.gz) de código fuente. Veamos cómo
encontrar e instalar bibliotecas para que puedas utilizarlas.

### <a name="finding-libraries">Encontrando bibliotecas

[RubyGems](https://rubygems.org/) es la herramienta preferida por la comunidad
para distribuir código. Por lo general, las gemas tienen links hacia la
documentación e información sobre los desarrolladores, así que es un buen punto
de partida para comenzar a explorar el mundo Ruby.

Muchos proyectos utilizan [GitHub](https://github.com/) para albergar sus
repositorios. Puedes explorar el site para conocer más sobre cada librería y
para colaborar.

### <a name="using-rubygems"></a>RubyGems

Mientras que el instalador de Windows incluye RubyGems, muchos sistemas
operativos no lo hacen. Aprende cómo instalar RubyGems aquí debajo si estos
comandos no te funcionan.

#### Buscar gemas

El comando `search` puede ser usado para buscar gemas con determinado nombre.
Para buscar la palabra "html" en el nombre de una gema:

    $ gem search html --remote

    *** REMOTE GEMS ***

    html-sample (1.0, 1.1)
      A sample Ruby gem, just to illustrate how RubyGems works.

#### Instalación de gemas

Una vez que sabes qué gema te gustaría instalar:

    $ gem install html-sample

Incluso puedes instalar una versión específica de la biblioteca utilizando la
opción `--version`.

    $ gem install html-sample --version 1.0

#### Listado de gemas

Para obtener una lista completa de las gemas remotas:

    $ gem list --remote

Para listar sólo las gemas que tienes instaladas, quita la opción --remote.

    $ gem list

Para obtener más información sobre el uso de RubyGems, estudia [la
documentación oficial](http://docs.rubygems.org/) que incluye ejemplos de cómo
usar gemas en tus programas Ruby.

### <a name="installing-rubygems"></a>Cómo instalar RubyGems

Para instalar RubyGems, sigue las instrucciones que se detallan en
[https://rubygems.org/pages/download](https://rubygems.org/pages/download).
