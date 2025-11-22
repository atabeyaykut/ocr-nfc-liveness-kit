package tr.gov.turkiye.edevlet.kapisi.data.extension;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionDetailContact;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionListItem;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;

@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u001a*\u0010\u0000\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004¨\u0006\f"}, d2 = {"prepareResult", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;", "id", "", "institutionCode", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;", "iconBaseUrl", "", "categoryCode", "cityCode", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InstitutionExtensionKt {
    public static final InstitutionContactModelRealm prepareResult(InstitutionDetailContact institutionDetailContact, int r22, int r32) {
        h.f(institutionDetailContact, "<this>");
        InstitutionContactModelRealm institutionContactModelRealm = new InstitutionContactModelRealm();
        institutionContactModelRealm.setContactId(r22);
        institutionContactModelRealm.setInstitutionCode(r32);
        institutionContactModelRealm.setContactName(institutionDetailContact.getName());
        institutionContactModelRealm.setContactAddress(institutionDetailContact.getAddress());
        institutionContactModelRealm.setContactPhone(institutionDetailContact.getTelephone());
        institutionContactModelRealm.setContactWebsite(institutionDetailContact.getWebsite());
        institutionContactModelRealm.setContactEmail(institutionDetailContact.getEmail());
        institutionContactModelRealm.setContactLatitude(institutionDetailContact.getLatitude());
        institutionContactModelRealm.setContactLongitude(institutionDetailContact.getLongitude());
        institutionContactModelRealm.setMainInstitution(institutionDetailContact.isMainInstitution());
        return institutionContactModelRealm;
    }

    public static final InstitutionModelRealm prepareResult(InstitutionListItem institutionListItem, String iconBaseUrl, int r32, int r42, int r52) {
        h.f(institutionListItem, "<this>");
        h.f(iconBaseUrl, "iconBaseUrl");
        InstitutionModelRealm institutionModelRealm = new InstitutionModelRealm();
        institutionModelRealm.setInstitutionId(r32);
        institutionModelRealm.setInstitutionCode(institutionListItem.getInstitutionCode());
        institutionModelRealm.setInstitutionName(institutionListItem.getInstitutionName());
        institutionModelRealm.setIconName(iconBaseUrl + institutionListItem.getIconName());
        institutionModelRealm.setServiceCount(institutionListItem.getTotalCount());
        institutionModelRealm.setCategoryCode(r42);
        institutionModelRealm.setCityCode(r52);
        institutionModelRealm.setSectionCode(institutionListItem.getSectionCode());
        institutionModelRealm.setOpened(false);
        return institutionModelRealm;
    }
}
