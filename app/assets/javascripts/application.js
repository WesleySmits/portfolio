// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl
//= require foundation
//= require turbolinks
//= require select2
//= require_tree .


$(function(){
  $(document).foundation();
  loadTwitterSdk();
  loadGoogleWidgetSdk();
  gapi.plusone.go();

  /*$('.select2').select2({
    width: '100%'
  });
  */
  $('a[href^="#"]').on('click', function(e) {
        e.preventDefault();

        var target = this.hash,
                $target = $(target);

        $('html, body').stop().animate({
            'scrollTop': $target.offset().top - 0
        }, 900, 'swing');
    });

  $("a").click(function() {
    link_host = this.href.split("/")[2];
    document_host = document.location.href.split("/")[2];

    if (link_host != document_host) {
      window.open(this.href);
      return false;
    }
  });

  $('#share').hover(function() {
    if($('.google img').is(":visible")) {
      $('<div class="g-plusone" data-annotation="none"></div>').appendTo('li.google');
      $('.google img').hide();
      gapi.plusone.go();
    }

    if($('.facebook img').is(":visible")) {
      $('<div class="fb-like" data-layout="button" data-action="like" data-show-faces="false" data-share="false"></div>').appendTo('li.facebook');
      $('.facebook img').hide();
      loadFacebookSdk();
    }
  });

  function loadFacebookSdk() {
    $('<div id="fb-root"></div>').prependTo('body');
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/nl_NL/sdk.js#xfbml=1&version=v2.0";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  }

  function loadTwitterSdk() {
    !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
  }

  function loadGoogleWidgetSdk() {
    window.___gcfg = {lang: 'nl'};

    (function() {
      var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
      po.src = 'https://apis.google.com/js/platform.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
  }
});
