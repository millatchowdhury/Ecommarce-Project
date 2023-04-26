<form action="{{ route('update.pickup.point') }}" method="POST" id="edit_form">
    @csrf
    <div class="modal-body">
        <div class="form-group">
            <label for="coupon_code">Pickup Point Name <span class="text-danger">*</span></label>
            <input type="text" class="form-control" value="{{$data->pickup_point_name}}" name="pickup_point_name" required>
        </div>
        <input type="hidden" name="id" value="{{$data->id}}">
        <div class="form-group">
            <label for="coupon_code">Address <span class="text-danger">*</span></label>
            <input type="text" class="form-control" value="{{$data->pickup_point_address}}" name="pickup_point_address" required>
        </div>
        <div class="form-group">
            <label for="coupon_code">Phone <span class="text-danger">*</span></label>
            <input type="text" class="form-control" value="{{$data->pickup_point_phone}}" name="pickup_point_phone" required>
        </div>
        <div class="form-group">
            <label for="coupon_code">Another Phone</label>
            <input type="text" class="form-control" value="{{$data->pickup_point_phone_two}}" name="pickup_point_phone_two" required>
        </div>

    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      <button type="submit" class="btn btn-primary"><span class="loading d-none">Loading....</span> Submit</button>
    </form>


    
<script type="text/javascript">
    //update form
$('#edit_form').submit(function(e){
e.preventDefault();
var url = $(this).attr('action');
var request = $(this).serialize();
$.ajax({
    url:url,
    type:'post',
    async:false,
    data:request,
    success:function(data){
        toastr.success(data);
        $('#edit_form')[0].reset();
        $('#editModal').modal('hide');
        table.ajax.reload();
    }
});
});
</script>

