<?php
    try {
        $pdo = new PDO("mysql:dbname=php_comentarios;host=localhost", "root", "");
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        echo "ERRO: ".$e->getMessage();
        exit;
    }

    if(isset($_POST['nome']) && !empty($_POST['nome'])) {
        $nome = $_POST['nome'];
        $mensagem = $_POST['mensagem'];

        $sql = $pdo->prepare("INSERT INTO mensagens SET nome = :nome, mensagem = :mensagem, data_msg = NOW()");
        $sql->bindValue("nome", $nome);
        $sql->bindValue("mensagem", $mensagem);
        $sql->execute();
    }

?>

<fieldset>
    <form method="POST">
        Nome:<br/>
        <input type="text" name="nome"><br/><br/>

        Mensagem:<br/>
        <textarea name="mensagem" cols="30" rows="10"></textarea><br/><br/>

        <input type="submit" value="Enviar">
    </form>
</fieldset>
<br/><br/>
<?php
    $sql = "SELECT * FROM mensagens ORDER by data_msg DESC";
    $sql = $pdo->query($sql);
    if($sql->rowCount() > 0) {
        foreach($sql->fetchAll() as $mensagem):
            ?>
                <strong><?php echo $mensagem['nome']; ?></strong><br/>
                <?php echo $mensagem['mensagem']; ?>
                <hr/>
            <?php
        endforeach;
    } else {
        echo "Não há mensagens";
    }
?>