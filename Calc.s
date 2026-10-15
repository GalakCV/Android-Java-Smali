.class public Lcom/exemplo/Calculadora;
.super Ljava/lang/Object;
.source "Calculadora.java"


# Campo privado: private int contador;
.field private contador:I


# Construtor: public Calculadora()
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0
    iput v0, p0, Lcom/exemplo/Calculadora;->contador:I

    return-void
.end method


# public int somar(int primeiro, int segundo)
.method public somar(II)I
    .locals 2

    # contador++
    iget v0, p0, Lcom/exemplo/Calculadora;->contador:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/exemplo/Calculadora;->contador:I

    # return primeiro + segundo;
    add-int v1, p1, p2
    return v1
.end method


# public int dobroSePositivo(int numero)
.method public dobroSePositivo(I)I
    .locals 1

    # if (numero <= 0)
    if-lez p1, :retornar_zero

    # return numero * 2;
    mul-int/lit8 v0, p1, 0x2
    return v0

    :retornar_zero
    const/4 v0, 0x0
    return v0
.end method


# public boolean maiorDeIdade(int idade)
.method public maiorDeIdade(I)Z
    .locals 2

    # Valor decimal 18
    const/16 v0, 0x12
    if-lt p1, v0, :menor_de_idade

    const/4 v1, 0x1
    return v1

    :menor_de_idade
    const/4 v1, 0x0
    return v1
.end method


# public int getContador()
.method public getContador()I
    .locals 1

    iget v0, p0, Lcom/exemplo/Calculadora;->contador:I
    return v0
.end method
