<main>
    <section>
        <header>
            <h1>регистрация</h1>
        </header>
        <form action="" method="post">
        <ul>
            <li>
                <span class="userInfo">
                <label for="userName">Потребителско име</label>
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
                    <label for="confirmedEmail">Повтори email</label>
                </span>
                <input type="email" name="confirmEmail" id="confirmedEmail"  required="required">
            </li>
            <li>
                <span class="userInfo">
                <label>Име</label>
                </span>
                <input type="text" name="firstName" required="required">
            </li>
            <li>
                <span class="userInfo">
                    <label>Фамилия</label>
                </span>
                <input type="text" name="lastName" required="required">
            </li>

            <li>
                <span class="userInfo">
                    <label for="password">Парола</label>
                </span>
                <input type="password" name="password" id="password"  required="required">
            </li>
            <li>
                <span class="userInfo">
                <label for="repeatPassword">Повтори парола</label>
                    </span>
                <input type="password" name="confirmPassword" id="repeatPassword"  required="required">
            </li>
            <li>
				<span class="userInfo">Пол</span>
                <select name="gender">
                    <option value="3">Животно</option>
                    <option value="1">Мъж</option>
                    <option value="2">Жена</option>
                </select>
            </li>
            <li id="buttons">
                <input type="submit" name="registerUser" value="Регистрация">
                <button type="reset">Изчисти</button>
            </li>
        </ul>
        </form>
    </section>
</main>



