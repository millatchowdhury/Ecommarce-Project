<form action="{{ route('childcategory.update') }}" method="POST" id="add-form">
    @csrf
    <div class="modal-body">
        <div class="form-group">
          <label for="category_name">Category/Subcategory Name</label>
            <select name="subcategory_id" id="" class="form-control">
               @foreach ($category as $row)
                 
                    <option disabled style="color:blue;" value>{{$row->category_name}}</option>

                 @php
                  $subcat = DB::table('subcategories')->where('category_id', $row->id)->get();
                 @endphp
                 @foreach ($subcat as $row)
                   <option value="{{$row->id}}" @if ($row->id == $data->subcategory_id) selected @endif>
                        ----{{$row->subcategory_name}}</option>
                 @endforeach
               @endforeach
                
            </select>
        </div>
        <input type="hidden" name="id" value="{{$data->id}}">
        <div class="form-group">
            <label for="subcategory_name">Child Category Name</label>
            <input type="text" class="form-control" name="childcategory_name" value="{{$data->childcategory_name}}">
        </div>
    </div>
    <div class="modal-footer">
      {{-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> --}}
      <button type="submit" class="btn btn-primary"><span class="d-none">Loading</span>Update</button>
    </form>