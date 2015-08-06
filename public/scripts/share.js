$(document).ready(function() {

 var share = share || {}; 
 share.playlist ="pl";
 share.noise = "noise";
 share.user_id = "id";
 console.log(share);  


 $('.share-btn').click(function() {
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