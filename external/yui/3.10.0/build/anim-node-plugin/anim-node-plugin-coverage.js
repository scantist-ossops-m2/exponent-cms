/*
YUI 3.10.0 (build a03ce0e)
Copyright 2013 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

if (typeof __coverage__ === 'undefined') { __coverage__ = {}; }
if (!__coverage__['build/anim-node-plugin/anim-node-plugin.js']) {
   __coverage__['build/anim-node-plugin/anim-node-plugin.js'] = {"path":"build/anim-node-plugin/anim-node-plugin.js","s":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0,"10":0},"b":{"1":[0,0]},"f":{"1":0,"2":0},"fnMap":{"1":{"name":"(anonymous_1)","line":1,"loc":{"start":{"line":1,"column":28},"end":{"line":1,"column":47}}},"2":{"name":"(anonymous_2)","line":11,"loc":{"start":{"line":11,"column":13},"end":{"line":11,"column":30}}}},"statementMap":{"1":{"start":{"line":1,"column":0},"end":{"line":26,"column":61}},"2":{"start":{"line":11,"column":0},"end":{"line":15,"column":2}},"3":{"start":{"line":12,"column":4},"end":{"line":12,"column":45}},"4":{"start":{"line":13,"column":4},"end":{"line":13,"column":30}},"5":{"start":{"line":14,"column":4},"end":{"line":14,"column":57}},"6":{"start":{"line":17,"column":0},"end":{"line":17,"column":23}},"7":{"start":{"line":18,"column":0},"end":{"line":18,"column":17}},"8":{"start":{"line":20,"column":0},"end":{"line":20,"column":25}},"9":{"start":{"line":22,"column":0},"end":{"line":22,"column":22}},"10":{"start":{"line":23,"column":0},"end":{"line":23,"column":25}}},"branchMap":{"1":{"line":12,"type":"cond-expr","locations":[{"start":{"line":12,"column":24},"end":{"line":12,"column":39}},{"start":{"line":12,"column":42},"end":{"line":12,"column":44}}]}},"code":["(function () { YUI.add('anim-node-plugin', function (Y, NAME) {","","/**"," *  Binds an Anim instance to a Node instance"," * @module anim"," * @class Plugin.NodeFX"," * @extends Anim"," * @submodule anim-node-plugin"," */","","var NodeFX = function(config) {","    config = (config) ? Y.merge(config) : {};","    config.node = config.host;","    NodeFX.superclass.constructor.apply(this, arguments);","};","","NodeFX.NAME = \"nodefx\";","NodeFX.NS = \"fx\";","","Y.extend(NodeFX, Y.Anim);","","Y.namespace('Plugin');","Y.Plugin.NodeFX = NodeFX;","","","}, '3.10.0', {\"requires\": [\"node-pluginhost\", \"anim-base\"]});","","}());"]};
}
var __cov_rw4Ct134YvRotvWfOr0i4g = __coverage__['build/anim-node-plugin/anim-node-plugin.js'];
__cov_rw4Ct134YvRotvWfOr0i4g.s['1']++;YUI.add('anim-node-plugin',function(Y,NAME){__cov_rw4Ct134YvRotvWfOr0i4g.f['1']++;__cov_rw4Ct134YvRotvWfOr0i4g.s['2']++;var NodeFX=function(config){__cov_rw4Ct134YvRotvWfOr0i4g.f['2']++;__cov_rw4Ct134YvRotvWfOr0i4g.s['3']++;config=config?(__cov_rw4Ct134YvRotvWfOr0i4g.b['1'][0]++,Y.merge(config)):(__cov_rw4Ct134YvRotvWfOr0i4g.b['1'][1]++,{});__cov_rw4Ct134YvRotvWfOr0i4g.s['4']++;config.node=config.host;__cov_rw4Ct134YvRotvWfOr0i4g.s['5']++;NodeFX.superclass.constructor.apply(this,arguments);};__cov_rw4Ct134YvRotvWfOr0i4g.s['6']++;NodeFX.NAME='nodefx';__cov_rw4Ct134YvRotvWfOr0i4g.s['7']++;NodeFX.NS='fx';__cov_rw4Ct134YvRotvWfOr0i4g.s['8']++;Y.extend(NodeFX,Y.Anim);__cov_rw4Ct134YvRotvWfOr0i4g.s['9']++;Y.namespace('Plugin');__cov_rw4Ct134YvRotvWfOr0i4g.s['10']++;Y.Plugin.NodeFX=NodeFX;},'3.10.0',{'requires':['node-pluginhost','anim-base']});
