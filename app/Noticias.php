<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticias extends Model
{
    protected $fillable = [
        'Titulo','Fecha','Descripcion','Redactor'
    ];
}