package tr.gov.turkiye.edevlet.kapisi.data.profile;

import androidx.constraintlayout.core.a;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J=\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0016\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000eR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;", "", "userProfileInfo", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;", "isTwoFactorLogin", "", "hasTwoFactorUsageRight", "", "canShowBanner", "isOTPActive", "(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIII)V", "getCanShowBanner", "()I", "getHasTwoFactorUsageRight", "()Z", "getUserProfileInfo", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class UserProfileResult {

    @k(name = "canShowBanner")
    private final int canShowBanner;

    @k(name = "twoFactorUser")
    private final int hasTwoFactorUsageRight;

    @k(name = "ikiAsamaOtpAcikMi")
    private final int isOTPActive;

    @k(name = "twoFactorLogin")
    private final boolean isTwoFactorLogin;

    @k(name = "kullaniciBilgisi")
    private final UserProfileInfo userProfileInfo;

    public UserProfileResult(UserProfileInfo userProfileInfo, boolean z10, int r32, int r42, int r52) {
        this.userProfileInfo = userProfileInfo;
        this.isTwoFactorLogin = z10;
        this.hasTwoFactorUsageRight = r32;
        this.canShowBanner = r42;
        this.isOTPActive = r52;
    }

    public /* synthetic */ UserProfileResult(UserProfileInfo userProfileInfo, boolean z10, int r10, int r11, int r12, int r13, d dVar) {
        this(userProfileInfo, (r13 & 2) != 0 ? false : z10, (r13 & 4) != 0 ? 0 : r10, (r13 & 8) != 0 ? 0 : r11, (r13 & 16) != 0 ? 0 : r12);
    }

    public static /* synthetic */ UserProfileResult copy$default(UserProfileResult userProfileResult, UserProfileInfo userProfileInfo, boolean z10, int r6, int r72, int r82, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            userProfileInfo = userProfileResult.userProfileInfo;
        }
        if ((r92 & 2) != 0) {
            z10 = userProfileResult.isTwoFactorLogin;
        }
        boolean z11 = z10;
        if ((r92 & 4) != 0) {
            r6 = userProfileResult.hasTwoFactorUsageRight;
        }
        int r02 = r6;
        if ((r92 & 8) != 0) {
            r72 = userProfileResult.canShowBanner;
        }
        int r12 = r72;
        if ((r92 & 16) != 0) {
            r82 = userProfileResult.isOTPActive;
        }
        return userProfileResult.copy(userProfileInfo, z11, r02, r12, r82);
    }

    /* renamed from: component1, reason: from getter */
    public final UserProfileInfo getUserProfileInfo() {
        return this.userProfileInfo;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getIsTwoFactorLogin() {
        return this.isTwoFactorLogin;
    }

    /* renamed from: component3, reason: from getter */
    public final int getHasTwoFactorUsageRight() {
        return this.hasTwoFactorUsageRight;
    }

    /* renamed from: component4, reason: from getter */
    public final int getCanShowBanner() {
        return this.canShowBanner;
    }

    /* renamed from: component5, reason: from getter */
    public final int getIsOTPActive() {
        return this.isOTPActive;
    }

    public final UserProfileResult copy(UserProfileInfo userProfileInfo, boolean isTwoFactorLogin, int hasTwoFactorUsageRight, int canShowBanner, int isOTPActive) {
        return new UserProfileResult(userProfileInfo, isTwoFactorLogin, hasTwoFactorUsageRight, canShowBanner, isOTPActive);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserProfileResult)) {
            return false;
        }
        UserProfileResult userProfileResult = (UserProfileResult) other;
        return h.a(this.userProfileInfo, userProfileResult.userProfileInfo) && this.isTwoFactorLogin == userProfileResult.isTwoFactorLogin && this.hasTwoFactorUsageRight == userProfileResult.hasTwoFactorUsageRight && this.canShowBanner == userProfileResult.canShowBanner && this.isOTPActive == userProfileResult.isOTPActive;
    }

    public final int getCanShowBanner() {
        return this.canShowBanner;
    }

    public final int getHasTwoFactorUsageRight() {
        return this.hasTwoFactorUsageRight;
    }

    public final UserProfileInfo getUserProfileInfo() {
        return this.userProfileInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        UserProfileInfo userProfileInfo = this.userProfileInfo;
        int r02 = (userProfileInfo == null ? 0 : userProfileInfo.hashCode()) * 31;
        boolean z10 = this.isTwoFactorLogin;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return ((((((r02 + r12) * 31) + this.hasTwoFactorUsageRight) * 31) + this.canShowBanner) * 31) + this.isOTPActive;
    }

    public final int isOTPActive() {
        return this.isOTPActive;
    }

    public final boolean isTwoFactorLogin() {
        return this.isTwoFactorLogin;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("UserProfileResult(userProfileInfo=");
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
