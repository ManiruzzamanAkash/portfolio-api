<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    public function programming_technologies()
    {
        return $this->hasMany(PortfolioProgrammingTechnology::class, 'portfolio_id')->with('pt');
    }
    public function images()
    {
        return $this->hasMany(PortfolioImage::class, 'portfolio_id');
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
