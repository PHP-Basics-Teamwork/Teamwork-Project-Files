
    <main>
        <section>
            <header>
                <h1>oops</h1>
            </header>
            <div id="errorPage">
                <img src="img/404.png" alt="error" >
                <span>
                <?php
                if(isset($_GET['error']))
                    echo $_GET['error'];
                else
                    echo ("Възникна грешка!");
                ?>
                </span>
            </div>
         </section>
    </main>

