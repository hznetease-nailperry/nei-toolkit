var u = require('./util.js');

module.exports = {
    //"ALL /api/*": "INPUT YOUR SEVER HOST",
    {%- for rule in rules %}
    "{{rule.method|default('GET')}} {{rule.path}}":{{rule.func}}{% if !loop.last %},{% endif %}
    {%- endfor %}
};
