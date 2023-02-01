<?php

namespace App\Repository\About;

use App\Http\Resources\LifeStoryResource;
use App\Models\LifeStory;
use App\Repository\RepositoryInterface;

class LifeStoryRepository implements RepositoryInterface
{
    public function all($order = 'asc')
    {
        return new LifeStoryResource(LifeStory::orderBy('order_priority', $order)
            ->get());
    }

    public function paginate($perPage = 20, $order = 'asc')
    {
        return new LifeStoryResource(LifeStory::orderBy('order_priority', $order)
            ->paginate($perPage));
    }

    public function searchWithPagination($perPage = 20, $keyword)
    {
    }

    public function searchWithoutPagination($keyword)
    {
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
