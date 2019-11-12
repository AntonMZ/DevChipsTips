@if($products instanceof \Illuminate\Pagination\LengthAwarePaginator )

   {{$products->links()}}

@endif