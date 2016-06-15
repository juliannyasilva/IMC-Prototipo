package br.ufg.inf.imc.controller;

/**
 *
 * @author JuliannyAS
 */
public class ModelImc {

    public static String CalcularImc(float altura, float peso, String genero) {

        String StrResultado = "";
        float resultado = peso / (altura * altura);

        if (resultado <= 17) {
            StrResultado = "IMC = " + resultado + "--> Muito abaixo do peso";

        } else if (resultado > 17 && resultado <= 18.5) {
            StrResultado = "IMC = " + resultado + "--> Muito abaixo do peso!";

        } else if (resultado > 18.5 && resultado <= 24.99) {
            StrResultado = "IMC = " + resultado + "--> Peso normal";

        } else if (resultado >= 25 && resultado <= 29.99) {
            StrResultado = "IMC = " + resultado + "--> Acima do peso!";

        } else if (resultado >= 30 && resultado <= 34.99) {
            StrResultado = "IMC = " + resultado + "--> Obesidade I!";

        } else if (resultado >= 35 && resultado <= 39.99) {
            StrResultado = "IMC= " + resultado + "--> Obesidade II - severa!";

        } else if (resultado >= 40) {
            StrResultado = "IMC= " + resultado + "--> Obesidade III - morbida!";
        }

        return StrResultado;
    }
}
