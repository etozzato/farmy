//= require  active_admin/base
//= require active_material
//= require chosen.jquery.min
// $(document).ready(lims.init)
$(document).ready(function(){
  $(".chosen-select").chosen()

  $( "input.lookup" ).blur(function( event ) {
    var value = event.target.value
    $.ajax({
      url: '/api/companies/' + value + '/nif',
      dataType: 'json',
      type: 'GET',
      success: function (result) {
        var obj = result.records[value];
        $('input#company_name').val(obj.title)
        $('input#company_description').val(obj.text_activity)
        $('input#company_address').val(obj.address)
        $('input#company_city').val(obj.city)
        $('input#company_phone').val(obj.contacts.phone)
        $('input#company_email').val(obj.contacts.email)
        $('input#company_website').val(obj.contacts.website)
      },
      error: function (err) {
        $('<div class="flashes"><div class="flash flash_error">An Error Occurred</div></div>').insertAfter('#title_bar')
      }
    });

    event.preventDefault()
  })
})
