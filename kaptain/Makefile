QTDIR		= /usr
MOC		= /usr/bin/moc
INCLUDES = -I/usr/include/qt
CXXFLAGS = -Wall -O2 -g0 $(INCLUDES)
CXX      = gcc
LDFLAGS	= -L$(QTDIR)/lib -lqt -lstdc++ -o kaptain
YACC     = /usr/bin/bison -d
LEX      = /usr/bin/flex
SOURCES  = main.cpp \
	process.cpp \
	grammar.cpp \
	tools.cpp \
	kaptain.cpp \
	moc_kaptain.cpp \
	communication.cpp \
	moc_communication.cpp \
	intermediate.cpp \
	lexer.cpp \
	parser.cpp

OBJECTS	= $(SOURCES:.cpp=.o)
DEPENDS	= $(SOURCES:.cpp=.d)

%.d: %.cpp
	$(SHELL) -ec '$(CXX) -MM $(CXXFLAGS) $< \
	| sed '\''s/\($*\)\.o[ :]*/\1.o $@ : /g'\'' > $@; [ -s $@ ] || rm -f $@'

moc_%.cpp: %.h
	$(MOC) $*.h -o moc_$*.cpp

all : $(OBJECTS)
	$(CXX) $(LDFLAGS) $(OBJECTS)

parser.cpp : parser.ypp
	$(YACC) parser.ypp
	mv parser.tab.cpp parser.cpp
	mv parser.tab.hpp parser.h

lexer.cpp : lexer.lpp
	$(LEX) lexer.lpp
	mv lex.yy.c lexer.cpp

clean : 
	rm -f $(OBJECTS) kaptain moc_*.cpp *~

tidy: clean
	rm -f kaptain parser.cpp lexer.cpp *.d

include $(DEPENDS)
       