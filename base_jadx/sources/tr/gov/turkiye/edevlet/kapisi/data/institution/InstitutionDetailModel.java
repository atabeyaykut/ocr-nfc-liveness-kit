package tr.gov.turkiye.edevlet.kapisi.data.institution;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J'\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;", "", "isSuccess", "", "login", "", "institutionDetailData", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;", "(ZILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;)V", "getInstitutionDetailData", "()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;", "setInstitutionDetailData", "(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;)V", "()Z", "setSuccess", "(Z)V", "getLogin", "()I", "setLogin", "(I)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionDetailModel {

    @k(name = "data")
    private InstitutionDetailData institutionDetailData;

    @k(name = "return")
    private boolean isSuccess;

    @k(name = "login")
    private int login;

    public InstitutionDetailModel(boolean z10, int r32, InstitutionDetailData institutionDetailData) {
        h.f(institutionDetailData, "institutionDetailData");
        this.isSuccess = z10;
        this.login = r32;
        this.institutionDetailData = institutionDetailData;
    }

    public static /* synthetic */ InstitutionDetailModel copy$default(InstitutionDetailModel institutionDetailModel, boolean z10, int r22, InstitutionDetailData institutionDetailData, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            z10 = institutionDetailModel.isSuccess;
        }
        if ((r42 & 2) != 0) {
            r22 = institutionDetailModel.login;
        }
        if ((r42 & 4) != 0) {
            institutionDetailData = institutionDetailModel.institutionDetailData;
        }
        return institutionDetailModel.copy(z10, r22, institutionDetailData);
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
    public final InstitutionDetailData getInstitutionDetailData() {
        return this.institutionDetailData;
    }

    public final InstitutionDetailModel copy(boolean isSuccess, int login, InstitutionDetailData institutionDetailData) {
        h.f(institutionDetailData, "institutionDetailData");
        return new InstitutionDetailModel(isSuccess, login, institutionDetailData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionDetailModel)) {
            return false;
        }
        InstitutionDetailModel institutionDetailModel = (InstitutionDetailModel) other;
        return this.isSuccess == institutionDetailModel.isSuccess && this.login == institutionDetailModel.login && h.a(this.institutionDetailData, institutionDetailModel.institutionDetailData);
    }

    public final InstitutionDetailData getInstitutionDetailData() {
        return this.institutionDetailData;
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
        return this.institutionDetailData.hashCode() + (((r02 * 31) + this.login) * 31);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public final void setInstitutionDetailData(InstitutionDetailData institutionDetailData) {
        h.f(institutionDetailData, "<set-?>");
        this.institutionDetailData = institutionDetailData;
    }

    public final void setLogin(int r12) {
        this.login = r12;
    }

    public final void setSuccess(boolean z10) {
        this.isSuccess = z10;
    }

    public String toString() {
        return "InstitutionDetailModel(isSuccess=" + this.isSuccess + ", login=" + this.login + ", institutionDetailData=" + this.institutionDetailData + ')';
    }
}
