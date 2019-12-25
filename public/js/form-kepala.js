$(document).ready(function(){
    $('.form-validate-jquery').validate({
        ignore: 'input[type=hidden], .select2-search__field', // ignore hidden fields
        errorClass: 'validation-invalid-label',
        successClass: 'validation-valid-label',
        validClass: 'validation-valid-label',
        highlight: function(element, errorClass) {
            $(element).removeClass(errorClass);
        },
        unhighlight: function(element, errorClass) {
            $(element).removeClass(errorClass);
        },
        // success: function(label) {
        //     label.addClass('validation-valid-label').text('Success.'); // remove to hide Success message
        // },

        // Different components require proper error label placement
        errorPlacement: function(error, element) {

            // Unstyled checkboxes, radios
            if (element.parents().hasClass('form-check')) {
                error.appendTo( element.parents('.form-check').parent() );
            }

            // Input with icons and Select2
            else if (element.parents().hasClass('form-group-feedback') || element.hasClass('select2-hidden-accessible')) {
                error.appendTo( element.parent() );
            }

            // Input group, styled file input
            else if (element.parent().is('.uniform-uploader, .uniform-select') || element.parents().hasClass('input-group')) {
                error.appendTo( element.parent().parent() );
            }

            // Other elements
            else {
                error.insertAfter(element);
            }
        },
        rules: {
            keterangan:{
              required:true
            }
        },

        messages: {
            // bidang:{
            //   required:'Harus diisi'
            // },
            custom: {
                required: 'This is a custom error message'
            },
            basic_checkbox: {
                minlength: 'Please select at least {0} checkboxes'
            },
            styled_checkbox: {
                minlength: 'Please select at least {0} checkboxes'
            },
            switchery_group: {
                minlength: 'Please select at least {0} switches'
            },
            switch_group: {
                minlength: 'Please select at least {0} switches'
            },
            agree: 'Please accept our policy'
        }
    });
});
