/*
YUI 3.14.0 (build a01e97d)
Copyright 2013 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

if (typeof __coverage__ === 'undefined') { __coverage__ = {}; }
if (!__coverage__['build/sortable-scroll/sortable-scroll.js']) {
   __coverage__['build/sortable-scroll/sortable-scroll.js'] = {"path":"build/sortable-scroll/sortable-scroll.js","s":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0,"10":0,"11":0},"b":{"1":[0,0],"2":[0,0]},"f":{"1":0,"2":0,"3":0,"4":0},"fnMap":{"1":{"name":"(anonymous_1)","line":1,"loc":{"start":{"line":1,"column":27},"end":{"line":1,"column":46}}},"2":{"name":"(anonymous_2)","line":17,"loc":{"start":{"line":17,"column":21},"end":{"line":17,"column":32}}},"3":{"name":"(anonymous_3)","line":22,"loc":{"start":{"line":22,"column":21},"end":{"line":22,"column":32}}},"4":{"name":"(anonymous_4)","line":27,"loc":{"start":{"line":27,"column":42},"end":{"line":27,"column":54}}}},"statementMap":{"1":{"start":{"line":1,"column":0},"end":{"line":67,"column":54}},"2":{"start":{"line":17,"column":4},"end":{"line":19,"column":6}},"3":{"start":{"line":18,"column":8},"end":{"line":18,"column":65}},"4":{"start":{"line":21,"column":4},"end":{"line":59,"column":7}},"5":{"start":{"line":23,"column":12},"end":{"line":23,"column":40}},"6":{"start":{"line":24,"column":12},"end":{"line":26,"column":15}},"7":{"start":{"line":27,"column":12},"end":{"line":31,"column":15}},"8":{"start":{"line":28,"column":16},"end":{"line":30,"column":17}},"9":{"start":{"line":29,"column":20},"end":{"line":29,"column":88}},"10":{"start":{"line":62,"column":4},"end":{"line":62,"column":28}},"11":{"start":{"line":63,"column":4},"end":{"line":63,"column":41}}},"branchMap":{"1":{"line":28,"type":"if","locations":[{"start":{"line":28,"column":16},"end":{"line":28,"column":16}},{"start":{"line":28,"column":16},"end":{"line":28,"column":16}}]},"2":{"line":28,"type":"binary-expr","locations":[{"start":{"line":28,"column":20},"end":{"line":28,"column":38}},{"start":{"line":28,"column":42},"end":{"line":28,"column":59}}]}},"code":["(function () { YUI.add('sortable-scroll', function (Y, NAME) {","","","    /**","     * Plugin for sortable to handle scrolling lists.","     * @module sortable","     * @submodule sortable-scroll","     */","    /**","     * Plugin for sortable to handle scrolling lists.","     * @class SortScroll","     * @extends Base","     * @constructor","     * @namespace Plugin","     */","","    var SortScroll = function() {","        SortScroll.superclass.constructor.apply(this, arguments);","    };","","    Y.extend(SortScroll, Y.Base, {","        initializer: function() {","            var host = this.get('host');","            host.plug(Y.Plugin.DDNodeScroll, {","                node: host.get('container')","            });","            host.delegate.on('drop:over', function(e) {","                if (this.dd.nodescroll && e.drag.nodescroll) {","                    e.drag.nodescroll.set('parentScroll', Y.one(this.get('container')));","                }","            });","        }","    }, {","        ATTRS: {","            host: {","                value: ''","            }","        },","        /**","        * @property NAME","        * @default SortScroll","        * @readonly","        * @protected","        * @static","        * @description The name of the class.","        * @type {String}","        */","        NAME: 'SortScroll',","        /**","        * @property NS","        * @default scroll","        * @readonly","        * @protected","        * @static","        * @description The scroll instance.","        * @type {String}","        */","        NS: 'scroll'","    });","","","    Y.namespace('Y.Plugin');","    Y.Plugin.SortableScroll = SortScroll;","","","","}, '3.14.0', {\"requires\": [\"dd-scroll\", \"sortable\"]});","","}());"]};
}
var __cov_oHJxUCNLEkas15Sa9_k0yA = __coverage__['build/sortable-scroll/sortable-scroll.js'];
__cov_oHJxUCNLEkas15Sa9_k0yA.s['1']++;YUI.add('sortable-scroll',function(Y,NAME){__cov_oHJxUCNLEkas15Sa9_k0yA.f['1']++;__cov_oHJxUCNLEkas15Sa9_k0yA.s['2']++;var SortScroll=function(){__cov_oHJxUCNLEkas15Sa9_k0yA.f['2']++;__cov_oHJxUCNLEkas15Sa9_k0yA.s['3']++;SortScroll.superclass.constructor.apply(this,arguments);};__cov_oHJxUCNLEkas15Sa9_k0yA.s['4']++;Y.extend(SortScroll,Y.Base,{initializer:function(){__cov_oHJxUCNLEkas15Sa9_k0yA.f['3']++;__cov_oHJxUCNLEkas15Sa9_k0yA.s['5']++;var host=this.get('host');__cov_oHJxUCNLEkas15Sa9_k0yA.s['6']++;host.plug(Y.Plugin.DDNodeScroll,{node:host.get('container')});__cov_oHJxUCNLEkas15Sa9_k0yA.s['7']++;host.delegate.on('drop:over',function(e){__cov_oHJxUCNLEkas15Sa9_k0yA.f['4']++;__cov_oHJxUCNLEkas15Sa9_k0yA.s['8']++;if((__cov_oHJxUCNLEkas15Sa9_k0yA.b['2'][0]++,this.dd.nodescroll)&&(__cov_oHJxUCNLEkas15Sa9_k0yA.b['2'][1]++,e.drag.nodescroll)){__cov_oHJxUCNLEkas15Sa9_k0yA.b['1'][0]++;__cov_oHJxUCNLEkas15Sa9_k0yA.s['9']++;e.drag.nodescroll.set('parentScroll',Y.one(this.get('container')));}else{__cov_oHJxUCNLEkas15Sa9_k0yA.b['1'][1]++;}});}},{ATTRS:{host:{value:''}},NAME:'SortScroll',NS:'scroll'});__cov_oHJxUCNLEkas15Sa9_k0yA.s['10']++;Y.namespace('Y.Plugin');__cov_oHJxUCNLEkas15Sa9_k0yA.s['11']++;Y.Plugin.SortableScroll=SortScroll;},'3.14.0',{'requires':['dd-scroll','sortable']});
