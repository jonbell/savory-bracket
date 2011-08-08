$("#add_criteria").live('click', function() {
  var template = $('#criteria_dup').html();
  var index = TournamentDefinition.getNextCriteriaIndex();
  var result = template.replace(/%i/g, index);
  $('#criteria').append(result);
});

$(".delete_criteria").live('click', function(e) {
  var criteria = $(this).closest('fieldset.inputs');
  if (criteria.hasClass('new'))
    criteria.remove();
  else {
    criteria.hide();
    var index = TournamentDefinition.getCriteriaIndex(criteria);
    criteria.append("<input type='hidden' value='1' name='tournament_definition[score_criteria_attributes][" + index + "][_destroy]'/>")
  }
  e.preventDefault();
  return false;
});


var TournamentDefinition = {
  getNextCriteriaIndex: function() {
    var criteria = $('#criteria fieldset:last');
    return TournamentDefinition.getCriteriaIndex(criteria) + 1;
  },
  getCriteriaIndex: function(criteria) {
    if (criteria.length == 0)
      return -1;
    else {
      var id = criteria.find('li').first().attr('id');
      var index = /tournament_definition_score_criteria_attributes_(.*)_name_input/.exec(id)[1];
      return parseInt(index);
    }
  }
};
