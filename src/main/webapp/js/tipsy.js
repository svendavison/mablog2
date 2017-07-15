// tipsy, facebook style tooltips for jquery
// version 1.0.0a
// (c) 2008-2010 jason frame [jason@onehackoranother.com] 
// released under the MIT license
(function(b) {
    function i(a, c) {
        this.$element = b(a);
        this.options = c;
        this.enabled = !0;
        this.fixTitle()
    }
    i.prototype = {
        show: function() {
            var a = this.getTitle();
            if (a && this.enabled) {
                var c = this.tip();
                c.find(".tipsy-inner")[this.options.html ? "html" : "text"](a);
                c[0].className = "tipsy";
                c.remove().css({
                    top: 0,
                    left: 0,
                    visibility: "hidden",
                    display: "block"
                }).prependTo(document.body);
                var a = b.extend({}, this.$element.offset(), {
                        width: this.$element[0].offsetWidth,
                        height: this.$element[0].offsetHeight
                    }),
                    d = c[0].offsetWidth,
                    f = c[0].offsetHeight,
                    e = "function" == typeof this.options.gravity ? this.options.gravity.call(this.$element[0]) : this.options.gravity,
                    g;
                switch (e.charAt(0)) {
                    case "n":
                        g = {
                            top: a.top + a.height + this.options.offset,
                            left: a.left + a.width / 2 - d / 2
                        };
                        break;
                    case "s":
                        g = {
                            top: a.top - f - this.options.offset,
                            left: a.left + a.width / 2 - d / 2
                        };
                        break;
                    case "e":
                        g = {
                            top: a.top + a.height / 2 - f / 2,
                            left: a.left - d - this.options.offset
                        };
                        break;
                    case "w":
                        g = {
                            top: a.top + a.height / 2 - f / 2,
                            left: a.left + a.width + this.options.offset
                        }
                }
                if (2 == e.length) g.left = "w" == e.charAt(1) ? a.left + a.width / 2 -
                    15 : a.left + a.width / 2 - d + 15;
                c.css(g).addClass("tipsy-" + e);
                c.find(".tipsy-arrow")[0].className = "tipsy-arrow tipsy-arrow-" + e.charAt(0);
                this.options.className && c.addClass("function" == typeof this.options.className ? this.options.className.call(this.$element[0]) : this.options.className);
                this.options.fade ? c.stop().css({
                    opacity: 0,
                    display: "block",
                    visibility: "visible"
                }).animate({
                    opacity: this.options.opacity
                }) : c.css({
                    visibility: "visible",
                    opacity: this.options.opacity
                })
            }
        },
        hide: function() {
            this.options.fade ? this.tip().stop().fadeOut(function() {
                    b(this).remove()
                }) :
                this.tip().remove()
        },
        fixTitle: function() {
            var a = this.$element;
            if (a.attr("title") || "string" != typeof a.attr("original-title")) a.attr("original-title", a.attr("title") || "").removeAttr("title")
        },
        getTitle: function() {
            var a, b = this.$element,
                d = this.options;
            this.fixTitle();
            d = this.options;
            "string" == typeof d.title ? a = b.attr("title" == d.title ? "original-title" : d.title) : "function" == typeof d.title && (a = d.title.call(b[0]));
            return (a = ("" + a).replace(/(^\s*|\s*$)/, "")) || d.fallback
        },
        tip: function() {
            if (!this.$tip) this.$tip = b('<div class="tipsy"></div>').html('<div class="tipsy-arrow"></div><div class="tipsy-inner"></div>');
            return this.$tip
        },
        validate: function() {
            if (!this.$element[0].parentNode) this.hide(), this.options = this.$element = null
        },
        enable: function() {
            this.enabled = !0
        },
        disable: function() {
            this.enabled = !1
        },
        toggleEnabled: function() {
            this.enabled = !this.enabled
        }
    };
    b.fn.tipsy = function(a) {
        function c(c) {
            var d = b.data(c, "tipsy");
            d || (d = new i(c, b.fn.tipsy.elementOptions(c, a)), b.data(c, "tipsy", d));
            return d
        }

        function d() {
            var b = c(this);
            b.hoverState = "in";
            0 == a.delayIn ? b.show() : (b.fixTitle(), setTimeout(function() {
                    "in" == b.hoverState && b.show()
                },
                a.delayIn))
        }

        function f() {
            var b = c(this);
            b.hoverState = "out";
            0 == a.delayOut ? b.hide() : setTimeout(function() {
                "out" == b.hoverState && b.hide()
            }, a.delayOut)
        }
        if (!0 === a) return this.data("tipsy");
        if ("string" == typeof a) {
            var e = this.data("tipsy");
            if (e) e[a]();
            return this
        }
        a = b.extend({}, b.fn.tipsy.defaults, a);
        a.live || this.each(function() {
            c(this)
        });
        if ("manual" != a.trigger) {
            var e = a.live ? "live" : "bind",
                g = "hover" == a.trigger ? "mouseleave" : "blur";
            this[e]("hover" == a.trigger ? "mouseenter" : "focus", d)[e](g, f)
        }
        return this
    };
    b.fn.tipsy.defaults = {
        className: null,
        delayIn: 0,
        delayOut: 0,
        fade: !1,
        fallback: "",
        gravity: "n",
        html: !1,
        live: !1,
        offset: 0,
        opacity: 0.8,
        title: "title",
        trigger: "hover"
    };
    b.fn.tipsy.elementOptions = function(a, c) {
        return b.metadata ? b.extend({}, c, b(a).metadata()) : c
    };
    b.fn.tipsy.autoNS = function() {
        return b(this).offset().top > b(document).scrollTop() + b(window).height() / 2 ? "s" : "n"
    };
    b.fn.tipsy.autoWE = function() {
        return b(this).offset().left > b(document).scrollLeft() + b(window).width() / 2 ? "e" : "w"
    };
    b.fn.tipsy.autoBounds = function(a, c) {
        return function() {
            var d =
                c[0],
                f = 1 < c.length ? c[1] : !1,
                e = b(document).scrollTop() + a,
                g = b(document).scrollLeft() + a,
                h = b(this);
            h.offset().top < e && (d = "n");
            h.offset().left < g && (f = "w");
            b(window).width() + b(document).scrollLeft() - h.offset().left < a && (f = "e");
            b(window).height() + b(document).scrollTop() - h.offset().top < a && (d = "s");
            return d + (f ? f : "")
        }
    }
})(jQuery);