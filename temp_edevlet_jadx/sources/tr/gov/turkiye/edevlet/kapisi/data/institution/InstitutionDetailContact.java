package tr.gov.turkiye.edevlet.kapisi.data.institution;

import androidx.core.app.NotificationCompat;
import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003JY\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u00062\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006$"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;", "", "address", "", NotificationCompat.CATEGORY_EMAIL, "isMainInstitution", "", "latitude", "website", "longitude", "name", "telephone", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAddress", "()Ljava/lang/String;", "getEmail", "()Z", "getLatitude", "getLongitude", "getName", "getTelephone", "getWebsite", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionDetailContact {

    @k(name = "address")
    private final String address;

    @k(name = NotificationCompat.CATEGORY_EMAIL)
    private final String email;

    @k(name = "isMainInstitution")
    private final boolean isMainInstitution;

    @k(name = "latitude")
    private final String latitude;

    @k(name = "longitude")
    private final String longitude;

    @k(name = "name")
    private final String name;

    @k(name = "telephone")
    private final String telephone;

    @k(name = "link")
    private final String website;

    public InstitutionDetailContact(String address, String email, boolean z10, String latitude, String website, String longitude, String name, String telephone) {
        h.f(address, "address");
        h.f(email, "email");
        h.f(latitude, "latitude");
        h.f(website, "website");
        h.f(longitude, "longitude");
        h.f(name, "name");
        h.f(telephone, "telephone");
        this.address = address;
        this.email = email;
        this.isMainInstitution = z10;
        this.latitude = latitude;
        this.website = website;
        this.longitude = longitude;
        this.name = name;
        this.telephone = telephone;
    }

    /* renamed from: component1, reason: from getter */
    public final String getAddress() {
        return this.address;
    }

    /* renamed from: component2, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsMainInstitution() {
        return this.isMainInstitution;
    }

    /* renamed from: component4, reason: from getter */
    public final String getLatitude() {
        return this.latitude;
    }

    /* renamed from: component5, reason: from getter */
    public final String getWebsite() {
        return this.website;
    }

    /* renamed from: component6, reason: from getter */
    public final String getLongitude() {
        return this.longitude;
    }

    /* renamed from: component7, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component8, reason: from getter */
    public final String getTelephone() {
        return this.telephone;
    }

    public final InstitutionDetailContact copy(String address, String email, boolean isMainInstitution, String latitude, String website, String longitude, String name, String telephone) {
        h.f(address, "address");
        h.f(email, "email");
        h.f(latitude, "latitude");
        h.f(website, "website");
        h.f(longitude, "longitude");
        h.f(name, "name");
        h.f(telephone, "telephone");
        return new InstitutionDetailContact(address, email, isMainInstitution, latitude, website, longitude, name, telephone);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionDetailContact)) {
            return false;
        }
        InstitutionDetailContact institutionDetailContact = (InstitutionDetailContact) other;
        return h.a(this.address, institutionDetailContact.address) && h.a(this.email, institutionDetailContact.email) && this.isMainInstitution == institutionDetailContact.isMainInstitution && h.a(this.latitude, institutionDetailContact.latitude) && h.a(this.website, institutionDetailContact.website) && h.a(this.longitude, institutionDetailContact.longitude) && h.a(this.name, institutionDetailContact.name) && h.a(this.telephone, institutionDetailContact.telephone);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getLatitude() {
        return this.latitude;
    }

    public final String getLongitude() {
        return this.longitude;
    }

    public final String getName() {
        return this.name;
    }

    public final String getTelephone() {
        return this.telephone;
    }

    public final String getWebsite() {
        return this.website;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = a.a(this.email, this.address.hashCode() * 31, 31);
        boolean z10 = this.isMainInstitution;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return this.telephone.hashCode() + a.a(this.name, a.a(this.longitude, a.a(this.website, a.a(this.latitude, (r02 + r12) * 31, 31), 31), 31), 31);
    }

    public final boolean isMainInstitution() {
        return this.isMainInstitution;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionDetailContact(address=");
        sb2.append(this.address);
        sb2.append(", email=");
        sb2.append(this.email);
        sb2.append(", isMainInstitution=");
        sb2.append(this.isMainInstitution);
        sb2.append(", latitude=");
        sb2.append(this.latitude);
        sb2.append(", website=");
        sb2.append(this.website);
        sb2.append(", longitude=");
        sb2.append(this.longitude);
        sb2.append(", name=");
        sb2.append(this.name);
        sb2.append(", telephone=");
        return android.support.v4.media.a.h(sb2, this.telephone, ')');
    }
}
