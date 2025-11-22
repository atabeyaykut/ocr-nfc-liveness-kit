package tr.gov.turkiye.edevlet.kapisi.data.institution;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J'\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;", "", "isSuccess", "", "login", "", "institutionListData", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;", "(ZILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;)V", "getInstitutionListData", "()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;", "setInstitutionListData", "(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;)V", "()Z", "setSuccess", "(Z)V", "getLogin", "()I", "setLogin", "(I)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionListModel {

    @k(name = "data")
    private InstitutionListData institutionListData;

    @k(name = "return")
    private boolean isSuccess;

    @k(name = "login")
    private int login;

    public InstitutionListModel(boolean z10, int r32, InstitutionListData institutionListData) {
        h.f(institutionListData, "institutionListData");
        this.isSuccess = z10;
        this.login = r32;
        this.institutionListData = institutionListData;
    }

    public static /* synthetic */ InstitutionListModel copy$default(InstitutionListModel institutionListModel, boolean z10, int r22, InstitutionListData institutionListData, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            z10 = institutionListModel.isSuccess;
        }
        if ((r42 & 2) != 0) {
            r22 = institutionListModel.login;
        }
        if ((r42 & 4) != 0) {
            institutionListData = institutionListModel.institutionListData;
        }
        return institutionListModel.copy(z10, r22, institutionListData);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component3, reason: from getter */
    public final InstitutionListData getInstitutionListData() {
        return this.institutionListData;
    }

    public final InstitutionListModel copy(boolean isSuccess, int login, InstitutionListData institutionListData) {
        h.f(institutionListData, "institutionListData");
        return new InstitutionListModel(isSuccess, login, institutionListData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionListModel)) {
            return false;
        }
        InstitutionListModel institutionListModel = (InstitutionListModel) other;
        return this.isSuccess == institutionListModel.isSuccess && this.login == institutionListModel.login && h.a(this.institutionListData, institutionListModel.institutionListData);
    }

    public final InstitutionListData getInstitutionListData() {
        return this.institutionListData;
    }

    public final int getLogin() {
        return this.login;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public int hashCode() {
        boolean z10 = this.isSuccess;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        return this.institutionListData.hashCode() + (((r02 * 31) + this.login) * 31);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public final void setInstitutionListData(InstitutionListData institutionListData) {
        h.f(institutionListData, "<set-?>");
        this.institutionListData = institutionListData;
    }

    public final void setLogin(int r12) {
        this.login = r12;
    }

    public final void setSuccess(boolean z10) {
        this.isSuccess = z10;
    }

    public String toString() {
        return "InstitutionListModel(isSuccess=" + this.isSuccess + ", login=" + this.login + ", institutionListData=" + this.institutionListData + ')';
    }
}
