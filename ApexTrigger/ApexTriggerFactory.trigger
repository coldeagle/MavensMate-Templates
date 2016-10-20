trigger {{ api_name }} on {{ object_name }} (before insert, before update, before delete, after insert, after update, after delete) {
	TriggerFactory.createAndExecuteHandler({{ handler_api_name }}.class);
}
