package tr.gov.turkiye.edevlet.kapisi.data.profile;

import androidx.constraintlayout.core.a;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J\t\u0010\u0019\u001a\u00020\tHÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003JG\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\tHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;", "", "nameSurname", "", "userProfileInfo", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;", "isTwoFactorLogin", "", "hasTwoFactorUsageRight", "", "canShowBanner", "isOTPActive", "(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIII)V", "getCanShowBanner", "()I", "getHasTwoFactorUsageRight", "()Z", "getNameSurname", "()Ljava/lang/String;", "getUserProfileInfo", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ProfileContactData {

    @k(name = "canShowBanner")
    private final int canShowBanner;

    @k(name = "twoFactorUser")
    private final int hasTwoFactorUsageRight;

    @k(name = "ikiAsamaOtpAcikMi")
    private final int isOTPActive;

    @k(name = "twoFactorLogin")
    private final boolean isTwoFactorLogin;

    @k(name = "adSoyad")
    private final String nameSurname;

    @k(name = "kullaniciBilgisi")
    private final ProfileContactPersonalData userProfileInfo;

    public ProfileContactData(String nameSurname, ProfileContactPersonalData profileContactPersonalData, boolean z10, int r52, int r6, int r72) {
        h.f(nameSurname, "nameSurname");
        this.nameSurname = nameSurname;
        this.userProfileInfo = profileContactPersonalData;
        this.isTwoFactorLogin = z10;
        this.hasTwoFactorUsageRight = r52;
        this.canShowBanner = r6;
        this.isOTPActive = r72;
    }

    public /* synthetic */ ProfileContactData(String str, ProfileContactPersonalData profileContactPersonalData, boolean z10, int r13, int r14, int r15, int r16, d dVar) {
        this(str, profileContactPersonalData, (r16 & 4) != 0 ? false : z10, (r16 & 8) != 0 ? 0 : r13, (r16 & 16) != 0 ? 0 : r14, (r16 & 32) != 0 ? 0 : r15);
    }

    public static /* synthetic */ ProfileContactData copy$default(ProfileContactData profileContactData, String str, ProfileContactPersonalData profileContactPersonalData, boolean z10, int r82, int r92, int r10, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            str = profileContactData.nameSurname;
        }
        if ((r11 & 2) != 0) {
            profileContactPersonalData = profileContactData.userProfileInfo;
        }
        ProfileContactPersonalData profileContactPersonalData2 = profileContactPersonalData;
        if ((r11 & 4) != 0) {
            z10 = profileContactData.isTwoFactorLogin;
        }
        boolean z11 = z10;
        if ((r11 & 8) != 0) {
            r82 = profileContactData.hasTwoFactorUsageRight;
        }
        int r12 = r82;
        if ((r11 & 16) != 0) {
            r92 = profileContactData.canShowBanner;
        }
        int r22 = r92;
        if ((r11 & 32) != 0) {
            r10 = profileContactData.isOTPActive;
        }
        return profileContactData.copy(str, profileContactPersonalData2, z11, r12, r22, r10);
    }

    /* renamed from: component1, reason: from getter */
    public final String getNameSurname() {
        return this.nameSurname;
    }

    /* renamed from: component2, reason: from getter */
    public final ProfileContactPersonalData getUserProfileInfo() {
        return this.userProfileInfo;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsTwoFactorLogin() {
        return this.isTwoFactorLogin;
    }

    /* renamed from: component4, reason: from getter */
    public final int getHasTwoFactorUsageRight() {
        return this.hasTwoFactorUsageRight;
    }

    /* renamed from: component5, reason: from getter */
    public final int getCanShowBanner() {
        return this.canShowBanner;
    }

    /* renamed from: component6, reason: from getter */
    public final int getIsOTPActive() {
        return this.isOTPActive;
    }

    public final ProfileContactData copy(String nameSurname, ProfileContactPersonalData userProfileInfo, boolean isTwoFactorLogin, int hasTwoFactorUsageRight, int canShowBanner, int isOTPActive) {
        h.f(nameSurname, "nameSurname");
        return new ProfileContactData(nameSurname, userProfileInfo, isTwoFactorLogin, hasTwoFactorUsageRight, canShowBanner, isOTPActive);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileContactData)) {
            return false;
        }
        ProfileContactData profileContactData = (ProfileContactData) other;
        return h.a(this.nameSurname, profileContactData.nameSurname) && h.a(this.userProfileInfo, profileContactData.userProfileInfo) && this.isTwoFactorLogin == profileContactData.isTwoFactorLogin && this.hasTwoFactorUsageRight == profileContactData.hasTwoFactorUsageRight && this.canShowBanner == profileContactData.canShowBanner && this.isOTPActive == profileContactData.isOTPActive;
    }

    public final int getCanShowBanner() {
        return this.canShowBanner;
    }

    public final int getHasTwoFactorUsageRight() {
        return this.hasTwoFactorUsageRight;
    }

    public final String getNameSurname() {
        return this.nameSurname;
    }

    public final ProfileContactPersonalData getUserProfileInfo() {
        return this.userProfileInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = this.nameSurname.hashCode() * 31;
        ProfileContactPersonalData profileContactPersonalData = this.userProfileInfo;
        int r03 = (r02 + (profileContactPersonalData == null ? 0 : profileContactPersonalData.hashCode())) * 31;
        boolean z10 = this.isTwoFactorLogin;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return ((((((r03 + r12) * 31) + this.hasTwoFactorUsageRight) * 31) + this.canShowBanner) * 31) + this.isOTPActive;
    }

    public final int isOTPActive() {
        return this.isOTPActive;
    }

    public final boolean isTwoFactorLogin() {
        return this.isTwoFactorLogin;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ProfileContactData(nameSurname=");
        sb2.append(this.nameSurname);
        sb2.append(", userProfileInfo=");
        sb2.append(this.userProfileInfo);
        sb2.append(", isTwoFactorLogin=");
        sb2.append(this.isTwoFactorLogin);
        sb2.append(", hasTwoFactorUsageRight=");
        sb2.append(this.hasTwoFactorUsageRight);
        sb2.append(", canShowBanner=");
        sb2.append(this.canShowBanner);
        sb2.append(", isOTPActive=");
        return a.d(sb2, this.isOTPActive, ')');
    }
}
