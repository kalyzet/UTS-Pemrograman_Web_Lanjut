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
    <div class="mb-10 text-center">
        <h1 class="mb-4 text-3xl font-bold text-gray-800">Upgrade ke Premium</h1>
        <p class="text-lg text-gray-600">Pilih paket kontributor yang sesuai dengan gaya menulismu. Dapatkan akses ke fitur eksklusif, peluang monetisasi, dan dukungan prioritas untuk karya beritamu.</p>
    </div>

    <div class="grid grid-cols-1 gap-8 md:grid-cols-3">
        <!-- Pro Tingkat 1 -->
        <div class="p-6 transition-shadow duration-300 bg-white border border-gray-200 rounded-lg shadow-lg hover:shadow-xl">
            <h2 class="mb-4 text-2xl font-semibold text-gray-800">Pro Tingkat 1</h2>
            <div class="mb-2 text-4xl font-bold text-[#2609fd]">Rp 299.000<span class="text-lg font-normal">/bulan</span></div>
            <p class="mb-6 text-gray-600">Paket awal untuk kontributor yang ingin mulai menulis dan mendapatkan penghasilan dari berita.</p>
            <ul class="mb-6 space-y-2 text-gray-700">
                <li>✓ Dapat menulis & mempublikasikan hingga 3 berita per hari</li>
                <li>✓ Akses ke fitur editor dasar (teks, gambar, kategori, tag)</li>
                <li>✓ Profil penulis tampil di setiap berita</li>
                <li>✓ Statistik pembaca mingguan</li>
                <li>✓ Monetisasi aktif (bagi hasil hingga 30% dari pendapatan iklan berita)</li>
                <li>✓ Dukungan via email</li>
            </ul>
            <button onclick="window.location='{{ route('front.index') }}'" class="w-full px-4 py-2 text-white transition-colors duration-300 bg-[#2609fd] rounded-lg hover:bg-[#150491]">Berlangganan Sekarang</button>
        </div>

        <!-- Pro Tingkat 2 -->
        <div class="relative p-6 transition-shadow duration-300 bg-white border border-gray-200 rounded-lg shadow-lg hover:shadow-xl">
            <div class="absolute top-0 px-4 py-1 text-sm font-semibold text-white transform -translate-x-1/2 -translate-y-1/2 bg-[#095efd] rounded-full left-1/2">Paling Populer</div>
            <h2 class="mb-4 text-2xl font-semibold text-gray-800">Pro Tingkat 2</h2>
            <div class="mb-2 text-4xl font-bold text-[#095efd]">Rp 599.000<span class="text-lg font-normal">/bulan</span></div>
            <p class="mb-6 text-gray-600">Paket lengkap untuk jurnalis aktif yang ingin meningkatkan penghasilan dan membangun audiens.</p>
            <ul class="mb-6 space-y-2 text-gray-700">
                <li>✓ Semua fitur Pro Tingkat 1</li>
                <li>✓ Bisa menulis sebanyak 10 berita per hari</li>
                <li>✓ Dapat menampilkan 1 iklan personal per minggu</li>
                <li>✓ Fitur penjadwalan publikasi otomatis</li>
                <li>✓ Akses ke dashboard analitik lanjutan (view, engagement, sumber trafik)</li>
                <li>✓ Monetisasi aktif (bagi hasil hingga 50% dari pendapatan iklan berita)</li>
                <li>✓ Dukungan chat langsung 24/7</li>
            </ul>
<button onclick="window.location='{{ route('front.index') }}'"
   class="w-full px-4 py-2 text-white transition-colors duration-300 bg-[#095efd] rounded-lg hover:bg-[#0844b4]">
   Berlangganan Sekarang
</button>
        </div>

        <!-- Pro Tingkat 3 -->
        <div class="p-6 transition-shadow duration-300 bg-white border border-gray-200 rounded-lg shadow-lg hover:shadow-xl">
            <h2 class="mb-4 text-2xl font-semibold text-gray-800">Pro Tingkat 3</h2>
            <div class="mb-2 text-4xl font-bold text-[#097ffd]">Rp 999.000<span class="text-lg font-normal">/bulan</span></div>
            <p class="mb-6 text-gray-600">Paket premium penuh untuk media profesional dan kontributor besar yang ingin maksimalin potensi berita dan penghasilan.</p>
            <ul class="mb-6 space-y-2 text-gray-700">
                <li>✓ Semua fitur Pro Tingkat 2</li>
                <li>✓ Bisa menulis hingga 20 berita per hari</li>
                <li>✓ Dapat memposting hingga 5 iklan promosi per minggu</li>
                <li>✓ Monetisasi penuh (bagi hasil hingga 70% dari pendapatan iklan berita)</li>
                <li>✓ Kolaborasi multi-penulis dalam satu berita</li>
                <li>✓ Fitur AI Editor & Headline Optimizer untuk bantu potensi viral</li>
                <li>✓ Dukungan prioritas via telepon dan konsultasi konten profesional</li>
            </ul>
            <button onclick="window.location='{{ route('front.index') }}'" class="w-full px-4 py-2 text-white transition-colors duration-300 bg-[#097ffd] rounded-lg hover:bg-[#074f9c]">Berlangganan Sekarang</button>
        </div>
    </div>

    <div class="mt-10 text-center">
        <p class="text-gray-600">Semua paket dapat dibatalkan kapan saja. Harga tercantum dalam Rupiah dan belum termasuk pajak yang berlaku.</p>
    </div>
</div>
@endsection