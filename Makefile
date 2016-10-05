
#*******************************************************************************
#    OPCIONES DE PROYECTO
#*******************************************************************************
# SALIDA
TARGET=libmatematicas


#*******************************************************************************
#    GESTIÓN DE DIRECTORIOS / OBJETOS
#*******************************************************************************
# DIRECTORIOS
SRCDIR=src
INCDIR=inc
OBJDIR=obj
BINDIR=bin

#ARCHIVOS
SRCS:=$(wildcard $(SRCDIR)/*.c)
OBJS:=$(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)


#*******************************************************************************
#    GESTIÓN DE LIBRERIAS
#*******************************************************************************
# DIRECTORIOS
 LIBDIR=modules/**
# INCDIR=inc
# OBJDIR=obj
# BINDIR=bin

# #ARCHIVOS
# SRCS:=$(wildcard $(SRCDIR)/*.c)
# OBJS:=$(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)



#*******************************************************************************
#    OPCIONES DE COMPILACION
#*******************************************************************************
# COMPILADOR
CC=gcc

# FLAGS DE COMPILACIÓN
CFLAGS=-Wall
CFLAGS+= -std=c90
CFLAGS+=-I./$(INCDIR)
CFLAGS+= -fPIC
    

    
$(BINDIR)/$(TARGET).so: $(OBJS)
	$(CC) -shared $< -o $@
    			# Note that the command is written assuming that
    			# the current directory is the subdirectory
    			# "goodies", not the top level subdirectory.
    			# Makepp cds into this directory before executing
    			# any commands from this makefile.
    

$(OBJS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@


.PHONY clean:
	rm -rf $(BINDIR)/*.so
	rm -rf $(OBJDIR)/*.o
