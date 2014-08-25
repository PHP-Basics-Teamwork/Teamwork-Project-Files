<?php

$foundPosts = getSearchResults($postsService);

if(count($foundPosts)>0){
    foreach($foundPosts as $post){
?>
        <div><a href="index.php?page=question&id=<?php echo $post->getId(); ?>">
                <div><?php echo $post->getTitle(); ?></div>
                <div><?php echo $post->getSummary(); ?></div>
            </a>
            <br>
        </div>
<?php
    }
}
else{
?>
    <div>Няма намерени резултати!</div>
<?php
}
?>