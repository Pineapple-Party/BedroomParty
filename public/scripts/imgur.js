$(document).ready(function() {
  (function($){
    var imageID = 'eYAJ7Ya';
    var galleryAPI = "https://api.imgur.com/3/gallery/image/" + imageID;

    $.ajax({
        url: galleryAPI,
        headers:{
            Authorization :'Client-ID 0fadbcbfac86bb4'
        },
        type: 'GET',
        dataType: 'json',
        success: function(data) { 

            console.log(data.data.link);

        },
        error: function() { console.log("ERRORZ"); }
    });

  })(jQuery);
});