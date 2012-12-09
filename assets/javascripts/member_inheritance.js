
function observeParentProject() {
	$("#project_parent_id").change(function() {
		parentProjectChanged($("#project_parent_id").val());
	});
	parentProjectChanged($("#project_parent_id").val());
}

function parentProjectChanged(parent) {
	if(parent) {
		$("#project_inherit_members").show();
		$('label[for="project_inherit_members"]').show();
	} else {
		$("#project_inherit_members").hide();
		$('label[for="project_inherit_members"]').hide();
	}
}