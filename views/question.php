<main>

    <?php

    require_once('Controller/postsController.php');
    require_once('Manager/replyManager.php');

    $postID = 0;
    if (isset($_GET['id'])){
        $postID = $_GET['id'];
    } else {
        header("Location: ?page=error&error=Use the main page to see posts");
    }

    $postService = new PostsService();

    $post = $postService->getPostByIDAll($postID);

    //var_dump($post);

    ?>

    <section class="messageSection">
        <header>
            <h1><?php echo $post->getTitle()?></h1>
        </header>

        <article>
            <div class="userHolder">
                <h4><?php echo $post->getUsername()?></h4>
                <span>Amateur</span>
                <img src="http://demo.dzinerstudio.com/smf2/avatars/Actors/Bruce_Campbell.jpg" alt="" class="userPic"/>
                <span style="width:100px; text-align: left">Posts: 12</span>
            </div>

            <div class="messageHolder">
                <h3><?php echo $post->getTitle()?></h3>
                <p>on <span>19-03-2006</span></p>
                <div class="message">
                    <p><?php echo $post->getText()?></p>
                </div>

                <div class="userSign">
                    <p>Learn to program in PHP, a widespread language that powers sites </p>
                </div>

            </div>
        </article>
    </section>




    <?php

    $replyManager = new replyManager();

    $allReplies = $replyManager->getAllRepliesByTopicID($postID);

   // var_dump($allReplies);

    if (count($allReplies) < 1){ ?>
        <section class="messageSection">
            <header>
                <h1>Answers: None</h1>
            </header>
        </section>
    <?php
    } else {?>
        <section class="messageSection">
            <header>
                <h1>Answers</h1>
            </header>
        </section>
    <?php


    foreach ($allReplies as $reply){ ?>
        <section class="messageSection">
            <article>
                <div class="userHolder">
                    <h4><?php echo $reply[6]?></h4>
                    <span>Amateur</span>
                    <img src="http://img2.wikia.nocookie.net/__cb20100420145532/starwars/images/a/a8/Lucksprite_tentacle_head.png" alt="" class="userPic"/>
                    <span style="width:100px; text-align: left">Posts: 12</span>
                </div>

                <div class="messageHolder">
                    <h3><?php echo $post->getTitle()?></h3>
                    <p>on <span>19-03-2006</span></p>
                    <div class="message">
                        <p><?php echo $reply[1]?></p>
                    </div>
                    <div class="userSign">
                        <p>Learn to program in PHP, a widespread language that powers sites </p>
                    </div>
                </div>
            </article>
        </section>
    <?php
    }}
    ?>
</main>
