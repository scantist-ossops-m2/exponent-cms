/*
YUI 3.14.0 (build a01e97d)
Copyright 2013 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

if (typeof __coverage__ === 'undefined') { __coverage__ = {}; }
if (!__coverage__['build/node-pluginhost/node-pluginhost.js']) {
   __coverage__['build/node-pluginhost/node-pluginhost.js'] = {"path":"build/node-pluginhost/node-pluginhost.js","s":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0,"10":0,"11":0,"12":0,"13":0,"14":0,"15":0,"16":0,"17":0,"18":0,"19":0,"20":0,"21":0,"22":0,"23":0,"24":0},"b":{},"f":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0},"fnMap":{"1":{"name":"(anonymous_1)","line":1,"loc":{"start":{"line":1,"column":27},"end":{"line":1,"column":46}}},"2":{"name":"(anonymous_2)","line":18,"loc":{"start":{"line":18,"column":14},"end":{"line":18,"column":25}}},"3":{"name":"(anonymous_3)","line":33,"loc":{"start":{"line":33,"column":16},"end":{"line":33,"column":27}}},"4":{"name":"(anonymous_4)","line":43,"loc":{"start":{"line":43,"column":33},"end":{"line":43,"column":49}}},"5":{"name":"(anonymous_5)","line":65,"loc":{"start":{"line":65,"column":28},"end":{"line":65,"column":39}}},"6":{"name":"(anonymous_6)","line":67,"loc":{"start":{"line":67,"column":26},"end":{"line":67,"column":41}}},"7":{"name":"(anonymous_7)","line":82,"loc":{"start":{"line":82,"column":30},"end":{"line":82,"column":41}}},"8":{"name":"(anonymous_8)","line":84,"loc":{"start":{"line":84,"column":26},"end":{"line":84,"column":41}}}},"statementMap":{"1":{"start":{"line":1,"column":0},"end":{"line":91,"column":56}},"2":{"start":{"line":18,"column":0},"end":{"line":23,"column":2}},"3":{"start":{"line":19,"column":4},"end":{"line":19,"column":34}},"4":{"start":{"line":20,"column":4},"end":{"line":20,"column":25}},"5":{"start":{"line":21,"column":4},"end":{"line":21,"column":43}},"6":{"start":{"line":22,"column":4},"end":{"line":22,"column":18}},"7":{"start":{"line":33,"column":0},"end":{"line":38,"column":2}},"8":{"start":{"line":34,"column":4},"end":{"line":34,"column":34}},"9":{"start":{"line":35,"column":4},"end":{"line":35,"column":25}},"10":{"start":{"line":36,"column":4},"end":{"line":36,"column":45}},"11":{"start":{"line":37,"column":4},"end":{"line":37,"column":18}},"12":{"start":{"line":40,"column":0},"end":{"line":40,"column":45}},"13":{"start":{"line":43,"column":0},"end":{"line":45,"column":3}},"14":{"start":{"line":44,"column":4},"end":{"line":44,"column":30}},"15":{"start":{"line":65,"column":0},"end":{"line":71,"column":2}},"16":{"start":{"line":66,"column":4},"end":{"line":66,"column":25}},"17":{"start":{"line":67,"column":4},"end":{"line":69,"column":7}},"18":{"start":{"line":68,"column":8},"end":{"line":68,"column":55}},"19":{"start":{"line":70,"column":4},"end":{"line":70,"column":16}},"20":{"start":{"line":82,"column":0},"end":{"line":88,"column":2}},"21":{"start":{"line":83,"column":4},"end":{"line":83,"column":25}},"22":{"start":{"line":84,"column":4},"end":{"line":86,"column":7}},"23":{"start":{"line":85,"column":8},"end":{"line":85,"column":57}},"24":{"start":{"line":87,"column":4},"end":{"line":87,"column":16}}},"branchMap":{},"code":["(function () { YUI.add('node-pluginhost', function (Y, NAME) {","","/**"," * @module node"," * @submodule node-pluginhost"," */","","/**"," * Registers plugins to be instantiated at the class level (plugins"," * which should be plugged into every instance of Node by default)."," *"," * @method plug"," * @static"," * @for Node"," * @param {Function | Array} plugin Either the plugin class, an array of plugin classes or an array of objects (with fn and cfg properties defined)"," * @param {Object} config (Optional) If plugin is the plugin class, the configuration for the plugin"," */","Y.Node.plug = function() {","    var args = Y.Array(arguments);","    args.unshift(Y.Node);","    Y.Plugin.Host.plug.apply(Y.Base, args);","    return Y.Node;","};","","/**"," * Unregisters any class level plugins which have been registered by the Node"," *"," * @method unplug"," * @static"," *"," * @param {Function | Array} plugin The plugin class, or an array of plugin classes"," */","Y.Node.unplug = function() {","    var args = Y.Array(arguments);","    args.unshift(Y.Node);","    Y.Plugin.Host.unplug.apply(Y.Base, args);","    return Y.Node;","};","","Y.mix(Y.Node, Y.Plugin.Host, false, null, 1);","","// run PluginHost constructor on cached Node instances","Y.Object.each(Y.Node._instances, function (node) {","    Y.Plugin.Host.apply(node);","});","","// allow batching of plug/unplug via NodeList","// doesn't use NodeList.importMethod because we need real Nodes (not tmpNode)","/**"," * Adds a plugin to each node in the NodeList."," * This will instantiate the plugin and attach it to the configured namespace on each node"," * @method plug"," * @for NodeList"," * @param P {Function | Object |Array} Accepts the plugin class, or an"," * object with a \"fn\" property specifying the plugin class and"," * a \"cfg\" property specifying the configuration for the Plugin."," * <p>"," * Additionally an Array can also be passed in, with the above function or"," * object values, allowing the user to add multiple plugins in a single call."," * </p>"," * @param config (Optional) If the first argument is the plugin class, the second argument"," * can be the configuration for the plugin."," * @chainable"," */","Y.NodeList.prototype.plug = function() {","    var args = arguments;","    Y.NodeList.each(this, function(node) {","        Y.Node.prototype.plug.apply(Y.one(node), args);","    });","    return this;","};","","/**"," * Removes a plugin from all nodes in the NodeList. This will destroy the"," * plugin instance and delete the namespace each node."," * @method unplug"," * @for NodeList"," * @param {String | Function} plugin The namespace of the plugin, or the plugin class with the static NS namespace property defined. If not provided,"," * all registered plugins are unplugged."," * @chainable"," */","Y.NodeList.prototype.unplug = function() {","    var args = arguments;","    Y.NodeList.each(this, function(node) {","        Y.Node.prototype.unplug.apply(Y.one(node), args);","    });","    return this;","};","","","}, '3.14.0', {\"requires\": [\"node-base\", \"pluginhost\"]});","","}());"]};
}
var __cov_pN6fN7fUiccsESbeOMj_ow = __coverage__['build/node-pluginhost/node-pluginhost.js'];
__cov_pN6fN7fUiccsESbeOMj_ow.s['1']++;YUI.add('node-pluginhost',function(Y,NAME){__cov_pN6fN7fUiccsESbeOMj_ow.f['1']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['2']++;Y.Node.plug=function(){__cov_pN6fN7fUiccsESbeOMj_ow.f['2']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['3']++;var args=Y.Array(arguments);__cov_pN6fN7fUiccsESbeOMj_ow.s['4']++;args.unshift(Y.Node);__cov_pN6fN7fUiccsESbeOMj_ow.s['5']++;Y.Plugin.Host.plug.apply(Y.Base,args);__cov_pN6fN7fUiccsESbeOMj_ow.s['6']++;return Y.Node;};__cov_pN6fN7fUiccsESbeOMj_ow.s['7']++;Y.Node.unplug=function(){__cov_pN6fN7fUiccsESbeOMj_ow.f['3']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['8']++;var args=Y.Array(arguments);__cov_pN6fN7fUiccsESbeOMj_ow.s['9']++;args.unshift(Y.Node);__cov_pN6fN7fUiccsESbeOMj_ow.s['10']++;Y.Plugin.Host.unplug.apply(Y.Base,args);__cov_pN6fN7fUiccsESbeOMj_ow.s['11']++;return Y.Node;};__cov_pN6fN7fUiccsESbeOMj_ow.s['12']++;Y.mix(Y.Node,Y.Plugin.Host,false,null,1);__cov_pN6fN7fUiccsESbeOMj_ow.s['13']++;Y.Object.each(Y.Node._instances,function(node){__cov_pN6fN7fUiccsESbeOMj_ow.f['4']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['14']++;Y.Plugin.Host.apply(node);});__cov_pN6fN7fUiccsESbeOMj_ow.s['15']++;Y.NodeList.prototype.plug=function(){__cov_pN6fN7fUiccsESbeOMj_ow.f['5']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['16']++;var args=arguments;__cov_pN6fN7fUiccsESbeOMj_ow.s['17']++;Y.NodeList.each(this,function(node){__cov_pN6fN7fUiccsESbeOMj_ow.f['6']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['18']++;Y.Node.prototype.plug.apply(Y.one(node),args);});__cov_pN6fN7fUiccsESbeOMj_ow.s['19']++;return this;};__cov_pN6fN7fUiccsESbeOMj_ow.s['20']++;Y.NodeList.prototype.unplug=function(){__cov_pN6fN7fUiccsESbeOMj_ow.f['7']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['21']++;var args=arguments;__cov_pN6fN7fUiccsESbeOMj_ow.s['22']++;Y.NodeList.each(this,function(node){__cov_pN6fN7fUiccsESbeOMj_ow.f['8']++;__cov_pN6fN7fUiccsESbeOMj_ow.s['23']++;Y.Node.prototype.unplug.apply(Y.one(node),args);});__cov_pN6fN7fUiccsESbeOMj_ow.s['24']++;return this;};},'3.14.0',{'requires':['node-base','pluginhost']});
