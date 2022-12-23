<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Книжули</title>
</head>
<body>
<h1>${product.title?if_exists}</h1><hr>
<h4></h4>
<#list images as img>
<img src="/images/${img.id?if_exists}" height="200px"/><br><br>
</#list>
<b>Автор: </b>${product.author?if_exists}<br>
<b>Описание: </b>${product.description?if_exists}<br>
<b>Ссылка: </b><a href="${product.link?if_exists}" target="_blank">Нажми чтобы перечитать ${product.title?if_exists}</a><br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить книгу"/>
</form>


<form action="/product/edit/${product.id}" method="post" enctype="multipart/form-data">
    <!--<input type="number" name="id"/><br>-->
    <p>Поменяй название</p>
    <input type="text" name="title"/><br>
    <p>Замени автора</p>
    <input type="text" name="author"/><br>
    <p>Измени своё мнение</p>
    <input type="text" name="description"/><br>
    <p>Выбери новую фотку</p>
    <input type="file" name="file1"/><br>
    <p>Измени ресурс для чтения</p>
    <input type="text" name="link1"/><br>

    <input type="submit" value="Сохранить изменения"/><br>
</form>


</body>
</html>