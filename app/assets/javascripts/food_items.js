var url_string = window.location.href
var url = new URL(url_string);
var food_item_name = url.searchParams.get("term");
$(document).ready(function(){
  
  $("#filter").change(function(){
    $.ajax({
    	url:'/search',
    	type:'get',
    	data:{filter:this.value,term:food_item_name},
    	dataType: 'script',
    		success:function(){}
    })
  });

  $("#ratingfilter").change(function(){
    $.ajax({
    	url:'/search',
    	type:'get',
    	data:{ratingfilter:this.value,term:food_item_name},
    	dataType: 'script',
    		success:function(){}
    })
  });

  $(".tagging_checker").change(function(){-
    $('.select_btn').text('')
     var food_items = [];
     var btn_text = [];
     $(':checkbox:checked').each(function(i){
       btn_text.push($(this).siblings('.tag_title').text())
      console.log(btn_text)
       food_items[i] = $(this).attr("id");

   });
    $('.select_btn').text(btn_text)

     console.log(food_items)
     $.ajax({
     url: '/search',
     type: 'get',
     dataType: 'script',
     data: {taggingfilter: food_items,term:food_item_name},
       success: function(repsonse){}
   });
 });

  var slider = $("#range_slider").slider({
    range: true,
    min: 0,
    max: 500,
    values: [0, 500],
    slide: function(event, ui) {
      var x = ui.values[0];
      var y = ui.values[1];
      $('#min').text( ui.values[0] )
      $('#max').text( ui.values[1] )
      $.ajax({
        url: '/search',
        type: 'GET',
        dataType: 'script',
        data: {min:x, max:y,term:food_item_name},
        success: function(repsonse){},
      });
    }
  });
});

var map;
var marker;
function initMap() {
  map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: {lat: 17.0005, lng: 81.804},
    zoom: 8,
  });
  var x = gon.locations
  for (var i = 0; i<x.length; i++){
    marker = new google.maps.Marker({
    position: {lat: x[i].latitude, lng: x[i].longitude},
    map: map,
    title: 'Brundavanam & Aharam  Availble & Famous Restaurants'
  });  
  }
}

