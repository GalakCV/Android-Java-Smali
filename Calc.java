package com.exemplo;

/**
 * Classe simples usada para comparar código Java com código Smali.
 */
public class Calculadora {

    private int contador;

    public Calculadora() {
        contador = 0;
    }

    public int somar(int primeiro, int segundo) {
        contador++;
        return primeiro + segundo;
    }

    public int dobroSePositivo(int numero) {
        if (numero <= 0) {
            return 0;
        }

        return numero * 2;
    }

    public boolean maiorDeIdade(int idade) {
        return idade >= 18;
    }

    public int getContador() {
        return contador;
    }
}
