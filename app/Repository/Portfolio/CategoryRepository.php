<?php

namespace App\Repository\Portfolio;

use App\Http\Resources\CategoryResource;
use App\Models\Category;
use App\Repository\RepositoryInterface;

class CategoryRepository implements RepositoryInterface
{
    public function all()
    {
        return new CategoryResource(Category::all());
    }

    public function paginate($perPage = 20)
    {
        return new CategoryResource(Category::paginate($perPage));
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
