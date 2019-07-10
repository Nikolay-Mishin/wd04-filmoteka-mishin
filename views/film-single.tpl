<h1 class="title-1">Информация о фильме</h1>

<div class="card mb-20">
	<!-- row -->
	<div class="row">
		<!-- col -->
        <?php if ($film['photo'] != '') { ?>
            <div class="col">
                <img width="500" src="<?=HOST?>data/films/full/<?=$film['photo']?>" alt="<?=$film['title']?>">
            </div>
        <?php } else { ?>
            <div class="col">
                <img width="500" src="<?=HOST?>data/films/no_photo.jpg?>" alt="<?=$film['title']?>">
            </div>
        <?php } ?>
		<!-- // col -->
		<!-- col -->
		<div class="col">
			<div class="card__header">
				<h4 class="title-4"><?=$film['title']?></h4>
				<div class="buttons">
					<?php  
						if (isset($_SESSION['user'])) {
							if ($_SESSION['user'] == 'admin') { 
					?>
					<a href="edit.php?id=<?=$film['id']?>" class="button button--edit">Редактировать</a>
					<a href="index.php?action=delete&id=<?=$film['id']?>" class="button button--delete">Удалить</a>
					<?php  
							} 
						}
					?>
				</div>
			</div>
			<div class="badge"><?=$film['genre']?></div>
			<div class="badge"><?=$film['year']?></div>
			<div class="user-content">
				<p><?=$film['description']?></p>
			</div>
		</div>
		<!-- //col -->
	</div>
	<!-- //row -->
</div>