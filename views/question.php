<main>
    <?php

    $postID = 0;
    if (isset($_GET['id'])){
        $postID = $_GET['id'];
    } else {
        header("Location: ?page=main");
    }

    $post = $postsService->getPostByIDAll($postID);

    if(!$post){
        header("Location: ?page=main");
    }
    ?>

    <section class="messageSection question">
        <header>
            <h1 style="display: inline-block"><?php echo $post->getTitle()?></h1>
            <?php
            if (isset($user) && (($user->isAdmin() !== null && $user->isAdmin()) || $post->getUserID() == $user->getId())){?>
                <a href="index.php?action=deletePost&id=<?php echo $post->getId();?>">
                    <input type="button"  value="Delete"  style="float: right;"/>
                </a>
            <?php }?>
         </header>

        <article>
            <div class="userHolder">
                <h4><?php echo $post->getUsername();?></h4>
                <span></span>
                <img src="img/Icon-user.png" alt="" class="userPic"/>
            </div>

            <div class="messageHolder">
                <h3><?php echo $post->getTitle()?></h3>
                <p>на <span><?php echo $post->getDate(); ?></span></p>
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
                <h1>Няма отговори</h1>
            </header>
        </section>
    <?php
    } else {?>
        <section class="messageSection">
            <header>
                <h1>Отговори</h1>
            </header>
        </section>
    <?php

    foreach ($allReplies as $reply){ ?>
        <section class="messageSection">
            <article>
                <div class="userHolder">
                    <h4><?php echo $reply[7]?></h4>
                    <span></span>
                    <img src="img/Icon-user.png" alt="" class="userPic"/>

                </div>

                <div class="messageHolder">
                    <h3><?php echo $post->getTitle()?></h3>
                    <p>на <span><?php echo $reply[5]; ?></span></p>
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
            <h1>ДОБАВИ ОТГОВОР</h1>
        </header>

        <form action="" method="POST">
            <textarea name="text"></textarea>
            <input type="submit" value="ДОБАВИ" name="addReply">
        </form>

    </section>


</main>

