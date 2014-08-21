<?php
	include 'header.php';
?>
<main>
    <section>
        <header>
            <h1>registration</h1>
        </header>
        <form action="" method="post">
        <ul>
            <li>
                <span class="userInfo">
                <label for="userName">User Name</label>
                </span>
                <input type="text" name="userName" id="userName" required="required">
            </li>
            <li>
                <span class="userInfo">
                    <label for="email">Email</label>
                </span>
                <input type="email" name="email" id="email"  required="required">
            </li>
            <li>
                <span class="userInfo">
                    <label for="confirmedEmail">Confirmed Email</label>
                </span>
                <input type="email" name="confirmedEmail" id="confirmedEmail"  required="required">
            </li>
            <li>
                <span class="userInfo">
                    <label for="password">Password</label>
                </span>
                <input type="password" name="password" id="password"  required="required">
            </li>
            <li>
                <span class="userInfo">
                <label for="repeatPassword">Repeat password</label>
                    </span>
                <input type="password" name="repeatPassword" id="repeatPassword"  required="required">
            </li>
            <li>
                    <span class="userInfo">Gender</span>
                <select>
                    <option value="male">Animal</option>
                    <option value="male">Male</option>
                    <option value="male">Female</option>
                </select>
            </li>
            <li id="buttons">
                <button type="submit">Send</button>
                <button type="reset">Clear</button>
            </li>
        </ul>
        </form>
    </section>
</main>
<?php
	include 'footer.php';
?>

