<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Post extends Model
{
    use SoftDeletes;
     protected $fillable = [
        'title',
        'body',
        'user_id'
    ];
    protected $dates = ['deleted_at'];

    public function comments()
    {
        return $this->hasMany(Comment::class)->whereNull('parent_id');
    }

}
