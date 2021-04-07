$(document).ready(function() {

    var $half = $(".circle .half"),
        halfLen = $half[0].getTotalLength(),
        $nav = $(".circle .active-nav"),
        navLen = $nav[0].getTotalLength(),
        $pages = $(".pages"),
        scrolling = false,
        curPage = 1,
        numOfPages = $(".page").length,
        headingH = $(".heading").height(),
        SPHASE1 = 500,
        SPHASE2 = 300,
        SPHASE3 = 900,
        SDELAY = SPHASE1 + SPHASE2 + SPHASE3,
        SDUR = 600,
        SDOTS = SDELAY + SDUR,
        DOTTRANSTIME = 300,
        SDOTSRDY = SDOTS + DOTTRANSTIME + (numOfPages - 2) * 100,
        PAGETRANSITION = 700;

    $half.velocity({ strokeDasharray: halfLen, strokeDashoffset: halfLen }, { duration: 0 });
    $nav.velocity({ strokeDasharray: navLen, strokeDashoffset: navLen }, { duration: 0 });
    $(".circle").css("opacity", 1);
    $(".rotater").addClass("phase1");

    setTimeout(function() {
        $(".rotater").removeClass("phase1").addClass("phase2");

        setTimeout(function() {
            $(".rotater").removeClass("phase2").addClass("phase3");
        }, SPHASE2);

    }, SPHASE1);

    $half.delay(SDELAY).velocity({ strokeDashoffset: 0 }, { duration: SDUR, easing: "ease-in" });

    setTimeout(function() {
        $(".nav-el").addClass("showing visible");
    }, SDOTS);

    setTimeout(function() {
        $(".nav-el").removeClass("showing").addClass("white");
        $(".nav-el-1").addClass("active");
        $(".heading").removeClass("invisible");
        $pages.removeClass("removed");

        setTimeout(function() {
            activateHandlers();
        }, PAGETRANSITION + 300);
    }, SDOTSRDY);

    function pagination(page) {
        scrolling = true;
        curPage = page;
        $(".nav-el").removeClass("active");
        $(".nav-el-" + page).addClass("active");
        var newNavLen = navLen - navLen / 6 * (page - 1);
        $nav.velocity({ strokeDashoffset: newNavLen }, { duration: PAGETRANSITION });
        $(".numbers").css("transform", "translateY(" + (0 - (page - 1) * headingH) + "px)");
        $pages.css("transform", "translate3D(0," + (0 - (page - 1) * 100) + "%,0)");

        setTimeout(function() {
            scrolling = false;
        }, PAGETRANSITION);
    }

    function navigateUp() {
        if (curPage > 1) {
            curPage--;
            pagination(curPage);
        }
    }

    function navigateDown() {
        if (curPage < numOfPages) {
            curPage++;
            pagination(curPage);
        }
    }

    function activateHandlers() {

        $(document).on("mousewheel DOMMouseScroll", function(e) {
            if (!scrolling) {
                if (e.originalEvent.wheelDelta > 0 || e.originalEvent.detail < 0) {
                    navigateUp();
                } else {
                    navigateDown();
                }
            }
        });

        $(document).on("click", ".nav-el", function() {
            var pg = +$(this).attr("data-page");
            pagination(pg);
        });

        $(document).on("keydown", function(e) {
            if (scrolling) return;
            if (e.which === 38) {
                navigateUp();
            } else if (e.which === 40) {
                navigateDown();
            }
        });

        $(window).resize(function() {
            headingH = $(".heading").height();
        });

    }

    var diff = 0;

    $(document).on("touchstart", ".page", function(e) {
        var startY = e.originalEvent.touches[0].pageY;
        $pages.addClass("instant");

        $(document).on("touchmove", function(e) {
            var y = e.originalEvent.touches[0].pageY;
            diff = (y - startY) / $(".page").height();
            $pages.css("transform", "translate3D(0," + (0 - (curPage - 1 - diff) * 100) + "%,0)");

        });

    });

    $(document).on("touchend", function(e) {
        $pages.removeClass("instant");
        $(document).off("touchmove");
        if (diff > 0.05) {
            if (curPage === 1) {
                pagination(1);
                diff = 0;
                return;
            }
            navigateUp();
        } else if (diff < -0.05) {
            if (curPage === numOfPages) {
                pagination(numOfPages);
                diff = 0;
                return;
            }
            navigateDown();
        } else if (!diff) {
            return;
        } else {
            $pages.css("transform", "translate3D(0," + (0 - (curPage - 1) * 100) + "%,0)");
        }
        diff = 0;
    });

});