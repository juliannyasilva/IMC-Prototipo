<%-- 
    Document   : index_imc
    Created on : 15/06/2016, 11:44:06
    Author     : JuliannyAS
--%>

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
                            <input name="altura" id="altura" type="text" class="form-control" placeholder="Exemplo...: 1,73, 1.87" aria-describedby="basic-addon1">
                        </div>
                        <br>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1">Peso: </span>
                            <input name="peso" id="peso" type="text" class="form-control" placeholder="Exemplo...: 86, 45.7" aria-describedby="basic-addon1">
                        </div>
                        <br>
                        <br>
                       <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1">Peso: </span>
                            <input name="peso" id="genero" type="text" class="form-control" placeholder="Exemplo...: 86, 45.7" aria-describedby="basic-addon1">
                        </div>
                        <br>
                        <br>
                        <div class='text-center'>
                            <button class="btn btn-default" type="submit" style="background: rgb(148, 72, 167); color: #fff;">Limpar Dados</button>
                            <a class="waves-effect waves-light btn" onclick="button1()">
                                <button name="calcula" value="Button 1" onclick="calcula" type="button hidden" class="btn btn-default" style="background: rgb(148, 72, 167); color: #fff;">Calcular IMC</button></a>											
                        </div>
                        <div>Resultado: ${resultado}</div>
                    </form>
                </div>
                <div class='col-md-2'></div>
            </div>
        </div>	
    </body>
</html>