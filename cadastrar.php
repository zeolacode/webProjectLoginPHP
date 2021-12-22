<html lang="pt-br">
<head>
        <meta charset="utf-8"/>
        <title>Projeto Login</title>
        <link rel="stylesheet" href="estilo.css">
</head>
<body>
<div id="corpo-form-cad">
        <h1>Cadastrar</h1>
        <form method="POST">
		<input type="text" name="nome" placeholder="Nome Completo" maxlength="30">
                <input type="text" name="ra" placeholder="RA" maxlength="7">
                <input type="text" name="telefone" placeholder="Telefone" maxlength="30">
                <input type="email" name="email" placeholder="Usuário (e-mail)" maxlength="40">
                <input type="password" name="senha" placeholder="Senha" maxlength="15">
                <input type="password" name="confSenha" placeholder="Confirmar Senha" maxlength="15">
                <input type="submit" value="CADASTRAR">
        </form>
</div>
<?php
        require_once 'usuarios.php';
        $u = new Usuario;

?>
<?php
//verificar se a pessoa clicou no botao 
if(isset($_POST['nome']))
{ 
        $nome = addslashes($_POST['nome']);
	$ra = addslashes($_POST['ra']);
	$telefone = addslashes($_POST['telefone']);
	$email = addslashes($_POST['email']);
	$senha = addslashes($_POST['senha']);
	$confirmarSenha = addslashes($_POST['confSenha']);
	//verificar se esta tudo preenchido 
	if(!empty($nome) && !empty($ra) && !empty($telefone) && !empty($email) && !empty($senha) && !empty($confirmarSenha))
	{
//		echo "lindo";
		$u->conectar("projeto_login","192.168.15.33", "root", "mysqllt38c");
		if($u->msgErro == "")
		{
			if($senha == $confirmarSenha)
			{
				if($u->cadastrar($nome, $ra, $telefone, $email, $senha)){
                                        ?>
                                        <div class="msg-sucesso">
                                                Cadastrado com sucesso!
                                        </div>
                                        <?php

				}else{
					?>
					<div class="msg-erro">
						Email já cadastrado!
					</div>
					<?php
					}
		         }else{
                                ?>
                                <div class="msg-erro">
                	                 Senha e confirmar senha não correpondem!  
                                </div>
                                 <?php				
				}
		}else{
                        ?>
                        <div>
        	                 <?php echo "Erro: ".$u->msgErro;?>
                        </div>
                        <?php		

			}
	}else{
		?>
		<div class="msg-erro">
			Preencha todos os campos!
		</div>
		<?php
	}
}
?>
</body>
</html>
