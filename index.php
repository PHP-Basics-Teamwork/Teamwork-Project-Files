<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="styles/styles.css"/>
    <meta charset="utf8">
</head>
<body>
    <header>
        <img src="images/logo.png" alt="" class="logo"/>

    </header>
    <main>
        <section>
            <header>
                <h1>NEWS</h1>
            </header>
            <article>
                <div>
                    Нашата мисия е да направим хората, които обучаваме, истински професионалисти в софтуерната индустрия и да им съдействаме в намирането на работа.
                </div>
            </article>
        </section>

        <section>
            <header>
                <h1>GENERAL CATEGORY</h1>
            </header>

            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>

        </section>

        <section>
            <header>
                <h1>NEW SAMPLE CATEGORY</h1>
            </header>
            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>
            <?php require("php/article.php"); ?>

        </section>

        <section>
            <header>
                <h1>SOME SHIT HERE</h1>
            </header>
            <?php require("php/article.php"); ?>
        </section>


    </main>

    <footer></footer>
</body>
</html>

