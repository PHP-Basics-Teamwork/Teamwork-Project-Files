<main>
    <section>
        <header>
            <h1>registration</h1>
        </header>
        <form action="Controller/usersController.php" method="post">
        <ul>
            <li>
                <span class="userInfo">
                <label for="userName">User Name</label>
                </span>
                <input type="text" name="username" id="userName" required="required">
            </li>
            <li>
                <span class="userInfo">
                    <label for="email">Email</label>
                </span>
                <input type="email" name="email" id="email"  required="required">
            </li>
            <li>
                <span class="userInfo">
                    <label>First Name</label>
                </span>
                <input type="text" name="firstName" required="required">
            </li>
            <li>
                <span class="userInfo">
                    <label>Last Name</label>
                </span>
                <input type="text" name="lastName" required="required">
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
                <select name="gender">
                    <option value="animal">Animal</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </li>
            <li id="buttons">
                <input type="submit" name="registerUser" value="Register">
                <button type="reset">Clear</button>
            </li>
        </ul>
        </form>
    </section>
</main>



