<?php

namespace Database\Factories;

use App\Models\Author;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Book>
 */
class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title' => $this->faker->word(),
            'description' => $this->faker->paragraph(),
            'image' => 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg',
            'author_id' => Author::factory(),
            'category_id' => Category::factory(),
            'price' => $this->faker->randomFloat(2, 5, 100),
        ];
    }
}
