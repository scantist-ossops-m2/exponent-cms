/*
YUI 3.10.0 (build a03ce0e)
Copyright 2013 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

if (typeof __coverage__ === 'undefined') { __coverage__ = {}; }
if (!__coverage__['build/dd-drop-plugin/dd-drop-plugin.js']) {
   __coverage__['build/dd-drop-plugin/dd-drop-plugin.js'] = {"path":"build/dd-drop-plugin/dd-drop-plugin.js","s":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"b":{},"f":{"1":0,"2":0},"fnMap":{"1":{"name":"(anonymous_1)","line":1,"loc":{"start":{"line":1,"column":26},"end":{"line":1,"column":45}}},"2":{"name":"(anonymous_2)","line":18,"loc":{"start":{"line":18,"column":19},"end":{"line":18,"column":36}}}},"statementMap":{"1":{"start":{"line":1,"column":0},"end":{"line":44,"column":40}},"2":{"start":{"line":18,"column":8},"end":{"line":21,"column":10}},"3":{"start":{"line":19,"column":12},"end":{"line":19,"column":38}},"4":{"start":{"line":20,"column":12},"end":{"line":20,"column":63}},"5":{"start":{"line":28,"column":8},"end":{"line":28,"column":37}},"6":{"start":{"line":34,"column":8},"end":{"line":34,"column":25}},"7":{"start":{"line":37,"column":8},"end":{"line":37,"column":34}},"8":{"start":{"line":38,"column":8},"end":{"line":38,"column":30}},"9":{"start":{"line":39,"column":8},"end":{"line":39,"column":29}}},"branchMap":{},"code":["(function () { YUI.add('dd-drop-plugin', function (Y, NAME) {","","","       /**","        * Simple Drop plugin that can be attached to a Node via the plug method.","        * @module dd","        * @submodule dd-drop-plugin","        */","       /**","        * Simple Drop plugin that can be attached to a Node via the plug method.","        * @class Drop","        * @extends DD.Drop","        * @constructor","        * @namespace Plugin","        */","","","        var Drop = function(config) {","            config.node = config.host;","            Drop.superclass.constructor.apply(this, arguments);","        };","","        /**","        * dd-drop-plugin","        * @property NAME","        * @type {String}","        */","        Drop.NAME = \"dd-drop-plugin\";","        /**","        * The Drop instance will be placed on the Node instance under the drop namespace. It can be accessed via Node.drop;","        * @property NS","        * @type {String}","        */","        Drop.NS = \"drop\";","","","        Y.extend(Drop, Y.DD.Drop);","        Y.namespace('Plugin');","        Y.Plugin.Drop = Drop;","","","","","}, '3.10.0', {\"requires\": [\"dd-drop\"]});","","}());"]};
}
var __cov_KVlxezpGf5TlaMDCevWTug = __coverage__['build/dd-drop-plugin/dd-drop-plugin.js'];
__cov_KVlxezpGf5TlaMDCevWTug.s['1']++;YUI.add('dd-drop-plugin',function(Y,NAME){__cov_KVlxezpGf5TlaMDCevWTug.f['1']++;__cov_KVlxezpGf5TlaMDCevWTug.s['2']++;var Drop=function(config){__cov_KVlxezpGf5TlaMDCevWTug.f['2']++;__cov_KVlxezpGf5TlaMDCevWTug.s['3']++;config.node=config.host;__cov_KVlxezpGf5TlaMDCevWTug.s['4']++;Drop.superclass.constructor.apply(this,arguments);};__cov_KVlxezpGf5TlaMDCevWTug.s['5']++;Drop.NAME='dd-drop-plugin';__cov_KVlxezpGf5TlaMDCevWTug.s['6']++;Drop.NS='drop';__cov_KVlxezpGf5TlaMDCevWTug.s['7']++;Y.extend(Drop,Y.DD.Drop);__cov_KVlxezpGf5TlaMDCevWTug.s['8']++;Y.namespace('Plugin');__cov_KVlxezpGf5TlaMDCevWTug.s['9']++;Y.Plugin.Drop=Drop;},'3.10.0',{'requires':['dd-drop']});
