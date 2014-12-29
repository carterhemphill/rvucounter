var DynamicSelectable;

$.fn.extend({
  dynamicSelectable: function() {
    return $(this).each(function(i, el) {
      return new DynamicSelectable($(el));
    });
  }
});

DynamicSelectable = (function() {
  function DynamicSelectable($select) {
    this.init($select);
  }

  DynamicSelectable.prototype.init = function($select) {
    this.urlTemplate = $select.data('dynamicSelectableUrl');
    this.$targetSelect = $($select.data('dynamicSelectableTarget'));
    return $select.on('change', (function(_this) {
      return function() {
        var url,radioTemplate;
        _this.clearTarget();
        url = _this.constructUrl($select.val());
        if (url) {
          $.getJSON(url, function(data) {
            $.each(data, function(index, el) {
              radioTemplate = "<tr><td><label name=\"charge[code_number]\" for=\"charge_code_number_" + el.number + "\"><input class=\"radio_buttons optional\" type=\"radio\" value=\"" + el.number + "\" name=\"charge[code_number]\" id=\"charge_code_number_" + el.number + "\">" + el.number + "</label></td>";
              radioTemplate += "<td><label name=\"charge[code_rvu]\" for=\"charge_code_rvu_" + el.rvu + "\"><input class=\"radio_buttons optional\" type=\"radio\" value=\"" + el.rvu + "\" name=\"charge[code_rvu]\" id=\"charge_code_rvu_" + el.rvu + "\">" + el.rvu + "</label></td></tr>";
              _this.$targetSelect.append(radioTemplate);
            });
            _this.reinitializeTarget();
          });
        } else {
          _this.reinitializeTarget();
        }
      };
    })(this));
  };

  DynamicSelectable.prototype.reinitializeTarget = function() {
    this.$targetSelect.trigger("change");
  };

  DynamicSelectable.prototype.clearTarget = function() {
    this.$targetSelect.html('');
  };

  DynamicSelectable.prototype.constructUrl = function(id) {
    if (id && id !== '') {
      return this.urlTemplate.replace(/:.+_category/, id);
    }
  };

  return DynamicSelectable;

})();
