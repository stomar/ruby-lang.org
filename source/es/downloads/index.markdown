---
layout: page
title: "Descargar Ruby"
date: 2011-08-07 16:35
comments: false
sharing: false
footer: false
---

Aquí puedes obtener las últimas distribuciones de Ruby en tu sabor favorito. La versión estable actual es 1.9.2-p0. Por favor asegúrate de leer la [licencia de Ruby](/es/about/license.txt).

### El código fuente de Ruby

Instalar desde los fuentes es una buena solución para cuando te sientes confiado con tu plataforma y puedas necesitar configuraciones específicas para tu entorno. También es una buena solución en el caso de que no existan paquetes ya armados para tu plataforma.

* [Ruby 1.9.2-p180](ftp://ftp.ruby-lang.org//pub/ruby/1.9/ruby-1.9.2-p180.tar.gz) (md5:&nbsp;0d6953820c9918820dd916e79f4bfde8) Versión estable (*recomendada*)
* [Snapshot estable](ftp://ftp.ruby-lang.org:21//pub/ruby/ruby-1.9-stable.tar.gz) Último snapshot estable. Suele ser más estable que el release más reciente.
* [Snapshot diario](ftp://ftp.ruby-lang.org/pub/ruby/snapshot.tar.gz) Último snapshot.

### Instalación con Ruby Version Manager

La opción preferida por la comunidad es la herramienta [RVM](https://rvm.beginrescueend.com/). Puede seguir las instrucciones sobre [cómo instalar Ruby con RVM](http://blog.malev.com.ar/2011/03/15/preparacion-de-un-entorno-ruby-on-rails-en-ubuntu-reloaded/).

### Ruby en Windows

Hay varias opciones para instalar Ruby en la plataforma Windows. La primer opción es usar [RubyInstaller](http://rubyinstaller.org,) un instalador que contiene los binarios compilados y sus librerías de soporte. La segunda opción es el descargar los binarios compilados. Si no estás seguro sobre cómo instalar Ruby, RubyInstaller puede ser tu mejor opción. (Además de Ruby, el one-click installer incluye un montón de bibliotecas).

* [Ruby 1.8.6-p398 RubyInstaller](http://rubyforge.org/frs/download.php/71066/rubyinstaller-1.8.6-p398.exe) (md5:&nbsp;233d6b3ddc4c61436b075b51254cd138) Stable version
* [Ruby 1.8.7-p334 RubyInstaller](http://rubyforge.org/frs/download.php/74293/rubyinstaller-1.8.7-p334.exe) (md5:&nbsp;64e30e63e16028282fcfe3ec57b561dc) Stable version (*recomendada*)
* [Ruby 1.9.1-p430 RubyInstaller](http://rubyforge.org/frs/download.php/72075/rubyinstaller-1.9.1-p430.exe) (md5:&nbsp;86ac589a955898c3163b161d81750a05) Stable version
* [Ruby 1.9.2-p180 RubyInstaller](http://rubyforge.org/frs/download.php/74298/rubyinstaller-1.9.2-p180.exe) (md5:&nbsp;2c94aef50987416d64c85a4ea0fa428b) Stable version (*recomendada*)
* [Ruby 1.8.7-p249 Binary](ftp://ftp.ruby-lang.org/pub/ruby/binaries/mswin32/ruby-1.8.7-p249-i386-mswin32.zip)
(md5:&nbsp;4fd37b0b4b21a042cae7f5f0a8daad16) Stable version
* [Ruby 1.9.1-p378 Binary](ftp://ftp.ruby-lang.org:21/pub/ruby/binaries/mswin32/ruby-1.9.1-p378-i386-mswin32.zip)
(md5:&nbsp;7d14a918cc8d243d3e2c409aff41f454) Stable version
* [Ruby 1.9.1-p129-x64 Binary](http://ftp.ruby-lang.org/pub/ruby/binaries/mswin32/ruby-1.9.1-p129-x64-mswin64_80.zip)
Versión estable rama 1.9 64 bits

### Ruby en Linux

Dependiendo de la distribución que utilices, hay varias maneras de instalar Ruby. La primer opción es simplemente bajar el código fuente y compilarlo a mano. Pero en algunas plataformas, hay gestores de paquetes que hacen la instalación de Ruby extremadamente sencilla.

Debian/Ubuntu:

    % sudo apt-get install ruby

Archlinux:

    # pacman -S ruby

Gentoo/Sabayon/Funtoo Linux:

    # emerge ruby

### Ruby en OS X

En OS X, Ruby ya viene instalado. De todas maneras, descargar e instalar desde el código
fuente es tan fácil y efectivo como las otras soluciones.
