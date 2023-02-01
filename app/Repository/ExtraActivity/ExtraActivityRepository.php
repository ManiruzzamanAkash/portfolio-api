<?php

namespace App\Repository\ExtraActivity;

use App\Http\Resources\ExtraActivityResource;
use App\Models\ExtraActivity;
use App\Repository\RepositoryInterface;

class ExtraActivityRepository implements RepositoryInterface
{
    public function all($order = 'asc')
    {
        $activity_types = ExtraActivity::select('type as name')->groupBy('type')->get();
        foreach ($activity_types as $type) {
            $activities = ExtraActivity::where('type', $type->name)->get();
            $type['type_name'] = strtoupper(str_replace('_', ' ', $type->name));
            $type['activities'] = $activities;
        }
        return $activity_types;
    }

    public function allByType($type, $order = 'asc')
    {
        return new ExtraActivityResource(ExtraActivity::where('type', $type)
            ->orderBy('order_priority', $order)
            ->get());
    }

    public function allTypes()
    {
        // return new ExtraActivityResource(ExtraActivity::select('type as name')->groupBy('type')->get());

        $activity_types = ExtraActivity::select('type as name')->groupBy('type')->get();
        foreach ($activity_types as $type) {
            $activities = ExtraActivity::where('type', $type->name)->get();
            $type['type_name'] = strtoupper(str_replace('_', ' ', $type->name));
            $type['activities'] = $activities;
        }
        return $activity_types;
    }

    public function paginate($perPage = 20)
    {
        return new ExtraActivityResource(ExtraActivity::paginate($perPage));
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
