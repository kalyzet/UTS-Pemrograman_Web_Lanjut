<?php

namespace App\Http\Controllers;

use App\Models\ArticleNews;
use App\Models\Author;
use App\Models\BannerAdvertisment;
use App\Models\Category;
use Illuminate\Http\Request;


class FrontController extends Controller
{
    //
    public function index()
{
    $categories = Category::all();

    $articles = ArticleNews::with(['category'])
        ->where('is_featured', 'not_featured')
        ->latest()
        ->take(3)
        ->get();

    $featured_articles = ArticleNews::with(['category'])
        ->where('is_featured', 'featured')
        ->inRandomOrder()
        ->take(3)
        ->get();

    $authors = Author::all();

    $bannerads = BannerAdvertisment::where('is_active', 'active')
        ->where('type', 'banner')
        ->inRandomOrder()
        ->first();

    // 🎬 Entertainment
    $entertainment_articles = ArticleNews::whereHas('category', function ($query) {
            $query->where('name', 'Hiburan');
        })
        ->where('is_featured', 'not_featured')
        ->latest()
        ->take(6)
        ->get();

    $entertainment_featured_articles = ArticleNews::whereHas('category', function ($query) {
            $query->where('name', 'Hiburan');
        })
        ->where('is_featured', 'featured')
        ->inRandomOrder()
        ->first();

    // 💼 Business
    $business_articles = ArticleNews::whereHas('category', function ($query) {
            $query->where('name', 'Bisnis');
        })
        ->where('is_featured', 'not_featured')
        ->latest()
        ->take(6)
        ->get();

    $business_featured_articles = ArticleNews::whereHas('category', function ($query) {
            $query->where('name', 'Bisnis');
        })
        ->where('is_featured', 'featured')
        ->inRandomOrder()
        ->first();

        // 🏆 Sport
$sport_articles = ArticleNews::whereHas('category', function ($query) {
        $query->where('name', 'Olahraga');
    })
    ->where('is_featured', 'not_featured')
    ->latest()
    ->take(6)
    ->get();

$sport_featured_articles = ArticleNews::whereHas('category', function ($query) {
        $query->where('name', 'Olahraga');
    })
    ->where('is_featured', 'featured')
    ->inRandomOrder()
    ->first();


    return view('front.index', compact(
        'entertainment_featured_articles',
        'entertainment_articles',
        'business_featured_articles',
        'business_articles',
        'categories',
        'sport_featured_articles', 
    'sport_articles', 
        'articles',
        'authors',
        'featured_articles',
        'bannerads'
    ));
}

    public function category(Category $category){
    $categories = Category::all();
    $bannerads = BannerAdvertisment::where('is_active','active')
    ->where('type','banner')
    ->inRandomOrder()
    ->first();

    return view('front.category', compact('category', 'categories', 'bannerads'));
}
public function author(Author $author){
    $categories = Category::all();
    $bannerads = BannerAdvertisment::where('is_active','active')
    ->where('type','banner')
    ->inRandomOrder()
    ->first();

    return view('front.author', compact('categories', 'author', 'bannerads'));
}
public function search(Request $request){

    $request->validate([
        'keyword' => ['required', 'string', 'max:255'],
    ]);

    $categories = Category::all();

    $keyword = $request->keyword;

    $articles = ArticleNews::with(['category', 'author'])
    ->where('name', 'like', '%' . $keyword . '%')->paginate(6);

    return view('front.search', compact('articles', 'keyword', 'categories'));

}

public function details(ArticleNews $articleNews)
{
    $categories = Category::all();

    // Artikel lain (sidebar bawah)
    $articles = ArticleNews::with(['category'])
        ->where('is_featured', 'not_featured')
        ->where('id', '!=', $articleNews->id)
        ->latest()
        ->take(3)
        ->get();

    // Iklan banner besar di bagian bawah
    $bannerads = BannerAdvertisment::where('is_active', 'active')
    ->whereRaw('LOWER(type) = "banner"')
    ->inRandomOrder()
    ->first();

// 🟧 Ambil square ads (iklan kotak)
$square_ads_1 = BannerAdvertisment::where('is_active', 'active')
    ->whereRaw('LOWER(type) = "square"')
    ->inRandomOrder()
    ->first();

$square_ads_2 = BannerAdvertisment::where('is_active', 'active')
    ->whereRaw('LOWER(type) = "square"')
    ->inRandomOrder()
    ->skip(1)
    ->first();


    // Artikel lain dari author yang sama
    $author_news = ArticleNews::where('author_id', $articleNews->author_id)
        ->where('id', '!=', $articleNews->id)
        ->latest()
        ->take(3)
        ->get();

    return view('front.details', compact(
        'articleNews',
        'categories',
        'articles',
        'bannerads',
        'square_ads_1',
        'square_ads_2',
        'author_news'
    ));
}

public function premium()
{
    $categories = Category::all(); // ambil semua kategori
    return view('front.premium', compact('categories'));
}

}
