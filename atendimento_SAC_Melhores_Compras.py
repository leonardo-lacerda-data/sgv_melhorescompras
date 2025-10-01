nota = input("Insira a nota de 0 a 100 par avaliar seu atendimento: ")

nota_int = int(nota)

if nota_int >= 90:
    print("Satisfeito")
elif nota_int >= 70:
    print("neutro")
else:
    print("Insatisfeito")
