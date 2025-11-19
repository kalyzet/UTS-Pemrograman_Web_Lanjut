@extends('front.master')
@section('content')

<body class="font-[Poppins] pb-[83px]">
	<x-navbar/>

	{{-- 🔹 NAVBAR KATEGORI --}}
	<nav id="Category" class="max-w-[1130px] mx-auto flex justify-center items-center gap-4 mt-[30px]">
	@foreach ($categories as $cat)
		<a href="{{ route('front.category', $cat->slug) }}"
			class="rounded-full p-[12px_22px] flex gap-[10px] font-semibold transition-all duration-300 border border-[#EEF0F7] hover:ring-2 hover:ring-[#1884ff]
			{{ $cat->id === $category->id ? ' text-black ring-2 ring-[#1884ff]' : '' }}">
			<div class="flex w-6 h-6 shrink-0">
				<img src="{{ Storage::url($cat->icon) }}" alt="icon" />
			</div>
			<span>{{ $cat->name }}</span>
		</a>
	@endforeach
</nav>


	{{-- 🔹 SECTION HASIL KATEGORI --}}
	<section id="Category-result" class="max-w-[1130px] mx-auto flex items-center flex-col gap-[30px] mt-[70px]">
		<h1 class="text-4xl leading-[45px] font-bold text-center">
			Jelajahi Berita <br />
			{{ $category->name }} Kami
		</h1>

		@php
			use App\Models\ArticleNews;
			use App\Models\BannerAdvertisment;

			// ambil berita dari kategori ini
			$articles = ArticleNews::where('category_id', $category->id)
				->latest()
				->get();

			// ambil iklan aktif
			$bannerads = BannerAdvertisment::first();
		@endphp

		<div id="search-cards" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-[30px]">
			@forelse ($articles as $article)
				<a href="{{ route('front.details', $article->slug) }}" class="card">
					<div class="flex flex-col gap-4 p-[26px_20px] transition-all duration-300 ring-1 ring-[#EEF0F7] hover:ring-2 hover:ring-[#18a6ff] rounded-[20px] overflow-hidden bg-white">
						<div class="thumbnail-container h-[200px] relative rounded-[20px] overflow-hidden">
							<div class="badge absolute left-5 top-5 flex p-[8px_18px] bg-white rounded-[50px]">
								<p class="text-xs leading-[18px] font-bold uppercase">
									{{ $article->category->name }}
								</p>
							</div>
							<img src="{{ Storage::url($article->thumbnail) }}" alt="thumbnail photo"
								class="object-cover w-full h-full transition-all duration-500 group-hover:scale-105" />
						</div>
						<div class="flex flex-col gap-[6px]">
							<h3 class="text-lg leading-[27px] font-bold">
								{{ substr($article->name, 0, 55) }}{{ strlen($article->name) > 55 ? '...' : '' }}
							</h3>
							<p class="text-sm leading-[21px] text-[#A3A6AE]">
								{{ $article->created_at->translatedFormat('d F Y') }}
							</p>
						</div>
					</div>
				</a>
			@empty
				<div class="col-span-3 text-center text-gray-500">
					Belum ada berita untuk kategori ini.
				</div>
			@endforelse
		</div>
	</section>

	{{-- 🔹 IKLAN --}}
	<section id="Advertisement" class="max-w-[1130px] mx-auto flex justify-center mt-[70px]">
		<div class="flex flex-col gap-3 shrink-0 w-fit">
			@if ($bannerads)
				<a href="{{ $bannerads->link }}">
					<div class="w-[900px] h-[120px] flex shrink-0 border border-[#EEF0F7] rounded-2xl overflow-hidden">
						<img src="{{ Storage::url($bannerads->thumbnail) }}" class="object-cover w-full h-full" alt="ads" />
					</div>
				</a>
			@else
				<div class="w-[900px] h-[120px] flex items-center justify-center border border-[#EEF0F7] rounded-2xl bg-gray-100 text-gray-400">
					<p>No active advertisement available</p>
				</div>
			@endif

			<p class="font-medium text-sm leading-[21px] text-[#A3A6AE] flex gap-1">
				Iklan Kami
				<a href="#" class="w-[18px] h-[18px]">
					<img src="{{ asset('assets/images/icons/message-question.svg') }}" alt="icon" />
				</a>
			</p>
		</div>
	</section>
</body>
@endsection
