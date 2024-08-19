<?php

namespace Database\Factories;

use App\Models\Orderpaper;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderpaperFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Orderpaper::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'question' => $this->faker->sentence(),
            'response' => $this->faker->sentence(),
        ];
    }
}
