MAKE=/usr/bin/make
INSTALL=/usr/bin/install

NAME=gtkshell
VERSION=3.6
PREFIX=/usr
ARDATADIR=/usr/share/antiright

VTE=1

CC=cc

DEFS=-DPACKAGE_STRING='"$(NAME) $(VERSION)"' -DPREFIX='"$(PREFIX)"' -DUSE_GTK -D_GNU_SOURCE -DARDATADIR='"$(ARDATADIR)"'

LDFLAGS=$(shell pkg-config --libs gtk+-2.0; pkg-config --libs vte)
LIBDIR=-L/usr/lib -L/usr/lib/X11
INCLUDE=$(shell pkg-config --cflags gtk+-2.0; pkg-config --cflags vte)
CFLAGS=-Wall $(INCLUDE)
