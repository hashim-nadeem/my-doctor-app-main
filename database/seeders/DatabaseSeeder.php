<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Database\Seeders\DistrictSeeder;
use Database\Seeders\UserSeeder;
use Database\Seeders\ProvinceSeeder;
use Database\Seeders\CampusSeeder;
use Database\Seeders\SessionSeeder;
use Database\Seeders\ClassRoomSeeder;
use Database\Seeders\SubjectSeeder;
use Database\Seeders\ChapterSeeder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            UserSeeder::class,
            ProvinceSeeder::class,
            DistrictSeeder::class,
            CampusSeeder::class,
            SessionSeeder::class,
            ClassRoomSeeder::class,
            SubjectSeeder::class,
            ChapterSeeder::class,
        ]);
        
    }
}
