package tr.gov.turkiye.edevlet.kapisi.data.update;

import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;", "", "isSuccess", "", "login", "", "updateCheckData", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;", "(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;)V", "()Z", "setSuccess", "(Z)V", "getLogin", "()I", "setLogin", "(I)V", "getUpdateCheckData", "()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;", "setUpdateCheckData", "(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class UpdateModuleSpecificServiceModel {

    @k(name = "return")
    private boolean isSuccess;

    @k(name = "login")
    private int login;

    @k(name = "data")
    private UpdateModuleSpecificServiceData updateCheckData;

    public UpdateModuleSpecificServiceModel() {
        this(false, 0, null, 7, null);
    }

    public UpdateModuleSpecificServiceModel(boolean z10, int r22, UpdateModuleSpecificServiceData updateModuleSpecificServiceData) {
        this.isSuccess = z10;
        this.login = r22;
        this.updateCheckData = updateModuleSpecificServiceData;
    }

    public /* synthetic */ UpdateModuleSpecificServiceModel(boolean z10, int r32, UpdateModuleSpecificServiceData updateModuleSpecificServiceData, int r52, d dVar) {
        this((r52 & 1) != 0 ? false : z10, (r52 & 2) != 0 ? 0 : r32, (r52 & 4) != 0 ? null : updateModuleSpecificServiceData);
    }

    public static /* synthetic */ UpdateModuleSpecificServiceModel copy$default(UpdateModuleSpecificServiceModel updateModuleSpecificServiceModel, boolean z10, int r22, UpdateModuleSpecificServiceData updateModuleSpecificServiceData, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            z10 = updateModuleSpecificServiceModel.isSuccess;
        }
        if ((r42 & 2) != 0) {
            r22 = updateModuleSpecificServiceModel.login;
        }
        if ((r42 & 4) != 0) {
            updateModuleSpecificServiceData = updateModuleSpecificServiceModel.updateCheckData;
        }
        return updateModuleSpecificServiceModel.copy(z10, r22, updateModuleSpecificServiceData);
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
    public final UpdateModuleSpecificServiceData getUpdateCheckData() {
        return this.updateCheckData;
    }

    public final UpdateModuleSpecificServiceModel copy(boolean isSuccess, int login, UpdateModuleSpecificServiceData updateCheckData) {
        return new UpdateModuleSpecificServiceModel(isSuccess, login, updateCheckData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdateModuleSpecificServiceModel)) {
            return false;
        }
        UpdateModuleSpecificServiceModel updateModuleSpecificServiceModel = (UpdateModuleSpecificServiceModel) other;
        return this.isSuccess == updateModuleSpecificServiceModel.isSuccess && this.login == updateModuleSpecificServiceModel.login && h.a(this.updateCheckData, updateModuleSpecificServiceModel.updateCheckData);
    }

    public final int getLogin() {
        return this.login;
    }

    public final UpdateModuleSpecificServiceData getUpdateCheckData() {
        return this.updateCheckData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z10 = this.isSuccess;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int r03 = ((r02 * 31) + this.login) * 31;
        UpdateModuleSpecificServiceData updateModuleSpecificServiceData = this.updateCheckData;
        return r03 + (updateModuleSpecificServiceData == null ? 0 : updateModuleSpecificServiceData.hashCode());
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

    public final void setUpdateCheckData(UpdateModuleSpecificServiceData updateModuleSpecificServiceData) {
        this.updateCheckData = updateModuleSpecificServiceData;
    }

    public String toString() {
        return "UpdateModuleSpecificServiceModel(isSuccess=" + this.isSuccess + ", login=" + this.login + ", updateCheckData=" + this.updateCheckData + ')';
    }
}
