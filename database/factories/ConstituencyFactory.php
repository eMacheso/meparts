<?php

namespace Database\Factories;

use App\Models\Constituency;
use Illuminate\Database\Eloquent\Factories\Factory;

class ConstituencyFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Constituency::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->sentence(),
        ];
    }
}
