﻿
var jQSilder = jQuery.noConflict();
(function (jQuery, $) {
    jQuery(function () {
        jQuery('.mainbanner').each(function () {
            var $_root = jQuery(this);
            var $window_b = $_root.find('.mainbanner_window');
            var $list = $_root.find('.mainbanner_list');
            var $items = $list.children();
            var $window_ul = $window_b.find('#slideContainer');
            var $window_show = $_root.find('.window_show');
            var count = $items.length;
            var item_size = 2000;
            var dur_ms = 1000;
            var autoplay_interval = 5000;
            var cur_idx = 0;
            var fix_idx = function (_idx) {
                if (_idx < 0) return (count - 1);
                if (_idx >= count) return 0;
                return _idx;
            }

            $window_show.hide().eq(0).fadeIn("slow");

            var goto = function (_idx) {
                var idx = fix_idx(_idx);
                $items.eq(idx).addClass('active').siblings().removeClass('active');
                if (cur_idx != idx) {
                    var offset_x = -idx * item_size;
                    //$window_ul.stop().animate({'left':offset_x},dur_ms);
                    $window_show.hide().eq(idx).fadeIn("slow");
                    cur_idx = idx;
                }
            }
            $items.each(function (index, element) {
                var $cur_item = jQuery(this);
                var $cur_a = $cur_item.find('a');
                $cur_a.data('index', index);
                $cur_a.hover(function () {
                    var index = jQuery(this).data('index');
                    goto(index);
                    return false;
                });
            });
            var autoplay_flag = true;
            window.setInterval(function () {
                if (autoplay_flag) {
                    goto(cur_idx + 1);
                }
            }, autoplay_interval);
            $_root.hover(function () {
                autoplay_flag = false;
            }, function () {
                autoplay_flag = true;
            });
            goto(0);
        });
    });
})(jQSilder)