

$(document).ready(function() {
		SC.initialize({
		  client_id: '978e422d49a50b92fa915cac4a56e5be'
		});

	 	var widget = SC.Widget(document.getElementById('soundcloud_widget'));
	 		widget.bind(SC.Widget.Events.READY, function() {
	 		widget.setVolume(80); //set default volume 
	  	 	console.log('Ready...'); //playlist is loaded & ready
	 	});
	 //restart playlist after last song 
	 //maybe bind to PLAY first and then FINISH nested inside

	 	

	 	widget.bind(SC.Widget.Events.PLAY, function() {
	 		var current = widget.getCurrentSoundIndex(function(song) {
	 			console.log(song); 	
	 			}); 
	 	});

	 	 widget.bind(SC.Widget.Events.FINISH, function() {
	 		 	console.log('finished'); 
	 			widget.skip(0);  
	 		 });
	 	


	 //on click, load new sc link to widget 
	 	$('.playlist-btn-updt').click(function() {
	 		console.log('clicked'); 
	 		var link = decodeURIComponent($('.playlist-link').prop('value')); 
	 		console.log(link);
	  		widget.load(link);
	 	});

	 	$('.playlist-btn-play').click(function() {
	 		//toggle play and change icon on click
	 		console.log('play clicked');
	 		widget.toggle(); 
	 		//$('this').attr()  
	 	}); 

		$('.playlist-btn-sound').click(function() {
	 		//toggle volume and change icon on click
	 		widget.getVolume(function(vol) {
	 			if (vol === 0) {
	 				widget.setVolume(80); 
	 			} 
	 			else if (vol === 80) {
	 				widget.setVolume(0);
	 			}
	 			else //default if weird value glitch 
	 				widget.setVolume(80); 
	 		}); 
	 		 
	 	}); 

		$('.playlist-btn-next').click(function() {
	 		//next song  
	 		widget.next(); 
	 	}); 

		$('.playlist-btn-prev').click(function() {
			//previous song
			widget.prev(); 
		}); 


});

