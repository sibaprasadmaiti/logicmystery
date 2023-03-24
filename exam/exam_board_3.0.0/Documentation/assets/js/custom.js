!function ($) {

  $(function(){

    // make code pretty
    window.prettyPrint && prettyPrint()

    // fix sub nav on scroll
    var $win = $(window)
      , $nav = $('.navigation')
      , navTop = $('.navigation').length && $('.navigation').offset().top - 40
      , isFixed = 0

    processScroll()

    $win.on('scroll', processScroll)

    function processScroll() {
      var i, scrollTop = $win.scrollTop()
      if (scrollTop >= navTop && !isFixed) {
        isFixed = 1
        $nav.addClass('navigation-fixed')
      } else if (scrollTop <= navTop && isFixed) {
        isFixed = 0
        $nav.removeClass('navigation-fixed')
      }
    }

    $().UItoTop({ 
      easingType: 'easeOutQuart',
      scrollSpeed: 1200
    });

  })

}(window.jQuery)

