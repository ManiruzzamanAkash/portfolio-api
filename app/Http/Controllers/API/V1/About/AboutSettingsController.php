<?php

namespace App\Http\Controllers\API\V1\About;

use App\Http\Controllers\Controller;
use App\Repository\About\AboutSettingsRepository;
use Illuminate\Http\Request;

class AboutSettingsController extends Controller
{
    public $aboutSettingsRepository;

    public function __construct(AboutSettingsRepository $aboutSettingsRepository)
    {
        $this->aboutSettingsRepository = $aboutSettingsRepository;
    }

    public function show()
    {
        return response()->json([
            'status' => true,
            'message' => 'About Page Data',
            'data' => $this->aboutSettingsRepository->show()
        ]);
    }
}
