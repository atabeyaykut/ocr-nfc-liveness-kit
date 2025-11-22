package tr.gov.turkiye.edevlet.kapisi.data.profile;

import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;", "", "identityNumber", "", "personalInformation", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;", "(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)V", "getIdentityNumber", "()Ljava/lang/String;", "getPersonalInformation", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ProfileContactPersonalData {

    @k(name = "kimlikNo")
    private final String identityNumber;

    @k(name = "kisiselBilgiler")
    private final PersonalInformation personalInformation;

    public ProfileContactPersonalData(String identityNumber, PersonalInformation personalInformation) {
        h.f(identityNumber, "identityNumber");
        h.f(personalInformation, "personalInformation");
        this.identityNumber = identityNumber;
        this.personalInformation = personalInformation;
    }

    public /* synthetic */ ProfileContactPersonalData(String str, PersonalInformation personalInformation, int r32, d dVar) {
        this((r32 & 1) != 0 ? "-" : str, personalInformation);
    }

    public static /* synthetic */ ProfileContactPersonalData copy$default(ProfileContactPersonalData profileContactPersonalData, String str, PersonalInformation personalInformation, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = profileContactPersonalData.identityNumber;
        }
        if ((r32 & 2) != 0) {
            personalInformation = profileContactPersonalData.personalInformation;
        }
        return profileContactPersonalData.copy(str, personalInformation);
    }

    /* renamed from: component1, reason: from getter */
    public final String getIdentityNumber() {
        return this.identityNumber;
    }

    /* renamed from: component2, reason: from getter */
    public final PersonalInformation getPersonalInformation() {
        return this.personalInformation;
    }

    public final ProfileContactPersonalData copy(String identityNumber, PersonalInformation personalInformation) {
        h.f(identityNumber, "identityNumber");
        h.f(personalInformation, "personalInformation");
        return new ProfileContactPersonalData(identityNumber, personalInformation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileContactPersonalData)) {
            return false;
        }
        ProfileContactPersonalData profileContactPersonalData = (ProfileContactPersonalData) other;
        return h.a(this.identityNumber, profileContactPersonalData.identityNumber) && h.a(this.personalInformation, profileContactPersonalData.personalInformation);
    }

    public final String getIdentityNumber() {
        return this.identityNumber;
    }

    public final PersonalInformation getPersonalInformation() {
        return this.personalInformation;
    }

    public int hashCode() {
        return this.personalInformation.hashCode() + (this.identityNumber.hashCode() * 31);
    }

    public String toString() {
        return "ProfileContactPersonalData(identityNumber=" + this.identityNumber + ", personalInformation=" + this.personalInformation + ')';
    }
}
