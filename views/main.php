<main>
    <?php


    $categories = [];
    $allPosts = getPosts($postsService);

    foreach ($allPosts as $post) {
        if (array_search(strtolower($post->getCategoryName()), $categories) === false){
            array_push($categories, strtolower($post->getCategoryName()));
        }
    }

    ?>

	<section>
		<header>
			<h1>НОВИНИ</h1>
		</header>
		<article>
			<div>
				Нашата мисия е да направим хората, които обучаваме, истински професионалисти в софтуерната индустрия и да им съдействаме в намирането на работа.
			</div>
		</article>
	</section>

	<section>
		<header>
			<h1>ПОСЛЕДНИ ВЪПРОСИ</h1>
		</header>

        <?php
            $latestPosts = getLatestPosts($postsService);
            foreach ($latestPosts as $post) { ?>
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
                                        <tr><td onclick="window.location='<?php echo "?page=question&id=" . $post->getId();?>'"><?php echo $post->getTitle();?></td></tr>
                                        <tr><td><?php echo $post->getSummary();?></td></tr>
                                    </tbody>

                                </table>
                            </td>

                            <td class="topicStats">
                                <table class="statsTable">
                                    <tbody>
                                    <tr><td><?php echo $post->getAnswers();?> отговора</td></tr>
                                    </tbody>
                                </table>
                            </td>

                            <td class="topicLastPost">
                                <table class="lastPostTable">
                                    <tbody>
                                    <tr><td><b><?php echo $post->getUsername();?></b> в <span><?php echo $post->getCategoryName();?></span></td></tr>
                                    <tr><td><?php echo $post->getDate(); ?></td></tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </article>
            <?php }?>
	</section>
        <?php
        foreach ($categories as $category){ ?>
            <section>
                <header>
                    <h1><?php echo $category;?></h1>
                </header>

                <?php
                foreach ($allPosts as $post) {
                    if (strtolower($post->getCategoryName()) == $category): ?>
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
                                            <tr><td onclick="window.location='<?php echo "?page=question&id=" . $post->getId()?>'"><?php echo $post->getTitle()?></td></tr>
                                            <tr><td><?php echo $post->getSummary()?></td></tr>
                                            </tbody>

                                        </table>
                                    </td>

                                    <td class="topicStats">
                                        <table class="statsTable">
                                            <tbody>
                                            <tr><td><?php echo $post->getAnswers()?> отговора</td></tr>

                                            </tbody>
                                        </table>
                                    </td>

                                    <td class="topicLastPost">
                                        <table class="lastPostTable">
                                            <tbody>
                                            <tr><td><b><?php echo $post->getUsername()?></b> в <span><?php echo $post->getCategoryName();?></span></td></tr>
                                            <tr><td><?php echo $post->getDate(); ?></td></tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </article>

                    <?php endif;
                }
                ?> </section> <?php
        }

        ?>
</main>