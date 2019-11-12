@foreach($servers as $server)
    @php
        /** @var \App\Http\Controllers\Admin\Servers\ServersController $server */
    @endphp
    <tr>
        <td>{{ ($servers->currentPage() - 1) * $servers->perPage() + $loop->iteration }}</td>
        <td>{{ long2ip($server->addr) }}</td>
        <td>{{ $server->description }}</td>
        <td>
            @if($server->enable == 1)
                <i class="fa fa-server text-success"></i>
            @else
                <i class="fa fa-server text-danger"></i>
            @endif
        </td>
        <td>
            <a href="{{route('servers.show',$server->id)}}"
                class="btn btn-sm bg-gradient-info" title="Просмотр сервера">
                <i class="fa fa-server"></i>
            </a>
        </td>
    </tr>
@endforeach