VTE=1
VERSION=3.6
PREFIX=/usr
INCLUDE= -I/usr/include/gtk-2.0 -I/usr/lib/gtk-2.0/include -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/X11
LIBDIR= -L/usr/lib/X11
DEFS= -DPACKAGE_STRING='"AntiRight_3.6"' -DPREFIX='"/usr"' -DUSE_GTK -DHAVE_VTE -D_GNU_SOURCE -DARDATADIR='"/usr/share/antiright"'
MAKE=/usr/bin/make
INSTALL=/usr/bin/install
CFLAGS= -Wall
CC=cc
LDFLAGS=-lvte -lXft -lgtk-x11-2.0 -lXrender -lfontconfig -lfreetype -lz -lX11 -latk-1.0 -lcairo -lpango-1.0 -lgobject-2.0 -lgmodule-2.0 -ldl -lglib-2.0 
