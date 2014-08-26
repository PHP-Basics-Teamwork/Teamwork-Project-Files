<main>
<?php

$foundPosts = getSearchResults($postsService);

if(count($foundPosts)>0){

    ?>

    <section>
    <header>
        <h1>РЕЗУЛТАТИ ОТ ТЪРСЕНЕТО</h1>
    </header>

    <?php

    foreach($foundPosts as $post){
?>
        <article>
            <table>
                <tbody>
                    <tr>
                        <td class="topicDescription">
                            <table class="topicTable">
                                <tbody>
                                    <tr><td onclick="window.location='index.php?page=question&id=<?php echo $post->getId(); ?>'"><?php echo $post->getTitle();?></td></tr>
                                    <tr><td><?php echo $post->getSummary();?></td></tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </article>

<?php } ?>
    </section>
<?php
} else{ ?>
    <section>
        <header>
            <h1>НЯМА РЕЗУЛТАТИ</h1>
        </header>
    </section>
<?php }
?>
</main>