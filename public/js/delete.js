
/**
* Theme: Ubold Admin Template
* Author: Coderthemes
* SweetAlert
*/


//Parameter
function delete_data(id){
  var swalInit = swal.mixin({
    buttonsStyling: false,
    confirmButtonClass: 'btn btn-primary',
    cancelButtonClass: 'btn btn-light'
  });

  var form = $("#delete_data"+id);
  swalInit({
    title: 'Are you sure?',
    text: "You won't be able to revert this!",
    type: 'warning',
    showCancelButton: true,
    confirmButtonText: 'Yes, delete it!',
    cancelButtonText: 'No, cancel!',
    confirmButtonClass: 'btn btn-success',
    cancelButtonClass: 'btn btn-danger',
    buttonsStyling: false
  }).then(function(result) {
    if(result.value) {
        $.ajaxSetup({
         headers: {
             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
         }
     });
      $.ajax({
        url:form.attr('action'),
        type:"DELETE",
        // data:{'_method':'delete'},
        success:function(res){
          if(res.error){
            swalInit(
              'Error!',
              res.error,
              'error'
            )
          }else{
            swalInit(
              'Deleted!',
              'Your file has been deleted.',
              'success'
            ).then(function(){
              window.location = res.url;
            });
          }
        }
      });
    }
    else if(result.dismiss === swal.DismissReason.cancel) {
      swalInit(
        'Cancelled',
        'Your data is safe :)',
        'error'
      );
    }
  });


}

//init
