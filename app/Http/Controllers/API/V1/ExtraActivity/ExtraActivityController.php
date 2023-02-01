<?php

namespace App\Http\Controllers\API\V1\ExtraActivity;

use App\Http\Controllers\Controller;
use App\Repository\ExtraActivity\ExtraActivityRepository;
use Illuminate\Http\Request;

class ExtraActivityController extends Controller
{
    public $extraActivityRepository;

    public function __construct(ExtraActivityRepository $extraActivityRepository)
    {
        $this->extraActivityRepository = $extraActivityRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $activities = $this->extraActivityRepository->all();
        return response()->json([
            'status' => true,
            'message' => 'Extra Activity List',
            'data' => $activities
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @param integer $typeName
     * @return \Illuminate\Http\Response
     */
    public function activityByType($typeName)
    {
        $activities = $this->extraActivityRepository->allByType($typeName);

        return response()->json([
            'status' => true,
            'message' => 'ExtraActivity List By Type',
            'data' => $activities
        ]);
    }


    public function activityTypes()
    {
        $types = $this->extraActivityRepository->allTypes();

        return response()->json([
            'status' => true,
            'message' => 'ExtraActivity List By Type',
            'data' => $types
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
