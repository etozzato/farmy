//= require  active_admin/base
//= require active_material
//= require chosen.jquery.min
// $(document).ready(lims.init)
$(document).ready(function(){
  $(".chosen-select").chosen()

  $( "input.lookup" ).blur(function( event ) {
    var value = event.target.value
    $.ajax({
      url: 'http://www.nif.pt/?json=1&q=' + value,
      dataType: 'json',
      type: 'GET',
      success: function (result) {
        console.log(result);
      },
      error: function (err) {
        console.log(err);
        $('<div class="flashes"><div class="flash flash_error">An Error Occurred</div></div>').insertAfter('#title_bar')
      }
    });

    // var jqxhr = $.getJSON( 'http://www.nif.pt/?json=1&q=' + value + '&callback=?', function() {
    //   console.log( "success" );
    // })
    //   .done(function() {
    //     console.log( "second success" );
    //   })
    //   .fail(function() {
    //     console.log( "error" );
    //   })
    //   .always(function() {
    //     console.log( "complete" );
    //   });

    // Perform other work here ...

    // Set another completion function for the request above
    // jqxhr.complete(function() {
    //   console.log( "second complete" );
    // });

    event.preventDefault()
  })
})
