""""def saludo():
    print("hola")
saludo()"""

"""def toto(valores):
    mayor = valores[0]
    for i in range(1, len(valores)):
        if valores[i] > mayor:
            mayor = valores[i]
    return mayor
Hitorial5 = (8520,9510,7530,3570,1590)
print(toto(Hitorial5))"""

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

