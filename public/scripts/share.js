$(document).ready(function() {

 var share = share || {}; 

 function build_gallery() {
    var pic = $('.pictures-link'); 
    var pictures = $('.pictures-link').length;
    share.gallery = [];
    for (var i=0; i <= (pictures -1); i++) {

        share.gallery.push( $(pic[i]).prop('value') ); 
    }

    // $.each(pictures.prop('value'), function(picture) {
    //     pictures.push($(picture).prop('value')); 
    // }); 
    // return pictures; 

    }; 

 $('.share-btn').click(function() {
 	share.playlist = $('.playlist-link').prop('value');
    //share.noise = $('.noise-link').prop('value'); 
    build_gallery();
    share.noise = $('#noiseSlider').prop('value'); 
 	$.ajax({
        type: "post",
        url: '/bedroom/share',
        data: share,
        success: successFunc,
        error: errorFunc
    });

    function successFunc(data, status) {     
        console.log('success'); 
    }

    function errorFunc() {
        alert('error');
    }
});

});