package tr.gov.turkiye.edevlet.kapisi.data.profile;

import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;", "", "login", "", "isSuccess", "", "contactData", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;", "(IZLtr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)V", "getContactData", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;", "()Z", "setSuccess", "(Z)V", "getLogin", "()I", "setLogin", "(I)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ProfileContactModel {

    @k(name = "data")
    private final ProfileContactData contactData;

    @k(name = "return")
    private boolean isSuccess;

    @k(name = "login")
    private int login;

    public ProfileContactModel() {
        this(0, false, null, 7, null);
    }

    public ProfileContactModel(int r12, boolean z10, ProfileContactData profileContactData) {
        this.login = r12;
        this.isSuccess = z10;
        this.contactData = profileContactData;
    }

    public /* synthetic */ ProfileContactModel(int r22, boolean z10, ProfileContactData profileContactData, int r52, d dVar) {
        this((r52 & 1) != 0 ? 0 : r22, (r52 & 2) != 0 ? false : z10, (r52 & 4) != 0 ? null : profileContactData);
    }

    public static /* synthetic */ ProfileContactModel copy$default(ProfileContactModel profileContactModel, int r12, boolean z10, ProfileContactData profileContactData, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            r12 = profileContactModel.login;
        }
        if ((r42 & 2) != 0) {
            z10 = profileContactModel.isSuccess;
        }
        if ((r42 & 4) != 0) {
            profileContactData = profileContactModel.contactData;
        }
        return profileContactModel.copy(r12, z10, profileContactData);
    }

    /* renamed from: component1, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    /* renamed from: component3, reason: from getter */
    public final ProfileContactData getContactData() {
        return this.contactData;
    }

    public final ProfileContactModel copy(int login, boolean isSuccess, ProfileContactData contactData) {
        return new ProfileContactModel(login, isSuccess, contactData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileContactModel)) {
            return false;
        }
        ProfileContactModel profileContactModel = (ProfileContactModel) other;
        return this.login == profileContactModel.login && this.isSuccess == profileContactModel.isSuccess && h.a(this.contactData, profileContactModel.contactData);
    }

    public final ProfileContactData getContactData() {
        return this.contactData;
    }

    public final int getLogin() {
        return this.login;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = this.login * 31;
        boolean z10 = this.isSuccess;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r03 = (r02 + r12) * 31;
        ProfileContactData profileContactData = this.contactData;
        return r03 + (profileContactData == null ? 0 : profileContactData.hashCode());
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public final void setLogin(int r12) {
        this.login = r12;
    }

    public final void setSuccess(boolean z10) {
        this.isSuccess = z10;
    }

    public String toString() {
        return "ProfileContactModel(login=" + this.login + ", isSuccess=" + this.isSuccess + ", contactData=" + this.contactData + ')';
    }
}
