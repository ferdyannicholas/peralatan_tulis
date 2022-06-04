@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"  style="background-color: #99dacb;"><h4 class="font-weight-bold">Products</h4>

                </div>
                <div class="card-body"  style="background-color: #f5f6f5;">
                    @if(Session::has('error'))
                    @include('layouts.flash-error',[ 'message'=> Session('error') ])
                    @endif

                    <form action="{{url('/products')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id">
                        <div class="form-group">
                            <label for="product">Nama Produk</label>
                            <input type="text" class="form-control" name="name" value="{{ old('name') }}">
                            @include('layouts.error', ['name' => 'name'])
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="price">Harga</label>
                                    <input type="number" class="form-control" name="price" value="{{ old('price') }}">
                                    @include('layouts.error', ['name' => 'price'])
                                </div>

                                <div class="form-group">
                                    <label>Gambar</label>
                                    <div>
                                        <div class="custom-file">
                                            <br>
                                            <input name="image" id="image" type="file" class="custom-file-input" accept="image/*"
                                                onchange="document.getElementById('output').src = window.URL.createObjectURL(this.files[0])"><label
                                                class="custom-file-label">Choose File</label>
                                        </div>
                                    </div>

                                    <div class="col-sm-12"><img id="output" src="" class="img-fluid"></div>
                                    @include('layouts.error', ['name' => 'image'])
                                </div>
                            </div>

                            <div class="col">
                                <div class="form-group">
                                    <label for="qty">Stock</label>
                                    <input type="number" class="form-control" name="qty" value="{{ old('qty') }}">
                                    @include('layouts.error', ['name' => 'qty'])
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="description">Deskripsi</label>
                            <textarea name="description" cols="30" rows="10" class="form-control">{{ old('description') }}</textarea>
                            @include('layouts.error', ['name' => 'description'])
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-info btn-block">Submit Product</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection