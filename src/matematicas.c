#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "matematicas.h"

int16_t FuncionSuma(int16_t numero){
  int16_t valor=0;

  valor=numero+15;

  return valor;
}

int16_t FuncionResta(int16_t numero){
  int16_t valor=0;

  valor=numero-5;

  return valor;
}

int16_t FuncionMultiplica(int16_t numero){
  int16_t valor=0;

  valor=numero*3;

  return valor;
}
