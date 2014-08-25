<main>

    <?php

    require_once('Controller/postsController.php');

    $categories = [];
    $allPosts = getPosts($postsService);

    for ($i = 0; $i < count($allPosts); $i++) {
        if (array_search(strtolower($allPosts[$i][5]), $categories) === false){
            array_push($categories, strtolower($allPosts[$i][5]));
        }
    }

    ?>

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
			<h1>LATEST QUESTIONS</h1>
		</header>

        <?php
            for ($i = count($allPosts) -1 ; $i >= count($allPosts) - 6; $i--) { ?>
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
                                        <tr><td onclick="window.location='<?php echo "?page=question&id=" . $allPosts[$i][0]?>'"><?php echo $allPosts[$i][1]?></td></tr>
                                        <tr><td><?php echo $allPosts[$i][6]?></td></tr>
                                    </tbody>

                                </table>
                            </td>

                            <td class="topicStats">
                                <table class="statsTable">
                                    <tbody>
                                    <tr><td><?php echo $allPosts[$i][7]?> answers</td></tr>
                                    <tr><td><?php echo $allPosts[$i][4]?> votes</td></tr>
                                    </tbody>
                                </table>
                            </td>

                            <td class="topicLastPost">
                                <table class="lastPostTable">
                                    <tbody>
                                    <tr><td><b><?php echo $allPosts[$i][3]?></b> in <span><?php echo $allPosts[$i][5]?></span></td></tr>
                                    <tr><td>October 15, 2010, 07:34:09 AM</td></tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </article>
            <?php }?>


		<!--article>
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
							<tr><td>7 answers</td></tr>
							<tr><td>50 votes</td></tr>
							</tbody>
						</table>
					</td>

					<td class="topicLastPost">
						<table class="lastPostTable">
                            <tbody>
                            <tr><td><b>Pesho</b> in <span>Lorem Ipsum</span></td><td>
                                    <a href="#"><img id="thumbs" src="img/thumbsupp.png"></a>
                                </td></tr>
                            <tr><td>October 15, 2010, 07:34:09 AM</td> <td>
                                    <a href="#"><img id="thumbs" src="img/thumbsdown.jpg"></a>
                                </td></tr>
                            </tbody>
						</table>
					</td>
				</tr>
				</tbody>
			</table>
		</article -->





	</section>

	<!--section>
		<header>
			<h1>HOT QUESTIONS</h1>
		</header>
		<?php require("article.php"); ?>
		<?php require("article.php"); ?>

	</section-->
        <?php

        foreach ($categories as $category){ ?>
            <section>
                <header>
                    <h1><?php echo $category;?></h1>
                </header>

                <?php
                for ($i = 0; $i < count($allPosts); $i++) {
                    if (strtolower($allPosts[$i][5]) == $category): ?>

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
                                            <tr><td onclick="window.location='<?php echo "?page=question&id=" . $allPosts[$i][0]?>'"><?php echo $allPosts[$i][1]?></td></tr>
                                            <tr><td><?php echo $allPosts[$i][6]?></td></tr>
                                            </tbody>

                                        </table>
                                    </td>

                                    <td class="topicStats">
                                        <table class="statsTable">
                                            <tbody>
                                            <tr><td><?php echo $allPosts[$i][7]?> answers</td></tr>
                                            <tr><td><?php echo $allPosts[$i][4]?> votes</td></tr>
                                            </tbody>
                                        </table>
                                    </td>

                                    <td class="topicLastPost">
                                        <table class="lastPostTable">
                                            <tbody>
                                            <tr><td><b><?php echo $allPosts[$i][3]?></b> in <span><?php echo $allPosts[$i][5]?></span></td></tr>
                                            <tr><td>October 15, 2010, 07:34:09 AM</td></tr>
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