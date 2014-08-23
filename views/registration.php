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
                <input type="email" name="confirmEmail" id="confirmedEmail"  required="required">
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
                <input type="password" name="confirmPassword" id="repeatPassword"  required="required">
            </li>
            <li>
                    <span class="userInfo">Gender</span>
                <select name="gender">
                    <option value="3">Animal</option>
                    <option value="1">Male</option>
                    <option value="2">Female</option>
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



