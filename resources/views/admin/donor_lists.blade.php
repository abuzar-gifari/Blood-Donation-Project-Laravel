@extends('admin.layout.app')

@section('heading', 'All Donars')

@section('content')
<div class="section-body">
    <h2>Total Blood Donors : {{ $total }}</h2>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Full Name</th>
                                    <th>Gender</th>
                                    <th>Blood Group</th>
                                    <th>Mobile Number</th>
                                    <th>Town</th>
                                    <th>State</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($blood_donors as $blood_donor)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>
                                        {{ $blood_donor->fullname }}
                                    </td>
                                    <td>
                                        {{ $blood_donor->sex }}
                                    </td>
                                    <td>
                                        {{ $blood_donor->bloodgroup }}
                                    </td>
                                    <td>
                                        {{ $blood_donor->mobile }}
                                    </td>
                                    <td>
                                        {{ $blood_donor->town }}
                                    </td>
                                    <td>
                                        {{ $blood_donor->state }}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection