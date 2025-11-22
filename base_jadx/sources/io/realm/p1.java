package io.realm;

import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes2.dex */
public interface p1 {
    /* renamed from: realmGet$categoryCode */
    int getCategoryCode();

    /* renamed from: realmGet$cityCode */
    int getCityCode();

    /* renamed from: realmGet$contactList */
    q0<InstitutionContactModelRealm> getContactList();

    /* renamed from: realmGet$iconName */
    String getIconName();

    /* renamed from: realmGet$institutionCode */
    int getInstitutionCode();

    /* renamed from: realmGet$institutionId */
    int getInstitutionId();

    /* renamed from: realmGet$institutionName */
    String getInstitutionName();

    /* renamed from: realmGet$isOpened */
    boolean getIsOpened();

    /* renamed from: realmGet$sectionCode */
    int getSectionCode();

    /* renamed from: realmGet$serviceCount */
    int getServiceCount();

    /* renamed from: realmGet$serviceList */
    q0<ServiceModelRealm> getServiceList();
}
