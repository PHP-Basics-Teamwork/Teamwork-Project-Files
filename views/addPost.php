<section id="secAddPost">
 <header>
<h1>Add post</h1>
 </header>
    <div id="addPostWrapper">
    <form action="" method="POST">
        <ul>
            <li>
                <label>Заглавие:</label>
                <input type="text" name="title" />
            </li>
            <li>
                <label>Накратко:</label>
                <input type="text" name="summary" />
            </li>
            <li>
                <label>Текст:</label>
                <textarea name="text"></textarea>
            </li>
            <li>
                <label>Избери категория</label>
                <select name="category_id">
                    <?php
                        $categories = getAllCategories($postsService);
                        foreach($categories as $category){
                            echo("<option value=".$category['id'].">".$category['name']."</option>");
                        }
                    ?>
                </select>
            </li>
            <li>
                <input type="submit" name="addPost" value="Добави пост" id="setPost"/>
            </li>
        </ul>
    </form>
</div>
</section>