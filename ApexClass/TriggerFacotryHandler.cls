public with sharing class {{ api_name }} implements ITrigger {
    private {{ obj_name }}Gateway {{ obj_name }}Gw = new {{ obj_name }}Gateway;

    /**
     * bulkBefore
     *
     * This method is called prior to execution of a BEFORE trigger. Use this to cache
     * any data required into maps prior execution of the trigger.
     */
    public void bulkBefore() {

    }
 
    /**
     * bulkAfter
     *
     * This method is called prior to execution of an AFTER trigger. Use this to cache
     * any data required into maps prior execution of the trigger.
     */
    public void bulkAfter() {
    }

    /**
     * beforeInsert
     *
     * This method is called iteratively for each record to be inserted during a BEFORE
     * trigger. Never execute any SOQL/SOSL etc in this and other iterative methods.
     */
    public void beforeInsert(SObject so) {
        {{ obj_name }} sobj = ({{ obj_name }})so;

    }
 
    /**
     * beforeUpdate
     *
     * This method is called iteratively for each record to be updated during a BEFORE
     * trigger.
     */
    public void beforeUpdate(SObject oldSo, SObject so) {
        {{ obj_name }} sobj = ({{ obj_name }})so;
        {{ obj_name }} oldSobj = ({{ obj_name }})oldSo;

    }
 
    /**
     * beforeDelete
     *
     * This method is called iteratively for each record to be deleted during a BEFORE
     * trigger.
     */
    public void beforeDelete(SObject so) {
        {{ obj_name }} sobj = ({{ obj_name }})so;

    }
 
    /**
     * afterInsert
     *
     * This method is called iteratively for each record inserted during an AFTER
     * trigger. Always put field validation in the 'After' methods in case another trigger
     * has modified any values. The record is 'read only' by this point.
     */
    public void afterInsert(SObject so) { 
        {{ obj_name }} sobj = ({{ obj_name }})so;
    }
 
    /**
     * afterUpdate
     *
     * This method is called iteratively for each record updated during an AFTER
     * trigger.
     */
    public void afterUpdate(SObject oldSo, SObject so) {
        {{ obj_name }} sobj = ({{ obj_name }})so;
        {{ obj_name }} oldSobj = ({{ obj_name }})oldSo;
    }

    public class {{ obj_name }}Gateway {

    }
}