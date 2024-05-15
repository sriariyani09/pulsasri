@extends('layouts.template')
@section('judulh1','Admin - Pelanggan')

@section('konten')
<div class="col-md-6">
    @if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <div class="card card-secondary">
        <div class="card-header">
            <h3 class="card-title">Data Pelanggan</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form method=" POST">
            @csrf
            @method('PUT')
            <div class=" card-body">
                <div class="form-group">
                    <label for="hp">Nama</label>
                    <input type="text" class="form-control" id="nama" name="nama" placeholder=""
                        value="{{ $pelanggan->nama }}" disabled>
                </div>
                
                <div class="form-group">
                    <label for="hp">Hp</label>
                    <input type="text" class="form-control" id="hp" name="hp" value="{{ $pelanggan->hp }}"
                        disabled>
                </div>
                
            </div>
            <!-- /.card-body -->

            <div class="card-footer">

            </div>
        </form>
    </div>
</div>
@endsection
