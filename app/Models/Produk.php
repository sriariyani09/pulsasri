<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Produk extends Model
{
    use HasFactory;

    protected $fillable=['nama','description','stock','harga'];

    public function detiltransaksi():HasMany
    {
        return $this->hasMany(Detiltransaksi::class);
    }
}
