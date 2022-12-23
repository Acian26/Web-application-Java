<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style type="text/css">
        h1 {
            color: purple;
        }

        form {
            padding: 5px;
            border: 1px solid black;
            color: purple;
            background: rgb(127, 196, 70);
            background: linear-gradient(90deg, rgba(127, 196, 70, 1); 0%, rgba(127, 196, 70, 1); 50%, rgba(127, 196, 70, 1); 100%);
            margin: 0 20vw;
        }
        .form-elem-wrapper {
            display: flex;
            flex-direction: column;
            justify-content: start;
            border: 2px solid white;
            margin: 5px;
        }
        .form-p {
            font-size: 20px;
            font-weight: bold;
            text-shadow: 1px 0 1px #000;
            margin: 3px auto;
        }
        .form-input {
            margin: 0 20px;
            border: 2px solid white;
            border-radius: 5px;
        }
        .book-title {
            font-weight: bold;
        }
        .title {
            font-weight: bold;
            text-align:  center;
        }
        .submit-div {
            display: flex;
            justify-content: center;
        }
        .submit-input {
            margin: 0 auto;
        }
        .form-input-file {
            margin: 0 auto;
        }


    </style>
    <title>Книжули</title>
<h1 class="title">Запомни всё, что ранее прочитал!</h1>
</head>
<form action="/product/create" method="post" enctype="multipart/form-data"><br>
    <div class="form-elem-wrapper">
        <p class="form-p">Название</p>
        <input class="form-input" type="text" name="title"/><br>
    </div>
        <div class="form-elem-wrapper">
            <P class="form-p">Автор</P>
            <input class="form-input" type="text" name="author"/><br>
        </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Отзыв</p>
        <input class="form-input" type="text" name="description"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Фотография</p>
        <input class="form-input-file" type="file" name="file1"/><br>
    </div>
    <div class="form-elem-wrapper">
            <p class="form-p">Ссылка на книгу</p>
            <input class="form-input" type="text" name="link"/><br>
        </div>
     <div class="submit-div">
        <input class="submit-input" type="submit" value="Добавить книгу"/><br>
    </div>
</form>
<body>
<!--<form action="/" method="get">
    <input type="text" name="title"/><br>
    <input type="submit" value="Поиск"/>
</form>-->
<p>
<h3 class="title">Учитесь и читайте. Читайте книги серьезные. Жизнь сделает остальное. (Ф.М. Достаевский)</h3><hr>
    <#list products as product>
        <div>
            <p class="book-title">${product.title}</p>
            <a href="/product/${product.id}">Подробнее</a>
        <#else>
            <h3 class="title">Книжная полка пустеет, милорд!</h3>
        </div>

    </#list>
</p>

</body>
</html>