

    <form action="{{ route('warehouse.update') }}" method="POST" id="add-form">
        @csrf
        <div class="modal-body">

            <div class="form-group">
                <label for="subcategory_name">Warehouse Name</label>
                <input type="text" class="form-control" name="warehouse_name" placeholder="Warehouse Name" value="{{$warehouse->warehouse_name}}" required>
            </div>
            <input type="hidden" name="id" value="{{$warehouse->id}}">
            
            <div class="form-group">
                <label for="subcategory_name">Warehouse Address</label>
                <input type="text" class="form-control" name="warehouse_address"value="{{$warehouse->warehouse_address}}" placeholder="Warehouse Address" required>
            </div>

            <div class="form-group">
                <label for="subcategory_name">Warehouse Phone</label>
                <input type="text" class="form-control" name="warehouse_phone" value="{{$warehouse->warehouse_phone}}" placeholder="Warehouse Phone" required>
            </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary"><span class="d-none loader"><i class="fas faa-spinner"></i> Loading</span><span class="submit_btn">Update</span></button>
        </form>
   
