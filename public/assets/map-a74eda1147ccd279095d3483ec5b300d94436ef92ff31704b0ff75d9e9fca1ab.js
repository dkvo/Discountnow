(function(){var t,n=function(t,n){function i(){this.constructor=t}for(var r in n)o.call(n,r)&&(t[r]=n[r]);return i.prototype=n.prototype,t.prototype=new i,t.__super__=n.prototype,t},o={}.hasOwnProperty;t=function(t){function o(){return o.__super__.constructor.apply(this,arguments)}return n(o,t),o.prototype.create_infowindow=function(){var t;return _.isString(this.args.infowindow)?(t=document.createElement("div"),t.setAttribute("class","white"),t.innerHTML=this.args.infowindow,this.infowindow=new InfoBox(this.infobox(t)),this.bind_infowindow()):null},o.prototype.infobox=function(t){return{content:t,pixelOffset:new google.maps.Size(-140,0),boxStyle:{width:"280px"}}},o}(Gmaps.Google.Builders.Marker),this.buildMap=function(n){var o;return o=Gmaps.build("Google",{builders:{Marker:t}}),o.buildMap({provider:{},internal:{id:"map"}},function(){return n=o.addMarkers(n),o.bounds.extendWith(n),o.fitMapToBounds(),o.bounds.extendWith(n)})}}).call(this);