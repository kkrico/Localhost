<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="iso-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <script src="https://code.jquery.com/jquery-3.1.1.js" integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h1>Exemplo de dados para envio</h1>
                <table class="table table-responsive table-bordered">
                    <caption></caption>
                    <thead>
                        <tr>
                            <th>Ação</th>
                            <th>Header 1</th>
                            <th>Header 2</th>
                            <th>Header 3</th>
                            <th>Header 4</th>
                            <th>Header 5</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>
                                <input type="checkbox" />
                            </th>
                            <td>Data 1</td>
                            <td>Data 2</td>
                            <td>Data 3</td>
                            <td>Data 4</td>
                            <td>Data 5</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="envioModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal de Envio</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="autenticacaoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <form action="autenticacao.asp" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modal de Autenticação</h4>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label class="control-label" for="Usuario">Usuário</label>
                            <input type="text" name="Usuario" value="" placeholder="Usuario" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Senha">Senha</label>
                            <input type="password" name="Senha" value="" placeholder="Senha" class="form-control" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-default btn-primary" value="Enviar">
                    </div>
                </div>
            </form>

        </div>
    </div>
</body>

<script>

        $(function(){
            $(document).on("click", "input[type=checkbox]", checkarAutenticacao);
        });


        var checkarAutenticacao = function() {
            
            var success = function(retorno) {
                
                if (retorno.resultado.sucesso) {
                    $("#envioModal").modal();
                } else {
                    $("#autenticacaoModal").modal();
                }

            };
            
    
            
            $.ajax({
                dataType: "json",
                url: "ChecarAutenticacao.asp",
                success: success
            });
        };
</script>
</html>
