<?php

namespace App\Repository\Portfolio;

use App\Http\Resources\PortfolioResource;
use App\Models\Portfolio;
use App\Repository\RepositoryInterface;

class PortfolioRepository implements RepositoryInterface
{
    public function all($order = 'asc')
    {
        return new PortfolioResource(
            Portfolio::with('category', 'programming_technologies', 'images')
                ->orderBy('order_priority', $order)->get()
        );
    }

    public function allByCategory($category_id, $order = 'asc')
    {
        return new PortfolioResource(Portfolio::where('category_id', $category_id)
            ->with('category', 'programming_technologies', 'images')
            ->orderBy('order_priority', $order)
            ->get());
    }

    public function paginate($perPage = 20)
    {
        return new PortfolioResource(Portfolio::paginate($perPage));
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
