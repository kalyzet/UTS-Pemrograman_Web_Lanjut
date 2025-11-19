
<?php $__env->startSection('content'); ?>
	<body class="font-[Poppins] pb-[72px]">
		<?php if (isset($component)) { $__componentOriginala591787d01fe92c5706972626cdf7231 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginala591787d01fe92c5706972626cdf7231 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.navbar','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('navbar'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginala591787d01fe92c5706972626cdf7231)): ?>
<?php $attributes = $__attributesOriginala591787d01fe92c5706972626cdf7231; ?>
<?php unset($__attributesOriginala591787d01fe92c5706972626cdf7231); ?>
<?php endif; ?>
<?php if (isset($__componentOriginala591787d01fe92c5706972626cdf7231)): ?>
<?php $component = $__componentOriginala591787d01fe92c5706972626cdf7231; ?>
<?php unset($__componentOriginala591787d01fe92c5706972626cdf7231); ?>
<?php endif; ?>
		<nav id="Category" class="max-w-[1130px] mx-auto flex justify-center items-center gap-4 mt-[30px]">

            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <a href="<?php echo e(route('front.category', $category->slug)); ?>" class="rounded-full p-[12px_22px] flex gap-[10px] font-semibold transition-all duration-300 border border-[#EEF0F7] hover:ring-2 hover:ring-[#1884ff]">
				<div class="flex w-6 h-6 shrink-0">
					<img src="<?php echo e(Storage::url($category->icon)); ?>" alt="icon" />
				</div>
				<span><?php echo e($category->name); ?></span>
			</a>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

		</nav>
		<section id="Featured" class="mt-[30px]">
			<div class="w-full main-carousel"> <?php $__empty_1 = true; $__currentLoopData = $featured_articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?> <div class="featured-news-card relative w-full h-[550px] flex shrink-0 overflow-hidden"> <img src="<?php echo e(Storage::url($article->thumbnail)); ?>" class="absolute object-cover w-full h-full thumbnail" alt="icon" /> <div class="w-full h-full bg-gradient-to-b from-[rgba(0,0,0,0)] to-[rgba(0,0,0,0.9)] absolute z-10"></div> <div class="card-detail max-w-[1130px] w-full mx-auto flex items-end justify-between pb-10 relative z-20"> <div class="flex flex-col gap-[10px]"> <p class="text-white">Terpopuler</p> <a href="<?php echo e(route('front.details', $article->slug)); ?>" class="font-bold text-4xl leading-[45px] text-white two-lines hover:underline transition-all duration-300"> <?php echo e($article->name); ?> </a> <p class="text-white"> <?php echo e($article->created_at->translatedFormat('d F Y')); ?> • <?php echo e($article->category->name); ?> </p> </div> <div class="prevNextButtons flex items-center gap-4 mb-[60px]"> <button class="button--previous appearance-none w-[38px] h-[38px] flex items-center justify-center rounded-full shrink-0 ring-1 ring-white hover:ring-2 hover:ring-[#1865ff] transition-all duration-300"> <img src="assets/images/icons/arrow.svg" alt="arrow" /> </button> <button class="button--next appearance-none w-[38px] h-[38px] flex items-center justify-center rounded-full shrink-0 ring-1 ring-white hover:ring-2 hover:ring-[#1865ff] transition-all duration-300 rotate-180"> <img src="assets/images/icons/arrow.svg" alt="arrow" /> </button> </div> </div> </div> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?> <p>belum ada data terbaru...</p> <?php endif; ?> </div>

		</section>
		<section id="Up-to-date" class="max-w-[1130px] mx-auto flex flex-col gap-[30px] mt-[70px]">
			<div class="flex items-center justify-between">
				<h2 class="font-bold text-[26px] leading-[39px]">
					Berita Hangat Terbaru <br />
					Untuk Pembaca
				</h2>
				<p class="badge-orange rounded-full p-[8px_18px] bg-[#e1f3ff] font-bold text-sm leading-[21px] text-[#1884ff] w-fit">TERKINI
			</div>
			<div class="grid grid-cols-3 gap-[30px]">
    <?php $__empty_1 = true; $__currentLoopData = $articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
        <a href="<?php echo e(route('front.details', $article->slug)); ?>" class="h-full card-news">
            <div class="rounded-[20px] ring-1 ring-[#EEF0F7] p-[26px_20px] flex flex-col gap-4 hover:ring-2 hover:ring-[#1865ff] transition-all duration-300 bg-white h-full">
                <div class="thumbnail-container w-full h-[200px] rounded-[20px] flex shrink-0 overflow-hidden relative">
                    <p class="badge-white absolute top-5 left-5 rounded-full p-[8px_18px] bg-white font-bold text-xs leading-[18px] uppercase"><?php echo e($article->category->name); ?></p>
                    <img src="<?php echo e(Storage::url($article->thumbnail)); ?>" class="object-cover w-full h-full" alt="thumbnail" />
                </div>
                <div class="card-info flex flex-col gap-[6px] flex-grow">
                    <h3 class="font-bold text-lg leading-[27px]">
                        <?php echo e($article->name); ?>

                    </h3>
                    <p class="text-sm leading-[21px] text-[#A3A6AE]">
                        <?php echo e($article->created_at->translatedFormat('d F Y')); ?>

                    </p>
                </div>
            </div>
        </a>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
        <p>belum ada data terbaru...</p>
    <?php endif; ?>
</div>

		</section>
		<section id="Best-authors" class="max-w-[1130px] mx-auto flex flex-col gap-[30px] mt-[70px]">
			<div class="flex flex-col text-center gap-[14px] items-center">
				<p class="badge-orange rounded-full p-[8px_18px] bg-[#e1f2ff] font-bold text-sm leading-[21px] text-[#1852ff] w-fit">PENULIS TERBAIK</p>
				<h2 class="font-bold text-[26px] leading-[39px]">
					Jelajahi Semua Karya <br />
					Hasil Tulisan Orang-Orang
				</h2>
			</div>
			<div class="grid grid-cols-6 gap-[30px] items-stretch">
    <?php $__empty_1 = true; $__currentLoopData = $authors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $author): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
        <a href="<?php echo e(route('front.author', $author->slug)); ?>" class="h-full card-authors">
            <div class="rounded-[20px] border border-[#EEF0F7] p-[26px_20px] flex flex-col items-center gap-4 hover:ring-2 hover:ring-[#189fff] transition-all duration-300 bg-white h-full">
                <div class="w-[70px] h-[70px] flex shrink-0 rounded-full overflow-hidden">
                    <img src="<?php echo e(Storage::url($author->avatar)); ?>" class="object-cover w-full h-full" alt="avatar" />
                </div>
                <div class="flex flex-col justify-center flex-grow gap-1 text-center">
                    <p class="font-semibold text-center line-clamp-2">
                        <?php echo e($author->name); ?>

                    </p>
                    <p class="text-sm leading-[21px] text-[#A3A6AE]">
                        <?php echo e($author->news->count()); ?> Karya
                    </p>
                </div>
            </div>
        </a>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
        <p>belum ada data terbaru...</p>
    <?php endif; ?>
</div>

		</section>
		<section id="Advertisement" class="max-w-[1130px] mx-auto flex justify-center mt-[70px]">
			<div class="flex flex-col gap-3 shrink-0 w-fit">
				<?php if($bannerads): ?>
	<a href="<?php echo e($bannerads->link); ?>">
		<div class="w-[900px] h-[120px] flex shrink-0 border border-[#EEF0F7] rounded-2xl overflow-hidden">
			<img src="<?php echo e(Storage::url($bannerads->thumbnail)); ?>" class="object-cover w-full h-full" alt="ads" />
		</div>
	</a>
	<p class="font-medium text-sm leading-[21px] text-[#A3A6AE] flex gap-1">
		Iklan Kami <a href="#" class="w-[18px] h-[18px]">
			<img src="<?php echo e(asset('assets/images/icons/message-question.svg')); ?>" alt="icon" />
		</a>
	</p>
<?php else: ?>
	<div class="text-sm italic text-gray-400">No banner ads available</div>
<?php endif; ?>

			</div>
		</section>
		<section id="Latest-entertainment" class="max-w-[1130px] mx-auto flex flex-col gap-[30px] mt-[70px]">
			<div class="flex items-center justify-between">
				<h2 class="font-bold text-[26px] leading-[39px]">
					Terbaru Untuk Anda <br />
					dalam Hiburan
				</h2>
<a href="<?php echo e(route('front.category', 'hiburan')); ?>"
   class="rounded-full p-[12px_22px] flex gap-[10px] font-semibold transition-all duration-300 border border-[#EEF0F7] hover:ring-2 hover:ring-[#1878ff]">
Jelajahi
</a>
			</div>
			<div class="flex items-center justify-between h-fit">
				<div class="featured-news-card relative w-full h-[424px] flex flex-1 rounded-[20px] overflow-hidden">
					<img src="<?php echo e(Storage::url($entertainment_featured_articles->thumbnail)); ?>" class="absolute object-cover w-full h-full thumbnail" alt="icon" />
					<div class="w-full h-full bg-gradient-to-b from-[rgba(0,0,0,0)] to-[rgba(0,0,0,0.9)] absolute z-10"></div>
					<div class="card-detail w-full flex items-end p-[30px] relative z-20">
						<div class="flex flex-col gap-[10px]">
							<p class="text-white">Terpopuler</p>
							<a href="details.html" class="font-bold text-[30px] leading-[36px] text-white hover:underline transition-all duration-300">
                                <?php echo e($entertainment_featured_articles->name); ?>

                            </a>
							<p class="text-white">
                                <?php echo e($entertainment_featured_articles->created_at->translatedFormat('d F Y')); ?>

                            </p>
						</div>
					</div>
				</div>
				<div class="h-[424px] w-fit px-5 overflow-y-scroll overflow-x-hidden relative custom-scrollbar">
					<div class="w-[455px] flex flex-col gap-5 shrink-0">

                        <?php $__empty_1 = true; $__currentLoopData = $entertainment_articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <a href="<?php echo e(route('front.details', $article->slug)); ?>" class="card py-[2px]">
                                <div class="rounded-[20px] border border-[#EEF0F7] p-[14px] flex items-center gap-4 hover:ring-2 hover:ring-[#189bff] transition-all duration-300">
                                    <div class="w-[130px] h-[100px] flex shrink-0 rounded-[20px] overflow-hidden">
                                        <img src="<?php echo e(Storage::url($article->thumbnail)); ?>" class="object-cover w-full h-full" alt="thumbnail" />
                                    </div>
                                    <div class="flex flex-col justify-center-center gap-[6px]">
                                        <h3 class="font-bold text-lg leading-[27px]">
                                            <?php echo e(substr($article->name, 0, 50)); ?><?php echo e(strlen($article->name) > 50 ? '...':''); ?>

                                        </h3>
                                        <p class="text-sm leading-[21px] text-[#A3A6AE]">
                                            <?php echo e($article->created_at->translatedFormat('d F Y')); ?>

                                        </p>
                                    </div>
                                </div>
                            </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                        <p>belum ada data terbaru...</p>
                        <?php endif; ?>

					</div>
					<div class="sticky z-10 bottom-0 w-full h-[100px] bg-gradient-to-b from-[rgba(255,255,255,0.19)] to-[rgba(255,255,255,1)]"></div>
				</div>
			</div>
		</section>
		<section id="Latest-business" class="max-w-[1130px] mx-auto flex flex-col gap-[30px] mt-[70px]">
    <div class="flex items-center justify-between">
        <h2 class="font-bold text-[26px] leading-[39px]">
            Terbaru Untuk Anda <br />
            dalam Bisnis
        </h2>
        <a href="<?php echo e(route('front.category', 'bisnis')); ?>" class="rounded-full p-[12px_22px] flex gap-[10px] font-semibold transition-all duration-300 border border-[#EEF0F7] hover:ring-2 hover:ring-[#189bff]">Jelajahi</a>
    </div>
    <div class="flex items-center justify-between h-fit">
        <div class="featured-news-card relative w-full h-[424px] flex flex-1 rounded-[20px] overflow-hidden">
            <img src="<?php echo e(Storage::url($business_featured_articles->thumbnail)); ?>" class="absolute object-cover w-full h-full thumbnail" alt="icon" />
            <div class="w-full h-full bg-gradient-to-b from-[rgba(0,0,0,0)] to-[rgba(0,0,0,0.9)] absolute z-10"></div>
            <div class="card-detail w-full flex items-end p-[30px] relative z-20">
                <div class="flex flex-col gap-[10px]">
                    <p class="text-white">Terpopuler</p>
                    <a href="<?php echo e(route('front.details', $business_featured_articles->slug)); ?>" class="font-bold text-[30px] leading-[36px] text-white hover:underline transition-all duration-300">
                        <?php echo e($business_featured_articles->name); ?>

                    </a>
                    <p class="text-white">
                        <?php echo e($business_featured_articles->created_at->translatedFormat('d F Y')); ?>

                    </p>
                </div>
            </div>
        </div>
        <div class="h-[424px] w-fit px-5 overflow-y-scroll overflow-x-hidden relative custom-scrollbar">
            <div class="w-[455px] flex flex-col gap-5 shrink-0">
                <?php $__empty_1 = true; $__currentLoopData = $business_articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                    <a href="<?php echo e(route('front.details', $article->slug)); ?>" class="card py-[2px]">
                        <div class="rounded-[20px] border border-[#EEF0F7] p-[14px] flex items-center gap-4 hover:ring-2 hover:ring-[#1888ff] transition-all duration-300">
                            <div class="w-[130px] h-[100px] flex shrink-0 rounded-[20px] overflow-hidden">
                                <img src="<?php echo e(Storage::url($article->thumbnail)); ?>" class="object-cover w-full h-full" alt="thumbnail" />
                            </div>
                            <div class="flex flex-col justify-center-center gap-[6px]">
                                <h3 class="font-bold text-lg leading-[27px]">
                                    <?php echo e(substr($article->name, 0, 50)); ?><?php echo e(strlen($article->name) > 50 ? '...':''); ?>

                                </h3>
                                <p class="text-sm leading-[21px] text-[#A3A6AE]">
                                    <?php echo e($article->created_at->translatedFormat('d F Y')); ?>

                                </p>
                            </div>
                        </div>
                    </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                    <p>belum ada data terbaru...</p>
                <?php endif; ?>
            </div>
            <div class="sticky z-10 bottom-0 w-full h-[100px] bg-gradient-to-b from-[rgba(255,255,255,0.19)] to-[rgba(255,255,255,1)]"></div>
        </div>
    </div>
</section>
		<section id="Latest-sport" class="max-w-[1130px] mx-auto flex flex-col gap-[30px] mt-[70px]">
    <div class="flex items-center justify-between">
        <h2 class="font-bold text-[26px] leading-[39px]">
            Terbaru Untuk Anda <br />
            dalam Olahraga
        </h2>
        <a href="<?php echo e(route('front.category', 'olahraga')); ?>"
   class="rounded-full p-[12px_22px] flex gap-[10px] font-semibold transition-all duration-300 border border-[#EEF0F7] hover:ring-2 hover:ring-[#1874ff]">
   Jelajahi
</a>

    </div>

    <div class="flex items-center justify-between h-fit">
        
        <?php if($sport_featured_articles): ?>
        <div class="featured-news-card relative w-full h-[424px] flex flex-1 rounded-[20px] overflow-hidden">
            <img src="<?php echo e(Storage::url($sport_featured_articles->thumbnail)); ?>"
                 class="absolute object-cover w-full h-full thumbnail"
                 alt="thumbnail" />
            <div class="w-full h-full bg-gradient-to-b from-[rgba(0,0,0,0)] to-[rgba(0,0,0,0.9)] absolute z-10"></div>
            <div class="card-detail w-full flex items-end p-[30px] relative z-20">
                <div class="flex flex-col gap-[10px]">
                    <p class="text-white">Terpopuler</p>
                    <a href="<?php echo e(route('front.details', $sport_featured_articles->slug)); ?>"
                       class="font-bold text-[30px] leading-[36px] text-white hover:underline transition-all duration-300">
                        <?php echo e($sport_featured_articles->name); ?>

                    </a>
                    <p class="text-white">
                        <?php echo e($sport_featured_articles->created_at->translatedFormat('d F Y')); ?>

                    </p>
                </div>
            </div>
        </div>
        <?php endif; ?>

        
        <div class="h-[424px] w-fit px-5 overflow-y-scroll overflow-x-hidden relative custom-scrollbar">
            <div class="w-[455px] flex flex-col gap-5 shrink-0">
                <?php $__empty_1 = true; $__currentLoopData = $sport_articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                    <a href="<?php echo e(route('front.details', $article->slug)); ?>" class="card py-[2px]">
                        <div class="rounded-[20px] border border-[#EEF0F7] p-[14px] flex items-center gap-4 hover:ring-2 hover:ring-[#189bff] transition-all duration-300">
                            <div class="w-[130px] h-[100px] flex shrink-0 rounded-[20px] overflow-hidden">
                                <img src="<?php echo e(Storage::url($article->thumbnail)); ?>"
                                     class="object-cover w-full h-full"
                                     alt="thumbnail" />
                            </div>
                            <div class="flex flex-col justify-center gap-[6px]">
                                <h3 class="font-bold text-lg leading-[27px]">
                                    <?php echo e(substr($article->name, 0, 50)); ?><?php echo e(strlen($article->name) > 50 ? '...' : ''); ?>

                                </h3>
                                <p class="text-sm leading-[21px] text-[#A3A6AE]">
                                    <?php echo e($article->created_at->translatedFormat('d F Y')); ?>

                                </p>
                            </div>
                        </div>
                    </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                    <p>Belum ada data terbaru...</p>
                <?php endif; ?>
            </div>

            <div class="sticky z-10 bottom-0 w-full h-[100px] bg-gradient-to-b from-[rgba(255,255,255,0.19)] to-[rgba(255,255,255,1)]"></div>
        </div>
    </div>
</section>

	</body>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('after-styles'); ?>
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css" />
<?php $__env->stopPush(); ?>

<?php $__env->startPush('after-scripts'); ?>
    <script src="<?php echo e(asset('customjs/two-lines-text.js')); ?>"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <!-- JavaScript -->
    <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
    <script src="<?php echo e(asset('customjs/carousel.js')); ?>"></script>
<?php $__env->stopPush(); ?>


<?php echo $__env->make('front.master', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH D:\laragon\www\portal_berita_kalavel\resources\views/front/index.blade.php ENDPATH**/ ?>