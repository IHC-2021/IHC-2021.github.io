$(function() {
    var unslider = $('.banner').unslider({
        autoplay: true,           //  Automatically start the slideshow 							[default: false]
        // speed: 1000,              //  The speed to animate each slide (in milliseconds) 		[default: 750]
        delay: 4000,              //  The delay between slide animations (in milliseconds)	[default: 3000]
        nav: true,                //  Generate an automatic clickable navigation for each slide in your slider [default: true]
        infinite: true,
        arrows: false,             //  Show the nav arrows [default: false]
        dots: true,
        keys: true,
    });

    $('.unslider-arrow').click(function() {
        var fn = this.className.split(' ')[1];
        unslider.data('unslider')[fn]();
    });

    $('.increment-btn').click(function(event) {
        var incrementedCount = Number($(event.target).parent().find('span').text()) + 1;
        $(event.target).parent().find('span').text(incrementedCount);
    });

    $('.decrement-btn').click(function(event) {
        var currentCount = Number($(event.target).parent().find('span').text());
        if (currentCount > 1) {
            var decrementedCount = currentCount - 1;
            $(event.target).parent().find('span').text(decrementedCount);
        }
    });
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

