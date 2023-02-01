<?php

namespace App\Repository\About;

use App\Http\Resources\LifeStoryResource;
use App\Models\LifeStory;
use App\Models\Settings;
use App\Repository\RepositoryInterface;

class AboutSettingsRepository implements RepositoryInterface
{
    public function all()
    {
        return [];
    }

    public function paginate($perPage = 20)
    {
        return [];
    }

    public function searchWithPagination($perPage = 20, $keyword)
    {
    }

    public function searchWithoutPagination($keyword)
    {
    }

    public function show()
    {
        $s = Settings::first();
        if (!is_null($s)) {
            return $s;
        }
        return null;
    }

    public function findById($id)
    {
    }

    public function findBySlug($slug)
    {
    }

    public function store(array $data)
    {
    }

    public function storeMany(array $data)
    {
    }

    public function update($id, array $data)
    {
    }

    public function updateStatus($id, $status)
    {
    }

    public function delete($id)
    {
    }

    public function deleteMany(array $data)
    {
    }
}
