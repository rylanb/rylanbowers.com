/* jquery.onvisible.js v0.1 | (c) n33 | n33.co @n33co | MIT */
(function(){var e,t=jQuery(window),n=[],r=100,i=150,s=function(){var e=n.length,r=t.scrollTop()+t.height()-i,s,o;for(s=0;s<e;s++)o=n[s],!o.state&&r>o.o.offset().top&&(o.state=!0,o.fn())};t.load(function(){t.on("scroll resize",function(){window.clearTimeout(e),e=window.setTimeout(function(){s()},r)}).trigger("resize")}),jQuery.fn.onVisible=function(e,t){n.push({o:jQuery(this),fn:e,pad:t?t:i,state:!1})}})();
