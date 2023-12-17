extends LineEdit
class_name linediter

signal interacted(actions: Array[Action], id:int, times_interacted: int)
signal interacted_with_item(id: int)

@export var id: int
@export var actions: Array[ActionGroup]
@export var times_interacted := -1
@export var correctpassword: String

func _on_text_submitted(new_text):
	if UI.selected_item != -1:	
		interacted_with_item.emit(id)
	else:
		if new_text == correctpassword:
			times_interacted += 1
			interacted.emit(actions[min(times_interacted, actions.size() - 1)].actions, id, times_interacted)
