<!DOCTYPE html>
<html>
<head>
    <title>Laravel Dependent </title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<div class="container">
    <h3 class="text-center" style="margin-bottom: 20px;">Lab Test User</h3>
     <div class="col-md-8 col-md-offset-2">
    	<div class="panel panel-default">
	      	<div class="panel-heading">Lab Department</div>

              @if (session('status'))
                <h6 class="alert alert-success">{{ session('status') }}</h6>
            @endif
            <form action="{{url('lab-test')}}" method="Post">
                @csrf
                <div class="panel-body">
                    <div class="form-group">
                        <label for="title">Select Department:</label>
                        <select name="lab_department" class="form-control">
                            <option value="">Select Department</option>
                            @foreach ($lab_department as $key => $value)
                                <option value="{{ $key }}">{{ $value }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="title">Parent Lab Lest</label>
                        <select name="parent_lab_test[]"  
                         value="parent_lab_test" class="form-control" multiple="multiple">

                        </select>
                    </div> 
                </div>
                <input type="submit">
            </form>
      	</div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('select[name="lab_department"]').on('change', function() {
            var stateID = $(this).val();
            if(stateID) {
                $.ajax({
                    url: '/parent_lab_test/'+stateID,
                    type: "GET",
                    dataType: "json",
                    success:function(data) {                      
                        $('select[value="parent_lab_test"]').empty();
                        $.each(data, function(key, value) {
                        $('select[value="parent_lab_test"]').append('<option value="'+ key +'">'+ value +'</option>');
                        });
                    }
                });
            }else{
                $('select[value="parent_lab_test"]').empty();
            }
        });
    });
</script>
</body>
</html>
 
