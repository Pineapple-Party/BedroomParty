$(document).ready(function() {

 var share = share || {}; 

 
 // share.noise = $('.noise-link').prop('value');
 share.noise = 'https://soundcloud.com/hhazydreamss/sets/telemarketing';
 console.log(share);  


 $('.share-btn').click(function() {
 	share.playlist = $('.playlist-link').prop('value');
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