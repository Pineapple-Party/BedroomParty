$(document).ready(function() {
  
    
    var galleryAPI = "";
    
    $('.pictures-link').prop('value'); 
    function imgurCall() {
      $.ajax({
          url: galleryAPI,
          headers:{
              Authorization :'Client-ID 0fadbcbfac86bb4'
          },
          type: 'GET',
          dataType: 'json',
          success: function(data) { 

              console.log(data.data.link);
              return data.data.link;

          },
          error: function() { console.log("ERRORZ"); }
      });
  }
  var imgurr = imgurr || {};
  imgurr.src = imgurCall(); 
  console.log(imgurr.src); 

  
  $('#soundcloud_widget').css('display', 'none'); 
});
