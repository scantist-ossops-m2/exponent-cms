/*
YUI 3.8.0 (build 5744)
Copyright 2012 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/
if (typeof _yuitest_coverage == "undefined"){
    _yuitest_coverage = {};
    _yuitest_coverline = function(src, line){
        var coverage = _yuitest_coverage[src];
        if (!coverage.lines[line]){
            coverage.calledLines++;
        }
        coverage.lines[line]++;
    };
    _yuitest_coverfunc = function(src, name, line){
        var coverage = _yuitest_coverage[src],
            funcId = name + ":" + line;
        if (!coverage.functions[funcId]){
            coverage.calledFunctions++;
        }
        coverage.functions[funcId]++;
    };
}
_yuitest_coverage["build/attribute-base/attribute-base.js"] = {
    lines: {},
    functions: {},
    coveredLines: 0,
    calledLines: 0,
    coveredFunctions: 0,
    calledFunctions: 0,
    path: "build/attribute-base/attribute-base.js",
    code: []
};
_yuitest_coverage["build/attribute-base/attribute-base.js"].code=["YUI.add('attribute-base', function (Y, NAME) {","","    /**","     * The attribute module provides an augmentable Attribute implementation, which","     * adds configurable attributes and attribute change events to the class being","     * augmented. It also provides a State class, which is used internally by Attribute,","     * but can also be used independently to provide a name/property/value data structure to","     * store state.","     *","     * @module attribute","     */","","    /**","     * The attribute-base submodule provides core attribute handling support, with everything","     * aside from complex attribute handling in the provider's constructor.","     *","     * @module attribute","     * @submodule attribute-base","     */","","    /**","     * <p>","     * Attribute provides configurable attribute support along with attribute change events. It is designed to be","     * augmented on to a host class, and provides the host with the ability to configure attributes to store and retrieve state,","     * along with attribute change events.","     * </p>","     * <p>For example, attributes added to the host can be configured:</p>","     * <ul>","     *     <li>As read only.</li>","     *     <li>As write once.</li>","     *     <li>With a setter function, which can be used to manipulate","     *     values passed to Attribute's <a href=\"#method_set\">set</a> method, before they are stored.</li>","     *     <li>With a getter function, which can be used to manipulate stored values,","     *     before they are returned by Attribute's <a href=\"#method_get\">get</a> method.</li>","     *     <li>With a validator function, to validate values before they are stored.</li>","     * </ul>","     *","     * <p>See the <a href=\"#method_addAttr\">addAttr</a> method, for the complete set of configuration","     * options available for attributes.</p>","     *","     * <p><strong>NOTE:</strong> Most implementations will be better off extending the <a href=\"Base.html\">Base</a> class,","     * instead of augmenting Attribute directly. Base augments Attribute and will handle the initial configuration","     * of attributes for derived classes, accounting for values passed into the constructor.</p>","     *","     * @class Attribute","     * @param attrs {Object} The attributes to add during construction (passed through to <a href=\"#method_addAttrs\">addAttrs</a>). These can also be defined on the constructor being augmented with Attribute by defining the ATTRS property on the constructor.","     * @param values {Object} The initial attribute values to apply (passed through to <a href=\"#method_addAttrs\">addAttrs</a>). These are not merged/cloned. The caller is responsible for isolating user provided values if required.","     * @param lazy {boolean} Whether or not to add attributes lazily (passed through to <a href=\"#method_addAttrs\">addAttrs</a>).","     * @uses AttributeCore","     * @uses AttributeObservable","     * @uses EventTarget","     * @uses AttributeExtras","     */","    function Attribute() {","        Y.AttributeCore.apply(this, arguments);","        Y.AttributeObservable.apply(this, arguments);","        Y.AttributeExtras.apply(this, arguments);","    }","","    Y.mix(Attribute, Y.AttributeCore, false, null, 1);","    Y.mix(Attribute, Y.AttributeExtras, false, null, 1);","","    // Needs to be \"true\", to overwrite methods from AttributeCore","    Y.mix(Attribute, Y.AttributeObservable, true, null, 1);","","    /**","     * <p>The value to return from an attribute setter in order to prevent the set from going through.</p>","     *","     * <p>You can return this value from your setter if you wish to combine validator and setter","     * functionality into a single setter function, which either returns the massaged value to be stored or","     * AttributeCore.INVALID_VALUE to prevent invalid values from being stored.</p>","     *","     * @property INVALID_VALUE","     * @type Object","     * @static","     * @final","     */","    Attribute.INVALID_VALUE = Y.AttributeCore.INVALID_VALUE;","","    /**","     * The list of properties which can be configured for","     * each attribute (e.g. setter, getter, writeOnce etc.).","     *","     * This property is used internally as a whitelist for faster","     * Y.mix operations.","     *","     * @property _ATTR_CFG","     * @type Array","     * @static","     * @protected","     */","    Attribute._ATTR_CFG = Y.AttributeCore._ATTR_CFG.concat(Y.AttributeObservable._ATTR_CFG);","","    /**","     * Utility method to protect an attribute configuration hash, by merging the","     * entire object and the individual attr config objects.","     *","     * @method protectAttrs","     * @static","     * @param {Object} attrs A hash of attribute to configuration object pairs.","     * @return {Object} A protected version of the `attrs` argument.","     */","    Attribute.protectAttrs = Y.AttributeCore.protectAttrs;","","    Y.Attribute = Attribute;","","","}, '3.8.0', {\"requires\": [\"attribute-core\", \"attribute-observable\", \"attribute-extras\"]});"];
_yuitest_coverage["build/attribute-base/attribute-base.js"].lines = {"1":0,"54":0,"55":0,"56":0,"57":0,"60":0,"61":0,"64":0,"78":0,"92":0,"103":0,"105":0};
_yuitest_coverage["build/attribute-base/attribute-base.js"].functions = {"Attribute:54":0,"(anonymous 1):1":0};
_yuitest_coverage["build/attribute-base/attribute-base.js"].coveredLines = 12;
_yuitest_coverage["build/attribute-base/attribute-base.js"].coveredFunctions = 2;
_yuitest_coverline("build/attribute-base/attribute-base.js", 1);
YUI.add('attribute-base', function (Y, NAME) {

    /**
     * The attribute module provides an augmentable Attribute implementation, which
     * adds configurable attributes and attribute change events to the class being
     * augmented. It also provides a State class, which is used internally by Attribute,
     * but can also be used independently to provide a name/property/value data structure to
     * store state.
     *
     * @module attribute
     */

    /**
     * The attribute-base submodule provides core attribute handling support, with everything
     * aside from complex attribute handling in the provider's constructor.
     *
     * @module attribute
     * @submodule attribute-base
     */

    /**
     * <p>
     * Attribute provides configurable attribute support along with attribute change events. It is designed to be
     * augmented on to a host class, and provides the host with the ability to configure attributes to store and retrieve state,
     * along with attribute change events.
     * </p>
     * <p>For example, attributes added to the host can be configured:</p>
     * <ul>
     *     <li>As read only.</li>
     *     <li>As write once.</li>
     *     <li>With a setter function, which can be used to manipulate
     *     values passed to Attribute's <a href="#method_set">set</a> method, before they are stored.</li>
     *     <li>With a getter function, which can be used to manipulate stored values,
     *     before they are returned by Attribute's <a href="#method_get">get</a> method.</li>
     *     <li>With a validator function, to validate values before they are stored.</li>
     * </ul>
     *
     * <p>See the <a href="#method_addAttr">addAttr</a> method, for the complete set of configuration
     * options available for attributes.</p>
     *
     * <p><strong>NOTE:</strong> Most implementations will be better off extending the <a href="Base.html">Base</a> class,
     * instead of augmenting Attribute directly. Base augments Attribute and will handle the initial configuration
     * of attributes for derived classes, accounting for values passed into the constructor.</p>
     *
     * @class Attribute
     * @param attrs {Object} The attributes to add during construction (passed through to <a href="#method_addAttrs">addAttrs</a>). These can also be defined on the constructor being augmented with Attribute by defining the ATTRS property on the constructor.
     * @param values {Object} The initial attribute values to apply (passed through to <a href="#method_addAttrs">addAttrs</a>). These are not merged/cloned. The caller is responsible for isolating user provided values if required.
     * @param lazy {boolean} Whether or not to add attributes lazily (passed through to <a href="#method_addAttrs">addAttrs</a>).
     * @uses AttributeCore
     * @uses AttributeObservable
     * @uses EventTarget
     * @uses AttributeExtras
     */
    _yuitest_coverfunc("build/attribute-base/attribute-base.js", "(anonymous 1)", 1);
_yuitest_coverline("build/attribute-base/attribute-base.js", 54);
function Attribute() {
        _yuitest_coverfunc("build/attribute-base/attribute-base.js", "Attribute", 54);
_yuitest_coverline("build/attribute-base/attribute-base.js", 55);
Y.AttributeCore.apply(this, arguments);
        _yuitest_coverline("build/attribute-base/attribute-base.js", 56);
Y.AttributeObservable.apply(this, arguments);
        _yuitest_coverline("build/attribute-base/attribute-base.js", 57);
Y.AttributeExtras.apply(this, arguments);
    }

    _yuitest_coverline("build/attribute-base/attribute-base.js", 60);
Y.mix(Attribute, Y.AttributeCore, false, null, 1);
    _yuitest_coverline("build/attribute-base/attribute-base.js", 61);
Y.mix(Attribute, Y.AttributeExtras, false, null, 1);

    // Needs to be "true", to overwrite methods from AttributeCore
    _yuitest_coverline("build/attribute-base/attribute-base.js", 64);
Y.mix(Attribute, Y.AttributeObservable, true, null, 1);

    /**
     * <p>The value to return from an attribute setter in order to prevent the set from going through.</p>
     *
     * <p>You can return this value from your setter if you wish to combine validator and setter
     * functionality into a single setter function, which either returns the massaged value to be stored or
     * AttributeCore.INVALID_VALUE to prevent invalid values from being stored.</p>
     *
     * @property INVALID_VALUE
     * @type Object
     * @static
     * @final
     */
    _yuitest_coverline("build/attribute-base/attribute-base.js", 78);
Attribute.INVALID_VALUE = Y.AttributeCore.INVALID_VALUE;

    /**
     * The list of properties which can be configured for
     * each attribute (e.g. setter, getter, writeOnce etc.).
     *
     * This property is used internally as a whitelist for faster
     * Y.mix operations.
     *
     * @property _ATTR_CFG
     * @type Array
     * @static
     * @protected
     */
    _yuitest_coverline("build/attribute-base/attribute-base.js", 92);
Attribute._ATTR_CFG = Y.AttributeCore._ATTR_CFG.concat(Y.AttributeObservable._ATTR_CFG);

    /**
     * Utility method to protect an attribute configuration hash, by merging the
     * entire object and the individual attr config objects.
     *
     * @method protectAttrs
     * @static
     * @param {Object} attrs A hash of attribute to configuration object pairs.
     * @return {Object} A protected version of the `attrs` argument.
     */
    _yuitest_coverline("build/attribute-base/attribute-base.js", 103);
Attribute.protectAttrs = Y.AttributeCore.protectAttrs;

    _yuitest_coverline("build/attribute-base/attribute-base.js", 105);
Y.Attribute = Attribute;


}, '3.8.0', {"requires": ["attribute-core", "attribute-observable", "attribute-extras"]});
