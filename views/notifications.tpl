<?php if ( @$resultSuccess != '' ) { ?> 
	<div class="info-success"><?=$resultSuccess?></div>
<?php } ?>

<?php if ( @$resultInfo != '' ) { ?> 
	<div class="info-notification"><?=$resultInfo?></div>
<?php } ?>

<?php if ( @$resultError != '' ) { ?> 
	<div class="error"><?=$resultError?></div>
<?php } ?>