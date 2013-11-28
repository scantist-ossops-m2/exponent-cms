/*
YUI 3.14.0 (build a01e97d)
Copyright 2013 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

YUI.add("sortable",function(e,t){var n=function(){n.superclass.constructor.apply(this,arguments)},r="currentNode",i="opacityNode",s="container",o="id",u="zIndex",a="opacity",f="parentNode",l="nodes",c="node";e.extend(n,e.Base,{delegate:null,drop:null,initializer:function(){var t="sortable-"+e.guid(),r={container:this.get(s),nodes:this.get(l),target:!0,invalid:this.get("invalid"),dragConfig:{groups:[t]}},i;this.get("handles")&&(r.handles=this.get("handles")),i=new e.DD.Delegate(r),this.set(o,t),i.dd.plug(e.Plugin.DDProxy,{moveOnEnd:!1,cloneNode:!0}),this.drop=new e.DD.Drop({node:this.get(s),bubbleTarget:i,groups:i.dd.get("groups")}),this.drop.on("drop:enter",e.bind(this._onDropEnter,this)),i.on({"drag:start":e.bind(this._onDragStart,this),"drag:end":e.bind(this._onDragEnd,this),"drag:over":e.bind(this._onDragOver,this),"drag:drag":e.bind(this._onDrag,this)}),this.delegate=i,n.reg(this,t)},_up:null,_y:null,_onDrag:function(e){e.pageY<this._y?this._up=!0:e.pageY>this._y&&(this._up=!1),this._y=e.pageY},_onDropEnter:function(e){var t=e.drop.get(c),n=e.drag.get(c);!t.test(this.get(l))&&!n.get(f).compareTo(t)&&t.append(n)},_onDragOver:function(t){if(!t.drop.get(c).test(this.get(l)))return;if(t.drag.get(c)===t.drop.get(c))return;if(t.drag.get(c).contains(t.drop.get(c)))return;var n=!1,r,i,u,a,h,p=this.get("moveType").toLowerCase();t.drag.get(c).get(f).contains(t.drop.get(c))&&(n=!0),n&&p==="move"&&(p="insert");switch(p){case"insert":r=this._up?"before":"after",h=t.drop.get(c),e.Sortable._test(h,this.get(s))?h.append(t.drag.get(c)):h.insert(t.drag.get(c),r);break;case"swap":e.DD.DDM.swapNode(t.drag,t.drop);break;case"move":case"copy":a=e.Sortable.getSortable(t.drop.get(c).get(f));if(!a)return;e.DD.DDM.getDrop(t.drag.get(c)).addToGroup(a.get(o)),n?e.DD.DDM.swapNode(t.drag,t.drop):(this.get("moveType")==="copy"&&(i=t.drag.get(c),u=i.cloneNode(!0),u.set(o,""),t.drag.set(c,u),a.delegate.createDrop(u,[a.get(o)]),i.setStyles({top:"",left:""})),t.drop.get(c).insert(t.drag.get(c),"before"))}this.fire(p,{same:n,drag:t.drag,drop:t.drop}),this.fire("moved",{same:n,drag:t.drag,drop:t.drop})},_onDragStart:function(){var e=this.delegate,t=e.get("lastNode");t&&t.getDOMNode()&&t.setStyle(u,""),e.get(this.get(i)).setStyle(a,this.get(a)),e.get(r).setStyle(u,"999")},_onDragEnd:function(){this.delegate.get(this.get(i)).setStyle(a,1),this.delegate.get(r).setStyles({top:"",left:""}),this.sync()},plug:function(e,t){return e&&e.NAME.substring(0,4).toLowerCase()==="sort"?this.constructor.superclass.plug.call(this,e,t):this.delegate.dd.plug(e,t),this},sync:function(){return this.delegate.syncTargets(),this},destructor:function(){this.drop.destroy(),this.delegate.destroy(),n.unreg(this,this.get(o))},join:function(t,n){if(t instanceof e.Sortable){n||(n="full"),n=n.toLowerCase();var r="_join_"+n;return this[r]&&this[r](t),this}return e.error("Sortable: join needs a Sortable Instance"),this},_join_none:function(e){this.delegate.dd.removeFromGroup(e.get(o)),e.delegate.dd.removeFromGroup(this.get(o))},_join_full:function(e){this.delegate.dd.addToGroup(e.get(o)),e.delegate.dd.addToGroup(this.get(o))},_join_outer:function(e){this.delegate.dd.addToGroup(e.get(o))},_join_inner:function(e){e.delegate.dd.addToGroup(this.get(o))},getOrdering:function(t){var n=[];return e.Lang.isFunction(t)||(t=function(e){return e}),e.one(this.get(s)).all(this.get(l)).each(function(e){n.push(t(e))}),n}},{NAME:"sortable",ATTRS:{handles:{value:!1},container:{value:"body"},nodes:{value:".dd-draggable"},opacity:{value:".75"},opacityNode:{value:"currentNode"},id:{value:null},moveType:{value:"insert"},invalid:{value:""}},_sortables:{},_test:function(t,n){var r;return n instanceof e.Node?r=n===t:r=t.test(n),r},getSortable:function(t){var n=null,r=null;return t=e.one(t),r=t.get(o),r&&e.Sortable._sortables[r]?e.Sortable._sortables[r]:(e.Object.each(e.Sortable._sortables,function(r){e.Sortable._test(t,r.get(s))&&(n=r)}),n)},reg:function(t,n){n||(n=t.get(o)),e.Sortable._sortables[n]=t},unreg:function(t,r){r||(r=t.get(o));if(r&&e.Sortable._sortables[r]){delete e.Sortable._sortables[r];return}e.Object.each(e.Sortable._sortables,function(e,r){e===t&&delete n._sortables[r]})}}),e.Sortable=n},"3.14.0",{requires:["dd-delegate","dd-drop-plugin","dd-proxy"]});
