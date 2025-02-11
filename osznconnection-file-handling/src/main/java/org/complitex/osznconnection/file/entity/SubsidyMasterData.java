package org.complitex.osznconnection.file.entity;

import org.complitex.dictionary.entity.ILongId;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Anatoly A. Ivanov java@inheaven.ru
 *         Date: 14.01.14 20:21
 */
public class SubsidyMasterData implements ILongId{
    private Long id;
    private Long servicingOrganizationId;
    private Long userOrganizationId;

    private Long subsidyId;

    private Map<String, Object> dbfFields = new HashMap<>();

    public SubsidyMasterData() {
    }

    public void putField(SubsidyMasterDataDBF key, Object object){
        dbfFields.put(key.name(), object);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getServicingOrganizationId() {
        return servicingOrganizationId;
    }

    public void setServicingOrganizationId(Long servicingOrganizationId) {
        this.servicingOrganizationId = servicingOrganizationId;
    }

    public Long getUserOrganizationId() {
        return userOrganizationId;
    }

    public void setUserOrganizationId(Long userOrganizationId) {
        this.userOrganizationId = userOrganizationId;
    }

    public Long getSubsidyId() {
        return subsidyId;
    }

    public void setSubsidyId(Long subsidyId) {
        this.subsidyId = subsidyId;
    }

    public Map<String, Object> getDbfFields() {
        return dbfFields;
    }

    public void setDbfFields(Map<String, Object> dbfFields) {
        this.dbfFields = dbfFields;
    }
}
