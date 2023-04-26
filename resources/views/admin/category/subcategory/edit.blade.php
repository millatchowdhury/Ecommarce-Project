<form action="{{ route('subcategory.update') }}" method="POST">
    @csrf
<div class="modal-body">
    <input type="hidden" name="id" value="{{$data->id}}">

    <div class="form-group">
        <select name="category_id" class="form-control">
            @foreach ($category as $row)
                <option value="{{$row->id}}" @if($row->id == $data->category_id) selected @endif>{{$row->category_name}}</option>
                
            @endforeach
            
        </select>
    </div>

        <div class="form-group">
          <label for="subcategory_name">Sub Category Name</label>
          <input type="text" class="form-control" value="{{$data->subcategory_name}}" name="subcategory_name" id="subcategory_name">
        </div>
</div>
<div class="modal-footer">
  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  <button type="submit" class="btn btn-primary">Update Category</button>
</form>