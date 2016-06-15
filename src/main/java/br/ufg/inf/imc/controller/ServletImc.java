package br.ufg.inf.imc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletImc extends HttpServlet {

    private String valor(HttpServletRequest req, String param, String padrao) {
        
        String result = req.getParameter(param);
        if (result == null) {
            result = padrao;
        }
        return result;
    }

    private int toInt(
            HttpServletRequest req,
            String param,
            String padrao) {
        return Integer.parseInt(valor(req, param, padrao));
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int altura = toInt(req, "altura", "0");
        String genero = valor(req, "genero", "");
        int peso = toInt(req, "peso", "0");

        String resultadoCalculo = ModelImc.CalcularImc(altura, peso, genero);

        req.setAttribute("resultado",resultadoCalculo);

        req.getRequestDispatcher("index_imc.jsp").forward(req, resp);
    }
}
