!function(){var o,n=jQuery(window),t=[],e=150,i=function(){var o,i,r=t.length,f=n.scrollTop()+n.height()-e;for(o=0;o<r;o++)i=t[o],!i.state&&f>i.o.offset().top&&(i.state=!0,i.fn())};n.load(function(){n.on("scroll resize",function(){window.clearTimeout(o),o=window.setTimeout(function(){i()},100)}).trigger("resize")}),jQuery.fn.onVisible=function(o,n){t.push({o:jQuery(this),fn:o,pad:n||e,state:!1})}}();