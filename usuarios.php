<?php

Class Usuario
{ 
        private $pdo;
        public $msgErro = "";

        public function conectar($nome, $host, $usuario, $senha)
        { 
                global $pdo;
  		global $msgErro;
                try
                {
                	$pdo = new PDO("mysql:dbname=".$nome.";host=".$host,$usuario,$senha);
                } catch (PDOException $e){
			$msgErro = $e->getMessage();
                }
        }

        public function cadastrar($nome, $ra, $telefone, $email, $senha )
        {
                global $pdo;
                // verificar se já existe o email cadastrado 
                $sql = $pdo->prepare("SELECT id_usuario FROM usuarios WHERE email = :e");
                $sql->bindValue(":e",$email);
                $sql->execute();
                if($sql->rowCount() > 0)
                {
                        return false;   // ja cadastrado
                }
                else{
                        // caso não, Cadastrar
                        $sql = $pdo->prepare("INSERT INTO usuarios (Nome, RA, Telefone, Email, Senha) VALUES (:n, :r, :t, :e, :s)");
		        $sql->bindValue(":n",$nome);    
                        $sql->bindValue(":r",$ra);
                        $sql->bindValue(":t",$telefone);
                        $sql->bindValue(":e",$email);
                        $sql->bindValue(":s",md5($senha));
        		$sql->execute();
			return true;
			}
        }

        public function logar($email, $senha)
        { 
                global $pdo;
		// verificar se o email e a senha estão cadastrados, se sim 
		$sql = $pdo->prepare("SELECT id_usuario FROM usuarios WHERE Email = :e AND Senha = :s");
		$sql->bindValue(":e",$email);
		$sql->bindValue(":s",md5($senha));
		$sql->execute();
		if($sql->rowCount() > 0)
		{
			// entrar no sestema
			$dado = $sql->fetch();
			session_start();
			$_SESSION['id_usuario'] = $dado['id_usuario'];
			return true; //login com sucesso 
		}
		else
		{
			return false; //não foi possivel logar 
		}
        }
}

?>

