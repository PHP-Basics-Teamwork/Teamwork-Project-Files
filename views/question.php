<main>

    <?php

    require_once('Controller/postsController.php');

    $postID = 0;
    if (isset($_GET['id'])){
        $postID = $_GET['id'];
    }

    $postService = new PostsService();

    $post = $postService->getPostByIDAll($postID);

    var_dump($post);

    ?>

    <section class="messageSection">
        <header>
            <h1><?php echo $post->getTitle()?></h1>
        </header>

        <article>
            <div class="userHolder">
                <h4>Pesho_76</h4>
                <span>Amateur</span>
                <img src="http://demo.dzinerstudio.com/smf2/avatars/Actors/Bruce_Campbell.jpg" alt="" class="userPic"/>
                <span style="width:100px; text-align: left">Posts: 12</span>
            </div>

            <div class="messageHolder">
                <h3>Topic: C++ VS C#</h3>
                <p>on <span>19-03-2006</span></p>
                <div class="message">
                    <p>Учебният план, по който се провеждат занятията в Софтуерния
                        университет, се състои от няколко нива – едно подготвително ниво за
                        приемния изпит (2 месеца) и 6 нива обучение по програмиране, технологии
                        и разработка на софтуер (всяко по 4 месеца). Предоставя се възможност за получаване на
                        университетска диплома за висше образование от един от нашите университети-партньори след
                        допълнително обучение при тях с продължителност 1 или 2 годиничебният план, по който се провеждат занятията в Софтуерния
                        университет, се ситети-партньори след
                        допълнително обучение при тях с продължителност 1 или 2 годиничебният план, по който се провеждат занятията в Софтуерния
                        университет, се съуер (всяко по 4 месеца). Предоставя се възможност за получаване на
                        университетска диплома за висше образование от един от нашите университети-партньори след
                        допълнително обучение при тях с продължителност 1 или 2 годиничебният план, по който се провеждат занятията в Софтуерния
                        университет, се състои от няколко нива – едно подготвително ниво за
                        приемния изпит (2 месеца) и 6 нива обучение по програмиране, технологии
                        и разработка на софтуер (всяко по 4 месеца). Предоставя се възможност за получаване на
                        университетска диплома за висше образование от един от нашите университети-партньори след
                        допълнително обучение при тях с продължителност 1 или 2 години.</p>
                </div>

                <div class="userSign">
                    <p>Learn to program in PHP, a widespread language that powers sites </p>
                </div>

            </div>
        </article>
    </section>

    <section class="messageSection">
        <header>
            <h1>Answers</h1>
        </header>
    </section>

    <section class="messageSection">
        <article>
            <div class="userHolder">
                <h4>Ivan_54</h4>
                <span>Amateur</span>
                <img src="http://img2.wikia.nocookie.net/__cb20100420145532/starwars/images/a/a8/Lucksprite_tentacle_head.png" alt="" class="userPic"/>
                <span style="width:100px; text-align: left">Posts: 12</span>
            </div>

            <div class="messageHolder">
                <h3>Topic: C++ VS C#</h3>
                <p>on <span>19-03-2006</span></p>
                <div class="message">
                    <p>Според мен е C++ защото провеждат занятията в Софтуерния
                        университет, се състои от няколко нива – едно подготвително ниво за
                        университетска диплома за висше образование от един от нашите университети-партньори след
                        допълнително обучение при тях с продължителност 1 или 2 години.</p>
                </div>
                <div class="userSign">
                    <p>Learn to program in PHP, a widespread language that powers sites </p>
                </div>
            </div>
        </article>
    </section>

    <section class="messageSection">
        <article>
            <div class="userHolder">
                <h4>Kireto</h4>
                <span>Amateur</span>
                <img src="http://iconbug.com/data/79/512/5770a1746fb50d0e6bb332315776389a.png" alt="" class="userPic"/>
                <span style="width:100px; text-align: left">Posts: 12</span>
            </div>

            <div class="messageHolder">
                <h3>Topic: C++ VS C#</h3>
                <p>on <span>19-03-2006</span></p>
                <div class="message">
                    <p>Според мен е C# защото провеждат занятията в Софтуерния
                        университет, се състои от няколко нива – едно подготвително ниво за
                        университетска диплома за висше образование от един от нашите университети-партньори след
                        допълнително обучение при тях с продължителност 1 или 2 години.</p>
                </div>
                <div class="userSign">
                    <p>Learn to program in PHP, a widespread language that powers sites </p>
                </div>
            </div>
        </article>
    </section>
</main>
