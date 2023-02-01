<?php

namespace App\Http\Controllers\API\V1\About;

use App\Http\Controllers\Controller;
use App\Http\Resources\LifeStoryResource;
use App\Http\Resources\Collections\BrandCollection;
use App\Models\LifeStory;
use App\Repository\About\LifeStoryRepository;
use Illuminate\Http\Request;

class LifeStoryController extends Controller
{
    public $LifeStoryRepository;

    public function __construct(LifeStoryRepository $LifeStoryRepository)
    {
        $this->LifeStoryRepository = $LifeStoryRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $order = 'asc';
        if ($request->order) {
            $order = $request->order;
        }
        $lifeStories = $this->LifeStoryRepository->all($order);

        return response()->json([
            'status' => true,
            'message' => 'LifeStory List',
            'data' => $lifeStories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
