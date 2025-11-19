<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        $categories = [
            ['name' => 'Health', 'slug' => 'health', 'icon' => 'heroicon-o-heart'],
            ['name' => 'Business', 'slug' => 'business', 'icon' => 'heroicon-o-chart-bar'],
            ['name' => 'Automotive', 'slug' => 'automotive', 'icon' => 'heroicon-o-truck'],
            ['name' => 'Entertainment', 'slug' => 'entertainment', 'icon' => 'heroicon-o-film'],
            ['name' => 'Foods', 'slug' => 'foods', 'icon' => 'heroicon-o-cup'],
            ['name' => 'Politics', 'slug' => 'politics', 'icon' => 'heroicon-o-building-library'],
            ['name' => 'Sport', 'slug' => 'sport', 'icon' => 'heroicon-o-trophy'],
        ];

        foreach ($categories as $cat) {
            Category::updateOrCreate(
                ['slug' => $cat['slug']],
                [
                    'name' => $cat['name'],
                    'icon' => $cat['icon'],
                ]
            );
        }
    }
}
