<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <?php echo $__env->yieldPushContent('before-styles'); ?>
				<link href="<?php echo e(asset('output.css')); ?>" rel="stylesheet" />
        <link href="<?php echo e(asset('main.css')); ?>" rel="stylesheet" />
				<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet" />

        
        <script src="https://cdn.tailwindcss.com"></script>

        <?php echo $__env->yieldPushContent('after-styles'); ?>

	</head>

    <?php echo $__env->yieldContent('content'); ?>

    <?php echo $__env->yieldPushContent('before-scripts'); ?>

    <?php echo $__env->yieldPushContent('after-scripts'); ?>

</html>
<?php /**PATH D:\laragon\www\portal_berita_kalavel\resources\views/front/master.blade.php ENDPATH**/ ?>