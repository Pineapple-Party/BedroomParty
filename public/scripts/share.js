$(document).ready(function() {

 var share = share || {}; 

 function build_gallery() {
    $('.picture-link').each(function(picture) {
        pictures = []; 
        pictures.push(picture); 
    }); 
    return pictures; 
 } 

 
 // share.noise = $('.noise-link').prop('value');
 share.noise = 'https://soundcloud.com/hhazydreamss/sets/telemarketing';
 console.log(share);  


 $('.share-btn').click(function() {
 	share.playlist = $('.playlist-link').prop('value');
    //share.noise = $('.noise-link').prop('value'); 
    share.pictures = build_gallery(); 
 	$.ajax({
        type: "post",
        url: '/bedroom/share',
        data: share,
        success: successFunc,
        error: errorFunc
    });

    function successFunc(data, status) {     
        alert('success');
    }

    function errorFunc() {
        alert('error');
    }
});

 }); 