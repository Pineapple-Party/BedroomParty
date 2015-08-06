

$(document).ready(function() {
		SC.initialize({
		  client_id: '978e422d49a50b92fa915cac4a56e5be'
		});

	 	var widget = SC.Widget(document.getElementById('soundcloud_widget'));
	 		widget.bind(SC.Widget.Events.READY, function() {
	 		widget.setVolume(80); //set default volume
	  	 	console.log('Ready...'); //playlist is loaded & ready
	 	});

	 		$('.playlist-btn-play').click(function() {
	 			widget.toggle();
	 		//$('this').attr()
	 		});
	 //restart playlist after last song
	 //maybe bind to PLAY first and then FINISH nested inside

	 	var app = app || {}; //namespacing
	 	app.current = 0;
	 	app.length = 0;
	 	widget.bind(SC.Widget.Events.PLAY, function() {
	 		widget.getCurrentSoundIndex(function(song) {
	 			app.current = song;
	 			//return song;
	 			});

	 		widget.getSounds(function(songs) {
	 			app.length = (songs.length - 1);
	 			//return songs.length;
	 		});
	 	});

	 	 widget.bind(SC.Widget.Events.FINISH, function() {
	 		 	//console.log(app.current);
	 		 	//console.log(app.length);
	 		 	if (app.current === app.length) {
	 		 		widget.skip(0);
	 		 	}
	 		 });



	 //on click, load new sc link to widget ]



	 	$('.playlist-btn-updt').click(function() {
	 		var link = decodeURIComponent($('.playlist-link').prop('value'));
	 		//console.log(link);
	  		widget.load(link);
	 	});

	 	$('.picLinks').on('click', '.pictures-btn-updt', function() {

				var src = $(this).prev().prop('value');
	 			$('html').css('background-image', 'url(' + src + ')');

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



		//pop up window
		$(".mood").on('click', function() {
			$(".popUpwindow").slideToggle();
		})



			var currentNoise = $('#currentNoise');
			var noise = ['telemarketing', 'waves', 'chatter', 'forest', 'bees', 'creepy', 'shamans', 'nature', 'rain', 'none'];
			$('#noiseSlider').change(function(){

					currentNoise.html(noise[this.value - 1]).css('color', 'green');


			});


			$('#noiseSlider').change();

			$('.playlist-btn-play span').on('click', function() {
				$(this).toggleClass('fa-play-circle-o');
				$(this).toggleClass("fa-pause");
			});

			$('.playlist-btn-sound span').on('click', function() {
				$(this).toggleClass('fa-volume-down');
				$(this).toggleClass('fa-volume-up');


		});


			});


			var addImageOpt = '<input class="pictures-link" type="text" name="picture_link" value="" placeholder="picture link">' + '<button class="pictures-btn-updt">update</button>' + '<button class="addimage" type="button" name="picture_link">+</button>';
			$('.picLinks').on('click', '.addimage', function() {

				$('.picLinks').append(addImageOpt);

			});

	});
