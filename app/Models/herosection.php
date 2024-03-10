<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Permission\Traits\HasRoles;

class herosection extends Model
{
    use HasFactory,HasRoles;

    protected $fillable = [
        'title',
        'sub_title',
        'description',
        'image',
        'action_btn',
        'action_link'
    ];
}
