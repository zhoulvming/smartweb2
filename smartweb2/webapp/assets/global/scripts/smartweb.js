/**
Core script to handle the entire theme and core functions
**/
var Smartweb = function() {

    // IE mode
    var isRTL = false;
    var isIE8 = false;
    var isIE9 = false;
    var isIE10 = false;

    // request url info
    var basePath = '';
    var pathinfo = '';
    
    var resizeHandlers = [];

    var assetsPath = '../../assets/';

    var globalImgPath = 'global/img/';

    var globalPluginsPath = 'global/plugins/';

    var globalCssPath = 'global/css/';
    
    var fs1, fs2, fs3; // variable for page-content's fullscreen
    
    $(window).load(function(){
        // Page Preloader
        $('#status').fadeOut();
        $('#preloader').delay(350).fadeOut(function(){
          $('body').delay(350).css({'overflow':'visible'});
        });
    });

    // theme layout color set
    var brandColors = {
        'blue': '#89C4F4',
        'red': '#F3565D',
        'green': '#1bbc9b',
        'purple': '#9b59b6',
        'grey': '#95a5a6',
        'yellow': '#F8CB00'
    };

    // initializes main settings
    var handleInit = function() {
    	
    	assetsPath = basePath + 'assets/';

        if ($('body').css('direction') === 'rtl') {
            isRTL = true;
        }

        isIE8 = !!navigator.userAgent.match(/MSIE 8.0/);
        isIE9 = !!navigator.userAgent.match(/MSIE 9.0/);
        isIE10 = !!navigator.userAgent.match(/MSIE 10.0/);

        if (isIE10) {
            $('html').addClass('ie10'); // detect IE10 version
        }

        if (isIE10 || isIE9 || isIE8) {
            $('html').addClass('ie'); // detect IE10 version
        }
    };

    // runs callback functions set by Smartweb.addResponsiveHandler().
    var _runResizeHandlers = function() {
        // reinitialize other subscribed elements
        for (var i = 0; i < resizeHandlers.length; i++) {
            var each = resizeHandlers[i];
            each.call();
        }
    };

    // handle the layout reinitialization on window resize
    var handleOnResize = function() {
        var resize;
        if (isIE8) {
            var currheight;
            $(window).resize(function() {
                if (currheight == document.documentElement.clientHeight) {
                    return; //quite event since only body resized not window.
                }
                if (resize) {
                    clearTimeout(resize);
                }
                resize = setTimeout(function() {
                    _runResizeHandlers();
                }, 50); // wait 50ms until window resize finishes.                
                currheight = document.documentElement.clientHeight; // store last body client height
            });
        } else {
            $(window).resize(function() {
                if (resize) {
                    clearTimeout(resize);
                }
                resize = setTimeout(function() {
                    _runResizeHandlers();
                }, 50); // wait 50ms until window resize finishes.
            });
        }
    };

    // Handles portlet tools & actions
    var handlePortletTools = function() {
        // handle portlet remove
        $('body').on('click', '.portlet > .portlet-title > .tools > a.remove', function(e) {
            e.preventDefault();
            var portlet = $(this).closest(".portlet");

            if ($('body').hasClass('page-portlet-fullscreen')) {
                $('body').removeClass('page-portlet-fullscreen');
            }

            portlet.find('.portlet-title .fullscreen').tooltip('destroy');
            portlet.find('.portlet-title > .tools > .reload').tooltip('destroy');
            portlet.find('.portlet-title > .tools > .remove').tooltip('destroy');
            portlet.find('.portlet-title > .tools > .config').tooltip('destroy');
            portlet.find('.portlet-title > .tools > .collapse, .portlet > .portlet-title > .tools > .expand').tooltip('destroy');

            portlet.remove();
        });

        // handle portlet fullscreen
        $('body').on('click', '.portlet > .portlet-title .fullscreen', function(e) {
        	e.preventDefault();
            var portlet = $(this).closest(".portlet");
            
            if (portlet.hasClass('portlet-fullscreen')) {
                $(this).removeClass('on');
                portlet.removeClass('portlet-fullscreen');
                $('body').removeClass('page-portlet-fullscreen');
                portlet.children('.portlet-body').css('height', 'auto');
            } else {
                var height = Smartweb.getViewPort().height;
                
                if ( ! portlet.hasClass('layout-portlet') ) {
                  height = height -
	                  portlet.children('.portlet-title').outerHeight() -
	                  parseInt(portlet.children('.portlet-body').css('padding-top')) -
	                  parseInt(portlet.children('.portlet-body').css('padding-bottom'));
                }
                
                $(this).addClass('on');
                portlet.addClass('portlet-fullscreen');
                $('body').addClass('page-portlet-fullscreen');
                portlet.children('.portlet-body').css('height', height);
            }
        });

        $('body').on('click', '.portlet > .portlet-title > .tools > a.reload', function(e) {
            e.preventDefault();
            var el = $(this).closest(".portlet").children(".portlet-body");
            var url = $(this).attr("data-url");
            var error = $(this).attr("data-error-display");
            if (url) {
                Smartweb.blockUI({
                    target: el,
                    animate: true,
                    overlayColor: 'none'
                });
                $.ajax({
                    type: "GET",
                    cache: false,
                    url: url,
                    dataType: "html",
                    success: function(res) {
                        Smartweb.unblockUI(el);
                        el.html(res);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        Smartweb.unblockUI(el);
                        var msg = 'Error on reloading the content. Please check your connection and try again.';
                        if (error == "toastr" && toastr) {
                            toastr.error(msg);
                        } else if (error == "notific8" && $.notific8) {
                            $.notific8('zindex', 11500);
                            $.notific8(msg, {
                                theme: 'ruby',
                                life: 3000
                            });
                        } else {
                            alert(msg);
                        }
                    }
                });
            } else {
                // for demo purpose
                Smartweb.blockUI({
                    target: el,
                    animate: true,
                    overlayColor: 'none'
                });
                window.setTimeout(function() {
                    Smartweb.unblockUI(el);
                }, 1000);
            }
        });

        // load ajax data on page init
        $('.portlet .portlet-title a.reload[data-load="true"]').click();

        $('body').on('click', '.portlet > .portlet-title > .tools > .collapse, .portlet .portlet-title > .tools > .expand', function(e) {
            e.preventDefault();
            var el = $(this).closest(".portlet").children(".portlet-body");
            if ($(this).hasClass("collapse")) {
                $(this).removeClass("collapse").addClass("expand");
                el.slideUp(200);
            } else {
                $(this).removeClass("expand").addClass("collapse");
                el.slideDown(200);
            }
        });
    };

    // Handles custom checkboxes & radios using jQuery Uniform plugin
    var handleUniform = function() {
        if (!$().uniform) {
            return;
        }
        var test = $("input[type=checkbox]:not(.toggle, .md-check, .md-radiobtn, .make-switch, .icheck), input[type=radio]:not(.toggle, .md-check, .md-radiobtn, .star, .make-switch, .icheck)");
        if (test.size() > 0) {
            test.each(function() {
                if ($(this).parents(".checker").size() === 0) {
                    $(this).show();
                    $(this).uniform();
                }
            });
        }
    };

    // Handlesmaterial design checkboxes
    var handleMaterialDesign = function() {

        // Material design ckeckbox and radio effects
        $('body').on('click', '.md-checkbox > label, .md-radio > label', function() {
            var the = $(this);
            // find the first span which is our circle/bubble
            var el = $(this).children('span:first-child');
              
            // add the bubble class (we do this so it doesnt show on page load)
            el.addClass('inc');
              
            // clone it
            var newone = el.clone(true);  
              
            // add the cloned version before our original
            el.before(newone);  
              
            // remove the original so that it is ready to run on next click
            $("." + el.attr("class") + ":last", the).remove();
        }); 

        if ($('body').hasClass('page-md')) { 
            // Material design click effect
            // credit where credit's due; http://thecodeplayer.com/walkthrough/ripple-click-effect-google-material-design       
            $('body').on('click', 'a.btn, button.btn, input.btn, label.btn', function(e) { 
                var element, circle, d, x, y;

                element = $(this);
      
                if(element.find(".md-click-circle").length == 0) {
                    element.prepend("<span class='md-click-circle'></span>");
                }
                    
                circle = element.find(".md-click-circle");
                circle.removeClass("md-click-animate");
                
                if(!circle.height() && !circle.width()) {
                    d = Math.max(element.outerWidth(), element.outerHeight());
                    circle.css({height: d, width: d});
                }
                
                x = e.pageX - element.offset().left - circle.width()/2;
                y = e.pageY - element.offset().top - circle.height()/2;
                
                circle.css({top: y+'px', left: x+'px'}).addClass("md-click-animate");
            });
        }

        // Floating labels
        var handleInput = function(el) {
            if (el.val() != "") {
                el.addClass('edited');
            } else {
                el.removeClass('edited');
            }
        } 

        $('body').on('keydown', '.form-md-floating-label > .form-control', function(e) { 
            handleInput($(this));
        });
        $('body').on('blur', '.form-md-floating-label > .form-control', function(e) { 
            handleInput($(this));
        });        
    }

    // Handles custom checkboxes & radios using jQuery iCheck plugin
    var handleiCheck = function() {
        if (!$().iCheck) {
            return;
        }

        $('.icheck').each(function() {
            var checkboxClass = $(this).attr('data-checkbox') ? $(this).attr('data-checkbox') : 'icheckbox_minimal-grey';
            var radioClass = $(this).attr('data-radio') ? $(this).attr('data-radio') : 'iradio_minimal-grey';

            if (checkboxClass.indexOf('_line') > -1 || radioClass.indexOf('_line') > -1) {
                $(this).iCheck({
                    checkboxClass: checkboxClass,
                    radioClass: radioClass,
                    insert: '<div class="icheck_line-icon"></div>' + $(this).attr("data-label")
                });
            } else {
                $(this).iCheck({
                    checkboxClass: checkboxClass,
                    radioClass: radioClass
                });
            }
        });
    };

    // Handles Bootstrap switches
    var handleBootstrapSwitch = function() {
        if (!$().bootstrapSwitch) {
            return;
        }
        $('.make-switch').bootstrapSwitch();
    };

    // Handles Bootstrap confirmations
    var handleBootstrapConfirmation = function() {
        if (!$().confirmation) {
            return;
        }
        $('[data-toggle=confirmation]').confirmation({ container: 'body', btnOkClass: 'btn-xs btn-success', btnCancelClass: 'btn-xs btn-danger'});
    }
    
    // Handles Bootstrap Accordions.
    var handleAccordions = function() {
        $('body').on('shown.bs.collapse', '.accordion.scrollable', function(e) {
            Smartweb.scrollTo($(e.target));
        });
    };

    // Handles Bootstrap Tabs.
    var handleTabs = function() {
        //activate tab if tab id provided in the URL
        if (location.hash) {
            var tabid = location.hash.substr(1);
            $('a[href="#' + tabid + '"]').parents('.tab-pane:hidden').each(function() {
                var tabid = $(this).attr("id");
                $('a[href="#' + tabid + '"]').click();
            });
            $('a[href="#' + tabid + '"]').click();
        }

        if ($().tabdrop) {
            $('.tabbable-tabdrop .nav-pills, .tabbable-tabdrop .nav-tabs').tabdrop({
                text: '<i class="fa fa-ellipsis-v"></i>&nbsp;<i class="fa fa-angle-down"></i>'
            });
        }
    };

    // Handles Bootstrap Modals.
    var handleModals = function() {        
        // fix stackable modal issue: when 2 or more modals opened, closing one of modal will remove .modal-open class. 
        $('body').on('hide.bs.modal', function() {
            if ($('.modal:visible').size() > 1 && $('html').hasClass('modal-open') === false) {
                $('html').addClass('modal-open');
            } else if ($('.modal:visible').size() <= 1) {
                $('html').removeClass('modal-open');
            }
        });

        // fix page scrollbars issue
        $('body').on('show.bs.modal', '.modal', function() {
            if ($(this).hasClass("modal-scroll")) {
                $('body').addClass("modal-open-noscroll");
            }
        });

        // fix page scrollbars issue
        $('body').on('hide.bs.modal', '.modal', function() {
            $('body').removeClass("modal-open-noscroll");
        });

        // remove ajax content and remove cache on modal closed 
        $('body').on('hidden.bs.modal', '.modal:not(.modal-cached)', function () {
            $(this).removeData('bs.modal');
        });
    };

    // Handles Bootstrap Tooltips.
    var handleTooltips = function() {
        // global tooltips
        $('.tooltips').tooltip();

        // portlet tooltips
        $('.portlet > .portlet-title .fullscreen').tooltip({
            container: 'body',
            title: '全屏'
        });
        $('.portlet > .portlet-title > .tools > .reload').tooltip({
            container: 'body',
            title: 'Reload'
        });
        $('.portlet > .portlet-title > .tools > .remove').tooltip({
            container: 'body',
            title: 'Remove'
        });
        $('.portlet > .portlet-title > .tools > .config').tooltip({
            container: 'body',
            title: 'Settings'
        });
        $('.portlet > .portlet-title > .tools > .collapse, .portlet > .portlet-title > .tools > .expand').tooltip({
            container: 'body',
            title: 'Collapse/Expand'
        });
    };

    // Handles Bootstrap Dropdowns
    var handleDropdowns = function() {
        /*
          Hold dropdown on click  
        */
        $('body').on('click', '.dropdown-menu.hold-on-click', function(e) {
            e.stopPropagation();
        });
    };

    var handleAlerts = function() {
        $('body').on('click', '[data-close="alert"]', function(e) {
            $(this).parent('.alert').hide();
            $(this).closest('.note').hide();
            e.preventDefault();
        });

        $('body').on('click', '[data-close="note"]', function(e) {
            $(this).closest('.note').hide();
            e.preventDefault();
        });

        $('body').on('click', '[data-remove="note"]', function(e) {
            $(this).closest('.note').remove();
            e.preventDefault();
        });
    };

    // Handle Hower Dropdowns
    var handleDropdownHover = function() {
        $('[data-hover="dropdown"]').not('.hover-initialized').each(function() {
            $(this).dropdownHover();
            $(this).addClass('hover-initialized');
        });
    };

    // Handles Bootstrap Popovers

    // last popep popover
    var lastPopedPopover;

    var handlePopovers = function() {
        $('.popovers').popover();

        // close last displayed popover

        $(document).on('click.bs.popover.data-api', function(e) {
            if (lastPopedPopover) {
                lastPopedPopover.popover('hide');
            }
        });
    };

    // Handles scrollable contents using jQuery SlimScroll plugin.
    var handleScrollers = function() {
        Smartweb.initSlimScroll('.scroller');
    };

    // Handles Image Preview using jQuery Fancybox plugin
    var handleFancybox = function() {
        if (!jQuery.fancybox) {
            return;
        }

        if ($(".fancybox-button").size() > 0) {
            $(".fancybox-button").fancybox({
                groupAttr: 'data-rel',
                prevEffect: 'none',
                nextEffect: 'none',
                closeBtn: true,
                helpers: {
                    title: {
                        type: 'inside'
                    }
                }
            });
        }
    };

    // Fix input placeholder issue for IE8 and IE9
    var handleFixInputPlaceholderForIE = function() {
        //fix html5 placeholder attribute for ie7 & ie8
        if (isIE8 || isIE9) { // ie8 & ie9
            // this is html5 placeholder fix for inputs, inputs with placeholder-no-fix class will be skipped(e.g: we need this for password fields)
            $('input[placeholder]:not(.placeholder-no-fix), textarea[placeholder]:not(.placeholder-no-fix)').each(function() {
                var input = $(this);

                if (input.val() === '' && input.attr("placeholder") !== '') {
                    input.addClass("placeholder").val(input.attr('placeholder'));
                }

                input.focus(function() {
                    if (input.val() == input.attr('placeholder')) {
                        input.val('');
                    }
                });

                input.blur(function() {
                    if (input.val() === '' || input.val() == input.attr('placeholder')) {
                        input.val(input.attr('placeholder'));
                    }
                });
            });
        }
    };

    // Handle Select2 Dropdowns
    var handleSelect2 = function() {
        if ($().select2) {
            $('.select2me').select2({
                placeholder: "Select",
                allowClear: true
            });
        }
    };

    // handle page-cotent's fullscreen
    var handleLayoutFullscreen = function() {
    	$('#layout_portlet_title').css('left', $('.page-sidebar').width() + 'px');
		$('#fullscreen_icon').click(function(){
			if ( $('body').hasClass('page-portlet-fullscreen') ) {
				$('#layout_portlet_title').css('top', fs1);
				$('#layout_portlet_title').css('left', fs2);
				$('#layout_portlet_body').css('padding-top', fs3);
			} else {
				fs1 = $('#layout_portlet_title').css('top');
				fs2 = $('#layout_portlet_title').css('left');
				fs3 = $('#layout_portlet_body').css('padding-top');
				
				$('#layout_portlet_title').css('top', '0');
				$('#layout_portlet_title').css('left', '0');
				$('#layout_portlet_body').css('padding-top', '60px');
			}
			$(window).trigger('resize');
		});
		$('.sidebar-toggler').click(function(){
			if ( $('body').hasClass('page-sidebar-closed') ) {
				//when sidebar open
				$('#layout_portlet_title').css('left','195px');
			} else {
				//when sidebar close
				$('#layout_portlet_title').css('left', '54px');
			}
		});
		
    };
    
    // handle sidebar status
    var handleSidebarStatus = function() {
    	
    	//if error page, do nothing
    	if (pathinfo.indexOf('error') > 0) {
    		return ;
    	}
    	
    	// get current menulink tag by request url info
    	var fullinfo = basePath + pathinfo.substring(1);
    	var curr = $('.page-sidebar-menu').find('a[href="' + fullinfo +'"]');
    	
    	// first: clear all active status
    	$('.page-sidebar-menu li.active').removeClass('active');
    	
    	// set current submenu status
    	curr.closest('li').addClass('active');
    	
    	//set and parent menu status
    	if (curr.closest('ul').hasClass('sub-menu')) {
    		curr.closest('ul').parent().addClass('active');
    	}
    };
    
    //* END:CORE HANDLERS *//

    return {

        //main function to initiate the theme
        init: function(_basePath, _pathinfo) {
        	
        	basePath = _basePath;
        	pathinfo = _pathinfo;
        	
            //IMPORTANT!!!: Do not modify the core handlers call order.

            //Core handlers
            handleInit(); // initialize core variables
            handleOnResize(); // set and handle responsive    

            //UI Component handlers     
            handleMaterialDesign(); // handle material design       
            handleUniform(); // hanfle custom radio & checkboxes
            handleiCheck(); // handles custom icheck radio and checkboxes
            handleBootstrapSwitch(); // handle bootstrap switch plugin
            handleScrollers(); // handles slim scrolling contents 
            handleFancybox(); // handle fancy box
            handleSelect2(); // handle custom Select2 dropdowns
            handlePortletTools(); // handles portlet action bar functionality(refresh, configure, toggle, remove)
            handleAlerts(); //handle closabled alerts
            handleDropdowns(); // handle dropdowns
            handleTabs(); // handle tabs
            handleTooltips(); // handle bootstrap tooltips
            handlePopovers(); // handles bootstrap popovers
            handleAccordions(); //handles accordions 
            handleModals(); // handle modals
            handleBootstrapConfirmation(); // handle bootstrap confirmations

            // Hacks
            handleFixInputPlaceholderForIE(); //IE8 & IE9 input placeholder issue fix
            
            // handle page-cotent's fullscreen
            handleLayoutFullscreen();
            
            // handle sidebar status
            handleSidebarStatus();
        },

        //main function to initiate core javascript after ajax complete
        initAjax: function() {
            handleUniform(); // handles custom radio & checkboxes     
            handleiCheck(); // handles custom icheck radio and checkboxes
            handleBootstrapSwitch(); // handle bootstrap switch plugin
            handleDropdownHover(); // handles dropdown hover       
            handleScrollers(); // handles slim scrolling contents 
            handleSelect2(); // handle custom Select2 dropdowns
            handleFancybox(); // handle fancy box
            handleDropdowns(); // handle dropdowns
            handleTooltips(); // handle bootstrap tooltips
            handlePopovers(); // handles bootstrap popovers
            handleAccordions(); //handles accordions 
            handleBootstrapConfirmation(); // handle bootstrap confirmations
        },

        //init main components 
        initComponents: function() {
            this.initAjax();
        },

        //public function to remember last opened popover that needs to be closed on click
        setLastPopedPopover: function(el) {
            lastPopedPopover = el;
        },

        //public function to add callback a function which will be called on window resize
        addResizeHandler: function(func) {
            resizeHandlers.push(func);
        },

        //public functon to call _runresizeHandlers
        runResizeHandlers: function() {
            _runResizeHandlers();
        },

        // wrMetronicer function to scroll(focus) to an element
        scrollTo: function(el, offeset) {
            var pos = (el && el.size() > 0) ? el.offset().top : 0;

            if (el) {
                if ($('body').hasClass('page-header-fixed')) {
                    pos = pos - $('.page-header').height();
                }
                pos = pos + (offeset ? offeset : -1 * el.height());
            }

            $('html,body').animate({
                scrollTop: pos
            }, 'slow');
        },

        initSlimScroll: function(el) {
            $(el).each(function() {
                if ($(this).attr("data-initialized")) {
                    return; // exit
                }

                var height;

                if ($(this).attr("data-height")) {
                    height = $(this).attr("data-height");
                } else {
                    height = $(this).css('height');
                }

                $(this).slimScroll({
                    allowPageScroll: true, // allow page scroll when the element scroll is ended
                    size: '7px',
                    color: ($(this).attr("data-handle-color") ? $(this).attr("data-handle-color") : '#bbb'),
                    wrapperClass: ($(this).attr("data-wrapper-class") ? $(this).attr("data-wrapper-class") : 'slimScrollDiv'),
                    railColor: ($(this).attr("data-rail-color") ? $(this).attr("data-rail-color") : '#eaeaea'),
                    position: isRTL ? 'left' : 'right',
                    height: height,
                    alwaysVisible: ($(this).attr("data-always-visible") == "1" ? true : false),
                    railVisible: ($(this).attr("data-rail-visible") == "1" ? true : false),
                    disableFadeOut: true
                });

                $(this).attr("data-initialized", "1");
            });
        },

        destroySlimScroll: function(el) {
            $(el).each(function() {
                if ($(this).attr("data-initialized") === "1") { // destroy existing instance before updating the height
                    $(this).removeAttr("data-initialized");
                    $(this).removeAttr("style");

                    var attrList = {};

                    // store the custom attribures so later we will reassign.
                    if ($(this).attr("data-handle-color")) {
                        attrList["data-handle-color"] = $(this).attr("data-handle-color");
                    }
                    if ($(this).attr("data-wrapper-class")) {
                        attrList["data-wrapper-class"] = $(this).attr("data-wrapper-class");
                    }
                    if ($(this).attr("data-rail-color")) {
                        attrList["data-rail-color"] = $(this).attr("data-rail-color");
                    }
                    if ($(this).attr("data-always-visible")) {
                        attrList["data-always-visible"] = $(this).attr("data-always-visible");
                    }
                    if ($(this).attr("data-rail-visible")) {
                        attrList["data-rail-visible"] = $(this).attr("data-rail-visible");
                    }

                    $(this).slimScroll({
                        wrapperClass: ($(this).attr("data-wrapper-class") ? $(this).attr("data-wrapper-class") : 'slimScrollDiv'),
                        destroy: true
                    });

                    var the = $(this);

                    // reassign custom attributes
                    $.each(attrList, function(key, value) {
                        the.attr(key, value);
                    });

                }
            });
        },

        // function to scroll to the top
        scrollTop: function() {
            Smartweb.scrollTo();
        },

        // wrMetronicer function to  block element(indicate loading)
        blockUI: function(options) {
            options = $.extend(true, {}, options);
            var html = '';
            if (options.animate) {
                html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '">' + '<div class="block-spinner-bar"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div>' + '</div>';
            } else if (options.iconOnly) {
                html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '"><img src="' + this.getGlobalImgPath() + 'loading-spinner-grey.gif" align=""></div>';
            } else if (options.textOnly) {
                html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '"><span>&nbsp;&nbsp;' + (options.message ? options.message : 'LOADING...') + '</span></div>';
            } else {
                html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '"><img src="' + this.getGlobalImgPath() + 'loading-spinner-grey.gif" align=""><span>&nbsp;&nbsp;' + (options.message ? options.message : 'LOADING...') + '</span></div>';
            }

            if (options.target) { // element blocking
                var el = $(options.target);
                if (el.height() <= ($(window).height())) {
                    options.cenrerY = true;
                }
                el.block({
                    message: html,
                    baseZ: options.zIndex ? options.zIndex : 1000,
                    centerY: options.cenrerY !== undefined ? options.cenrerY : false,
                    css: {
                        top: '10%',
                        border: '0',
                        padding: '0',
                        backgroundColor: 'none'
                    },
                    overlayCSS: {
                        backgroundColor: options.overlayColor ? options.overlayColor : '#555',
                        opacity: options.boxed ? 0.05 : 0.1,
                        cursor: 'wait'
                    }
                });
            } else { // page blocking
                $.blockUI({
                    message: html,
                    baseZ: options.zIndex ? options.zIndex : 1000,
                    css: {
                        border: '0',
                        padding: '0',
                        backgroundColor: 'none'
                    },
                    overlayCSS: {
                        backgroundColor: options.overlayColor ? options.overlayColor : '#555',
                        opacity: options.boxed ? 0.05 : 0.1,
                        cursor: 'wait'
                    }
                });
            }
        },

        // wrMetronicer function to  un-block element(finish loading)
        unblockUI: function(target) {
            if (target) {
                $(target).unblock({
                    onUnblock: function() {
                        $(target).css('position', '');
                        $(target).css('zoom', '');
                    }
                });
            } else {
                $.unblockUI();
            }
        },

        startPageLoading: function(options) {
            if (options && options.animate) {
                $('.page-spinner-bar').remove();
                $('body').append('<div class="page-spinner-bar"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div>');
            } else {
                $('.page-loading').remove();
                $('body').append('<div class="page-loading"><img src="' + this.getGlobalImgPath() + 'loading-spinner-grey.gif"/>&nbsp;&nbsp;<span>' + (options && options.message ? options.message : 'Loading...') + '</span></div>');
            }
        },

        stopPageLoading: function() {
            $('.page-loading, .page-spinner-bar').remove();
        },
        
        alert_dialog: function(options, cb) {
        	options = $.extend(true, {type: 'info', title: '', message: '错误信息'}, options);
        	var info_btn = {info: {label: "确定", className: "green", callback: cb}};
        	var warning_btn = {warning: {label: "确定", className: "yellow", callback: cb}};
        	var error_btn = {error: {label: "确定", className: "red", callback: cb}};
        	
        	bootbox.dialog({
                message: options.message,
                title: options.title,
                buttons: eval(options.type + '_btn')
            });
        },

        alert: function(options) {

            options = $.extend(true, {
                container: "", // alerts parent container(by default placed after the page breadcrumbs)
                place: "append", // "append" or "prepend" in container 
                type: 'success', // alert's type
                message: "", // alert's message
                close: true, // make alert closable
                reset: true, // close all previouse alerts first
                focus: true, // auto scroll to the alert after shown
                closeInSeconds: 0, // auto close after defined seconds
                icon: "" // put icon before the message
            }, options);

            var id = Smartweb.getUniqueID("Smartweb_alert");

            var html = '<div id="' + id + '" class="Smartweb-alerts alert alert-' + options.type + ' fade in">' + (options.close ? '<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>' : '') + (options.icon !== "" ? '<i class="fa-lg fa fa-' + options.icon + '"></i>  ' : '') + options.message + '</div>';

            if (options.reset) {
                $('.Smartweb-alerts').remove();
            }

            if (!options.container) {
                if ($('body').hasClass("page-container-bg-solid")) {
                    $('.page-title').after(html);
                } else {
                    if ($('.page-bar').size() > 0) {
                        $('.page-bar').after(html);
                    } else {
                        $('.page-breadcrumb').after(html);
                    }
                }
            } else {
                if (options.place == "append") {
                    $(options.container).append(html);
                } else {
                    $(options.container).prepend(html);
                }
            }

            if (options.focus) {
                Smartweb.scrollTo($('#' + id));
            }

            if (options.closeInSeconds > 0) {
                setTimeout(function() {
                    $('#' + id).remove();
                }, options.closeInSeconds * 1000);
            }

            return id;
        },

        // initializes uniform elements
        initUniform: function(els) {
            if (els) {
                $(els).each(function() {
                    if ($(this).parents(".checker").size() === 0) {
                        $(this).show();
                        $(this).uniform();
                    }
                });
            } else {
                handleUniform();
            }
        },

        //wrMetronicer function to update/sync jquery uniform checkbox & radios
        updateUniform: function(els) {
            $.uniform.update(els); // update the uniform checkbox & radios UI after the actual input control state changed
        },

        //public function to initialize the fancybox plugin
        initFancybox: function() {
            handleFancybox();
        },

        //public helper function to get actual input value(used in IE9 and IE8 due to placeholder attribute not supported)
        getActualVal: function(el) {
            el = $(el);
            if (el.val() === el.attr("placeholder")) {
                return "";
            }
            return el.val();
        },

        //public function to get a paremeter by name from URL
        getURLParameter: function(paramName) {
            var searchString = window.location.search.substring(1),
                i, val, params = searchString.split("&");

            for (i = 0; i < params.length; i++) {
                val = params[i].split("=");
                if (val[0] == paramName) {
                    return unescape(val[1]);
                }
            }
            return null;
        },

        // check for device touch support
        isTouchDevice: function() {
            try {
                document.createEvent("TouchEvent");
                return true;
            } catch (e) {
                return false;
            }
        },

        // To get the correct viewport width based on  http://andylangton.co.uk/articles/javascript/get-viewport-size-javascript/
        getViewPort: function() {
            var e = window,
                a = 'inner';
            if (!('innerWidth' in window)) {
                a = 'client';
                e = document.documentElement || document.body;
            }

            return {
                width: e[a + 'Width'],
                height: e[a + 'Height']
            };
        },

        getUniqueID: function(prefix) {
            return 'prefix_' + Math.floor(Math.random() * (new Date()).getTime());
        },

        // check IE8 mode
        isIE8: function() {
            return isIE8;
        },

        // check IE9 mode
        isIE9: function() {
            return isIE9;
        },

        //check RTL mode
        isRTL: function() {
            return isRTL;
        },

        // check IE8 mode
        isAngularJsApp: function() {
            return (typeof angular == 'undefined') ? false : true;
        },

        getAssetsPath: function() {
            return assetsPath;
        },

        setAssetsPath: function(path) {
            assetsPath = path;
        },

        setGlobalImgPath: function(path) {
            globalImgPath = path;
        },

        getGlobalImgPath: function() {
            return assetsPath + globalImgPath;
        },

        setGlobalPluginsPath: function(path) {
            globalPluginsPath = path;
        },

        getGlobalPluginsPath: function() {
            return assetsPath + globalPluginsPath;
        },

        getGlobalCssPath: function() {
            return assetsPath + globalCssPath;
        },

        // get layout color code by color name
        getBrandColor: function(name) {
            if (brandColors[name]) {
                return brandColors[name];
            } else {
                return '';
            }
        },

        getResponsiveBreakpoint: function(size) {
            // bootstrap responsive breakpoints
            var sizes = {
                'xs' : 480,     // extra small
                'sm' : 768,     // small
                'md' : 992,     // medium
                'lg' : 1200     // large
            };

            return sizes[size] ? sizes[size] : 0; 
        },
        
        displayAjaxPageError: function(errmsg) {
        	$('#page_icon').attr('class', 'icon-cup bold font-red');
        	$('#page_name').text('出错啦');
        	$('#page_name').attr('class', 'caption-subject bold uppercase font-red');
        	$('#page_caption').text('');
        	$('.page-success').hide();
  
        	var error_html = '<h4>系统发生异常，可能由以下原因引起，请联系系统管理员：</h4>'
				+ '<div class="portlet solid grey-steel">'
				+ '    <div class="portlet-body">'
				+ '		<div class="margin-top-20"></div>'
				+ '	<div class="scroller" style="height:400px;padding-top:10px">'
				+ '		<pre class="font-red">' + errmsg + '</pre>'
				+ '	</div>'
				+ '	</div>'
				+ '</div>';
        	$('.page-error').append(error_html);
        }
    };

}();