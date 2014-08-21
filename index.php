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


            <article>
                <table>
                    <tbody>
                    <tr>
                        <td class="imgHolder">
                            <img src="images/off.png" alt="off" class="topicImage"/>
                        </td>
                        <td class="topicDescription">
                            <table class="topicTable">
                                <tbody>
                                    <tr><td>General Discussion</td></tr>
                                    <tr><td>Feel free to talk about anything and everything in this board.</td></tr>
                                </tbody>

                            </table>
                        </td>

                        <td class="topicStats">
                            <table class="statsTable">
                                <tbody>
                                <tr><td>7 post</td></tr>
                                <tr><td>5 topics</td></tr>
                                </tbody>
                            </table>
                        </td>

                        <td class="topicLastPost">
                            <table class="lastPostTable">
                                <tbody>
                                    <tr><td><b>Pesho</b> in <span>Lorem Ipsum</span></td></tr>
                                    <tr><td>October 15, 2010, 07:34:09 AM</td></tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </article>




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

    <footer>

        <p>Lace Fern Forums | Design By Team <span>"Lace Fern"</span> 2014</p>

    </footer>
</body>
</html>

