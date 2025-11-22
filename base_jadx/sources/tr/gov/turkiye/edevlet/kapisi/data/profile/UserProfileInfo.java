package tr.gov.turkiye.edevlet.kapisi.data.profile;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;", "", "identityInformation", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;", "addressInformation", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;", "personalInformation", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;", "(Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)V", "getAddressInformation", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;", "getIdentityInformation", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;", "getPersonalInformation", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class UserProfileInfo {

    @k(name = "adresBilgisi")
    private final AddressInformation addressInformation;

    @k(name = "kimlikBilgisi")
    private final IdentityInformation identityInformation;

    @k(name = "kisiselBilgiler")
    private final PersonalInformation personalInformation;

    public UserProfileInfo(IdentityInformation identityInformation, AddressInformation addressInformation, PersonalInformation personalInformation) {
        h.f(identityInformation, "identityInformation");
        h.f(addressInformation, "addressInformation");
        h.f(personalInformation, "personalInformation");
        this.identityInformation = identityInformation;
        this.addressInformation = addressInformation;
        this.personalInformation = personalInformation;
    }

    public static /* synthetic */ UserProfileInfo copy$default(UserProfileInfo userProfileInfo, IdentityInformation identityInformation, AddressInformation addressInformation, PersonalInformation personalInformation, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            identityInformation = userProfileInfo.identityInformation;
        }
        if ((r42 & 2) != 0) {
            addressInformation = userProfileInfo.addressInformation;
        }
        if ((r42 & 4) != 0) {
            personalInformation = userProfileInfo.personalInformation;
        }
        return userProfileInfo.copy(identityInformation, addressInformation, personalInformation);
    }

    /* renamed from: component1, reason: from getter */
    public final IdentityInformation getIdentityInformation() {
        return this.identityInformation;
    }

    /* renamed from: component2, reason: from getter */
    public final AddressInformation getAddressInformation() {
        return this.addressInformation;
    }

    /* renamed from: component3, reason: from getter */
    public final PersonalInformation getPersonalInformation() {
        return this.personalInformation;
    }

    public final UserProfileInfo copy(IdentityInformation identityInformation, AddressInformation addressInformation, PersonalInformation personalInformation) {
        h.f(identityInformation, "identityInformation");
        h.f(addressInformation, "addressInformation");
        h.f(personalInformation, "personalInformation");
        return new UserProfileInfo(identityInformation, addressInformation, personalInformation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserProfileInfo)) {
            return false;
        }
        UserProfileInfo userProfileInfo = (UserProfileInfo) other;
        return h.a(this.identityInformation, userProfileInfo.identityInformation) && h.a(this.addressInformation, userProfileInfo.addressInformation) && h.a(this.personalInformation, userProfileInfo.personalInformation);
    }

    public final AddressInformation getAddressInformation() {
        return this.addressInformation;
    }

    public final IdentityInformation getIdentityInformation() {
        return this.identityInformation;
    }

    public final PersonalInformation getPersonalInformation() {
        return this.personalInformation;
    }

    public int hashCode() {
        return this.personalInformation.hashCode() + ((this.addressInformation.hashCode() + (this.identityInformation.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "UserProfileInfo(identityInformation=" + this.identityInformation + ", addressInformation=" + this.addressInformation + ", personalInformation=" + this.personalInformation + ')';
    }
}
