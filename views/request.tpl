<h1>Укажите ваши данные</h1>

<form action="set-cookie.php" method="POST" class="mb-50">
	<label class="label-title">Ваше имя</label>
	<input class="input" type="text" placeholder="" name="user-name"/>

	<label class="label-title">Ваш город</label>
	<input class="input" type="text" placeholder="" name="user-city"/>
	
	<input type="submit" class="button" value="Сохранить" name="user-submit">

</form>


<form action="unset-cookie.php" method="POST">
	<input type="submit" class="button" value="Удалить данные" name="user-unset">
</form>



