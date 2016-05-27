<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <title>IMC</title>
    </head>
    <body>
        <nav class="navbar navbar-default" style="background: rgb(148, 72, 167) none repeat scroll 0% 0%;">
            <div class="container-fluid">
                <div class="text-center">
                    <h1 style="color: #fff;">CALCULO DE INDICE DE MASSA CORPORAL (IMC)</h1>
                </div>
            </div>
        </nav>
        <div class="container text-center">	
            <div class='row'>
                <br>
                <br>
                <div class='col-md-2'></div>
                <div class='col-md-8'>
                    <form>
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1">Altura:</span>
                            <input name="altura" type="text" class="form-control" placeholder="Exemplo...: 1,73, 1.87" aria-describedby="basic-addon1">
                        </div>
                        <br>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1">Peso: </span>
                            <input name="peso" type="text" class="form-control" placeholder="Exemplo...: 86, 45.7" aria-describedby="basic-addon1">
                        </div>
                        <br>
                        <br>
                        <div class='text-center'>
                            <button class="btn btn-default" type="submit" style="background: rgb(148, 72, 167); color: #fff;">Limpar Dados</button>
                            <a class="waves-effect waves-light btn" onclick="button1()"><button name="calcula" value="Button 1" onclick="calcula" type="button hidden" class="btn btn-default" style="background: rgb(148, 72, 167); color: #fff;">Calcular IMC</button></a>
                            
                            <%
                                if (request.getParameter("calcula") != null) {

                                    String alturaStr = request.getParameter("altura");
                                    String pesoStr = request.getParameter("peso");

                                    int altura = alturaStr == null ? 0 : Integer.parseInt(alturaStr);
                                    int peso = pesoStr == null ? 0 : Integer.parseInt(pesoStr);

                                    if (peso != 0 && altura != 0) {

                                        int resultado = peso / (altura * altura);

                                        if (resultado <= 17) {
                                            out.print("IMC = " + resultado + "--> Muito abaixo do peso");

                                        } else if (resultado > 17 && resultado <= 18.49) {
                                            out.print("IMC = " + resultado + "--> Muito abaixo do peso");

                                        } else if (resultado >= 18.5 && resultado <= 24.99) {
                                            out.print("IMC = " + resultado + "--> Peso normal");

                                        } else if (resultado >= 25 && resultado <= 29.99) {
                                            out.print("IMC = " + resultado + "--> Acima do peso");

                                        } else if (resultado >= 30 && resultado <= 34.99) {
                                            out.print("IMC = " + resultado + "--> Obesidade I");

                                        } else if (resultado >= 35 && resultado <= 39.99) {
                                            out.print("IMC= " + resultado + "--> nObesidade II - severa");

                                        } else if (resultado >= 40) {
                                            out.print("IMC= " + resultado + "--> Obesidade III - mÃ³rbida");
                                        }
                                    } else {
                                        out.print("Existem campos em branco");
                                    }
                                }
                            %>												
                        </div>
                    </form>
                </div>
                <div class='col-md-2'></div>
            </div>
        </div>	
        <div class='container text-right'><h6>By: Julianny Alves</h6></div>
    </body>
</html>
