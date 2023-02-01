<?php

namespace App\Http\Controllers\dummy;

use App\Http\Controllers\Controller;
use App\Models\Portfolio;
use App\Models\Settings;

class APILinkFixer extends Controller
{
    public function toggleLinks($type = 1)
    {
        $from_url = "http://127.0.0.1:8200/MyPortfolioAPI";
        $to_url = "https://akash.devsenv.com/api";

        if ($type == 2) {
            $from_url = "https://akash.devsenv.com/api";
            $to_url = "http://127.0.0.1:8200/MyPortfolioAPI";
        }

        $portfolios = Portfolio::all();
        foreach ($portfolios as $portfolio) {
            $new_image = str_replace($from_url, $to_url, $portfolio->image);
            $new_logo = str_replace($from_url, $to_url, $portfolio->logo);
            $portfolio->logo = $new_logo;
            $portfolio->image = $new_image;
            $portfolio->save();

            // Rename all portfolio images
            foreach ($portfolio->images as $pImage) {
                $new_image_slider = str_replace($from_url, $to_url, $pImage->image);
                $pImage->image = $new_image_slider;
                $pImage->save();
            }
        }

        // Change settings table image
        $settings = Settings::first();
        $settings->logo = str_replace($from_url, $to_url, $settings->logo);
        $settings->profile_image = str_replace($from_url, $to_url, $settings->profile_image);
        $settings->favicon = str_replace($from_url, $to_url, $settings->favicon);
        $settings->save();


        if ($type == 2) {
            echo 'All Reback from live to local';
        } else {
            echo 'All converted to live url';
        }
    }
}
