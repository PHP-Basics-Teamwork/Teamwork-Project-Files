<main>
    <?php

    $postID = 0;
    if (isset($_GET['id'])){
        $postID = $_GET['id'];
    } else {
        header("Location: ?page=error&error=Use the main page to see posts");
    }


    require_once('Controller/usersController.php');

    $userService = new UsersService();
    $isAdmin = false;
    if(isset($_SESSION['sessionKey'])){
        $user = $userService->getUserBySessionKey($_SESSION['sessionKey']);
        if ($user->isAdmin() == 1){
            $isAdmin = true;
        }
    }
    else{
        $user = null;
    }

    $postService = new PostsService();
    $post = $postService->getPostByIDAll($postID);



    ?>

    <section class="messageSection question">
        <header>
            <h1 style="display: inline-block"><?php echo $post->getTitle()?></h1>
            <?php
            if ($isAdmin == true){?>
                <input type="button" onclick="deletePost()" value="Delete"  style="display: inline-block; float: right; width: auto"/>
                <input type="button" onclick="deletePost()" value="Edit" style="display: inline-block;  float: right; width: auto" />
            <?php }?>
         </header>

        <article>
            <div class="userHolder">
                <h4><?php echo $post->getUsername();?></h4>
                <span></span>
                <img src="http://demo.dzinerstudio.com/smf2/avatars/Actors/Bruce_Campbell.jpg" alt="" class="userPic"/>
                <span style="width:100px; text-align: left">Posts: 12</span>
            </div>

            <div class="messageHolder">
                <h3><?php echo $post->getTitle()?></h3>
                <p>on <span>19-03-2006</span></p>
                <div class="message">
                    <p><?php echo $post->getText()?></p>
                </div>
            </div>
        </article>



    </section>

    <?php

    $replyManager = new replyManager();

    $allReplies = $replyManager->getAllRepliesByTopicID($postID);


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
                    <span></span>
                    <img src="http://img2.wikia.nocookie.net/__cb20100420145532/starwars/images/a/a8/Lucksprite_tentacle_head.png" alt="" class="userPic"/>
                    <span style="width:100px; text-align: left">Posts: 12</span>
                </div>

                <div class="messageHolder">
                    <h3><?php echo $post->getTitle()?></h3>
                    <p>on <span>19-03-2006</span></p>
                    <div class="message">
                        <p><?php echo $reply[1]?></p>
                    </div>

                </div>
            </article>
        </section>
    <?php
    }}
    ?>

    <section class="messageSection">
        <header>
            <h1>ADD ANSWER</h1>
        </header>

        <form action="" method="POST">
            <textarea name="text"></textarea>
            <input type="submit" value="ADD" name="addReply">
        </form>

    </section>


</main>

