

Historial5 = (8520,9510,7530,3570,1590)
def toto(valores):
    valor_maximo = 0
    for numero in valores:
        if numero > valor_maximo:
            valor_maximo = numero
        else:
            pass
    return valor_maximo
print(toto(Historial5))

