/*
YUI 3.10.0 (build a03ce0e)
Copyright 2013 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

YUI.add("event-custom-complex",function(e,t){var n,r,i=e.Object,s,o={},u=e.CustomEvent.prototype,a=e.EventTarget.prototype,f=function(e,t){var n;for(n in t)r.hasOwnProperty(n)||(e[n]=t[n])};e.EventFacade=function(e,t){e||(e=o),this._event=e,this.details=e.details,this.type=e.type,this._type=e.type,this.target=e.target,this.currentTarget=t,this.relatedTarget=e.relatedTarget},e.mix(e.EventFacade.prototype,{stopPropagation:function(){this._event.stopPropagation(),this.stopped=1},stopImmediatePropagation:function(){this._event.stopImmediatePropagation(),this.stopped=2},preventDefault:function(){this._event.preventDefault(),this.prevented=1},halt:function(e){this._event.halt(e),this.prevented=1,this.stopped=e?2:1}}),u.fireComplex=function(t){var n,r,i,s,o,u=!0,a,f,l,c,h,p,d,v,m,g=this,y=g.host||g,b,w,E,S=y._yuievt,x;E=g.stack;if(E&&g.queuable&&g.type!==E.next.type)return E.queue||(E.queue=[]),E.queue.push([g,t]),!0;x=g.hasSubs()||S.hasTargets||g.broadcast,g.target=g.target||y,g.currentTarget=y,g.details=t.concat();if(x){n=E||{id:g.id,next:g,silent:g.silent,stopped:0,prevented:0,bubbling:null,type:g.type,defaultTargetOnly:g.defaultTargetOnly},f=g.getSubs(),l=f[0],c=f[1],g.stopped=g.type!==n.type?0:n.stopped,g.prevented=g.type!==n.type?0:n.prevented,g.stoppedFn&&(a=new e.EventTarget({fireOnce:!0,context:y}),g.events=a,a.on("stopped",g.stoppedFn)),g._facade=null,r=g._getFacade(t),l&&g._procSubs(l,t,r),g.bubbles&&y.bubble&&!g.stopped&&(w=n.bubbling,n.bubbling=g.type,n.type!==g.type&&(n.stopped=0,n.prevented=0),u=y.bubble(g,t,null,n),g.stopped=Math.max(g.stopped,n.stopped),g.prevented=Math.max(g.prevented,n.prevented),n.bubbling=w),d=g.prevented,d?(v=g.preventedFn,v&&v.apply(y,t)):(m=g.defaultFn,m&&(!g.defaultTargetOnly&&!n.defaultTargetOnly||y===r.target)&&m.apply(y,t)),g.broadcast&&g._broadcast(t);if(c&&!g.prevented&&g.stopped<2){h=n.afterQueue;if(n.id===g.id||g.type!==S.bubbling){g._procSubs(c,t,r);if(h)while(b=h.last())b()}else p=c,n.execDefaultCnt&&(p=e.merge(p),e.each(p,function(e){e.postponed=!0})),h||(n.afterQueue=new e.Queue),n.afterQueue.add(function(){g._procSubs(p,t,r)})}g.target=null;if(n.id===g.id){s=n.queue;if(s)while(s.length)i=s.pop(),o=i[0],n.next=o,o._fire(i[1]);g.stack=null}return u=!g.stopped,g.type!==S.bubbling&&(n.stopped=0,n.prevented=0,g.stopped=0,g.prevented=0),g._facade=null,u}return m=g.defaultFn,m&&(r=g._getFacade(t),(!g.defaultTargetOnly||y===r.target)&&m.apply(y,t)),u},u._getFacade=function(t){var n=this.details,r=n&&n[0],i=typeof r=="object",s=this._facade;return s||(s=new e.EventFacade(this,this.currentTarget)),i?(f(s,r),r.type&&(s.type=r.type),t&&(t[0]=s)):t&&t.unshift(s),s.details=this.details,s.target=this.originalTarget||this.target,s.currentTarget=this.currentTarget,s.stopped=0,s.prevented=0,this._facade=s,this._facade},u.stopPropagation=function(){this.stopped=1,this.stack&&(this.stack.stopped=1),this.events&&this.events.fire("stopped",this)},u.stopImmediatePropagation=function(){this.stopped=2,this.stack&&(this.stack.stopped=2),this.events&&this.events.fire("stopped",this)},u.preventDefault=function(){this.preventable&&(this.prevented=1,this.stack&&(this.stack.prevented=1))},u.halt=function(e){e?this.stopImmediatePropagation():this.stopPropagation(),this.preventDefault()},a.addTarget=function(t){var n=this._yuievt;n.targets||(n.targets={}),n.targets[e.stamp(t)]=t,n.hasTargets=!0},a.getTargets=function(){var e=this._yuievt.targets;return e?i.values(e):[]},a.removeTarget=function(t){var n=this._yuievt.targets;n&&(delete n[e.stamp(t,!0)],i.size(n)===0&&(this._yuievt.hasTargets=!1))},a.bubble=function(e,t,n,r){var i=this._yuievt.targets,s=!0,o,u,a,f,l,c=e&&e.type,h=n||e&&e.target||this,p;if(!e||!e.stopped&&i)for(a in i)if(i.hasOwnProperty(a)){o=i[a],u=o._yuievt.events[c],o._hasSiblings&&(l=o.getSibling(c,u)),l&&!u&&(u=o.publish(c)),p=o._yuievt.bubbling,o._yuievt.bubbling=c;if(!u)o._yuievt.hasTargets&&o.bubble(e,t,h,r);else{l&&(u.sibling=l),u.target=h,u.originalTarget=h,u.currentTarget=o,f=u.broadcast,u.broadcast=!1,u.emitFacade=!0,u.stack=r,s=s&&u.fire.apply(u,t||e.details||[]),u.broadcast=f,u.originalTarget=null;if(u.stopped)break}o._yuievt.bubbling=p}return s},n=new e.EventFacade,r={};for(s in n)r[s]=!0},"3.10.0",{requires:["event-custom-base"]});
