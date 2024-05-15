<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detiltransaksi extends Model
{
    use HasFactory;

    protected $fillable=['transaksi_id','produk_id','qty','price'];
}
