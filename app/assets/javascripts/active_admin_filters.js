$(document).ready(function(){
  $('select').chosen({allow_single_deselect:true, search_contains: true})
  if(!window.location.search.includes('Filter')){ $('div#sidebar').hide() }
  $('div.action_items').append('<span class="action_item"><a id="toggle_filters" href="#">Filters</a></span>')
  $('a#toggle_filters').click(function(){ $('div#sidebar').toggle() })
})
