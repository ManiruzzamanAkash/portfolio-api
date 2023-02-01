<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PortfolioProgrammingTechnology extends Model
{
    public function portfolio()
    {
        return $this->belongsTo(Portfolio::class);
    }

    public function pt()
    {
        return $this->belongsTo(ProgrammingTechnology::class, 'pt_id');
    }
}
