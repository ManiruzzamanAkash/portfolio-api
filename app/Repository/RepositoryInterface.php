<?php

namespace App\Repository;

interface RepositoryInterface
{
    public function all();

    public function paginate($perPage = 20);

    public function searchWithPagination($perPage = 20, $keyword);

    public function searchWithoutPagination($keyword);

    public function findById($id);

    public function findBySlug($slug);

    public function store(array $data);

    public function storeMany(array $data);

    public function update($id, array $data);

    public function updateStatus($id, $status);

    public function delete($id);

    public function deleteMany(array $data);
}
