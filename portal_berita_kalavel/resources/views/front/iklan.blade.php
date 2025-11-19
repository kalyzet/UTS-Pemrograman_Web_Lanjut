@extends('front.master')

@section('content')
<x-navbar/>
	<nav id="Category" class="max-w-[1130px] mx-auto flex justify-center items-center gap-4 mt-[30px]">

            @foreach ($categories as $category)
            <a href="{{ route('front.category', $category->slug) }}" class="rounded-full p-[12px_22px] flex gap-[10px] font-semibold transition-all duration-300 border border-[#EEF0F7] hover:ring-2 hover:ring-[#1884ff]">
				<div class="flex w-6 h-6 shrink-0">
					<img src="{{ Storage::url($category->icon) }}" alt="icon" />
				</div>
				<span>{{ $category->name }}</span>
			</a>
            @endforeach

		</nav>
<div class="max-w-[1130px] mx-auto py-10 px-4">
    <div class="p-8 text-center bg-white rounded-lg shadow-lg">
        <div class="mb-6">
            <svg class="w-16 h-16 mx-auto text-red-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-2.5L13.732 4c-.77-.833-1.964-.833-2.732 0L4.082 16.5c-.77.833.192 2.5 1.732 2.5z"></path>
            </svg>
        </div>
        <h1 class="mb-4 text-3xl font-bold text-gray-800">Akses Terbatas</h1>
        <p class="mb-6 text-lg text-gray-600">
            Saat ini Anda belum dapat menambahkan atau mempublikasikan iklan karena akun Anda belum berada di tingkat Pro yang sesuai. Fitur penayangan iklan hanya tersedia mulai dari Pro Tingkat 2 ke atas. Dengan melakukan upgrade, Anda akan mendapatkan akses untuk memposting iklan promosi atau banner Anda di halaman berita, serta meningkatkan visibilitas dan potensi penghasilan dari konten yang Anda buat.
        </p>
        <div class="flex justify-center space-x-4">
            <a href="{{ route('front.premium') }}" class="px-6 py-2 font-semibold text-white transition duration-300 bg-[#18aaff] rounded-lg hover:bg-blue-700">
                Upgrade Sekarang
            </a>
            <a href="{{ route('front.index') }}" class="px-6 py-2 font-semibold text-gray-800 transition duration-300 bg-gray-300 rounded-lg hover:bg-gray-400">
                Kembali ke Beranda
            </a>
        </div>
    </div>
</div>
@endsection