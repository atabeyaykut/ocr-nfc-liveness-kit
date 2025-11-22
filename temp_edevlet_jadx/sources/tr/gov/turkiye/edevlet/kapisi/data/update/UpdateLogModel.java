package tr.gov.turkiye.edevlet.kapisi.data.update;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;", "", "updateData", "login", "", "isSuccess", "", "(Ljava/lang/Object;IZ)V", "()Z", "getLogin", "()I", "getUpdateData", "()Ljava/lang/Object;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class UpdateLogModel {

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    @k(name = "data")
    private final Object updateData;

    public UpdateLogModel(Object obj, int r22, boolean z10) {
        this.updateData = obj;
        this.login = r22;
        this.isSuccess = z10;
    }

    public static /* synthetic */ UpdateLogModel copy$default(UpdateLogModel updateLogModel, Object obj, int r22, boolean z10, int r42, Object obj2) {
        if ((r42 & 1) != 0) {
            obj = updateLogModel.updateData;
        }
        if ((r42 & 2) != 0) {
            r22 = updateLogModel.login;
        }
        if ((r42 & 4) != 0) {
            z10 = updateLogModel.isSuccess;
        }
        return updateLogModel.copy(obj, r22, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final Object getUpdateData() {
        return this.updateData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final UpdateLogModel copy(Object updateData, int login, boolean isSuccess) {
        return new UpdateLogModel(updateData, login, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdateLogModel)) {
            return false;
        }
        UpdateLogModel updateLogModel = (UpdateLogModel) other;
        return h.a(this.updateData, updateLogModel.updateData) && this.login == updateLogModel.login && this.isSuccess == updateLogModel.isSuccess;
    }

    public final int getLogin() {
        return this.login;
    }

    public final Object getUpdateData() {
        return this.updateData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        Object obj = this.updateData;
        int r02 = (((obj == null ? 0 : obj.hashCode()) * 31) + this.login) * 31;
        boolean z10 = this.isSuccess;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("UpdateLogModel(updateData=");
        sb2.append(this.updateData);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
