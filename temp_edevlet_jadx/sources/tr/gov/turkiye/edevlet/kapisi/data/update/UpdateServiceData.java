package tr.gov.turkiye.edevlet.kapisi.data.update;

import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;", "", "resultCode", "", "updateServiceInfo", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;", "(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V", "getResultCode", "()I", "setResultCode", "(I)V", "getUpdateServiceInfo", "()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;", "setUpdateServiceInfo", "(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class UpdateServiceData {

    @k(name = "resultCode")
    private int resultCode;

    @k(name = "updateInfo")
    private UpdateServiceInfo updateServiceInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateServiceData() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public UpdateServiceData(int r12, UpdateServiceInfo updateServiceInfo) {
        this.resultCode = r12;
        this.updateServiceInfo = updateServiceInfo;
    }

    public /* synthetic */ UpdateServiceData(int r12, UpdateServiceInfo updateServiceInfo, int r32, d dVar) {
        this((r32 & 1) != 0 ? 0 : r12, (r32 & 2) != 0 ? null : updateServiceInfo);
    }

    public static /* synthetic */ UpdateServiceData copy$default(UpdateServiceData updateServiceData, int r12, UpdateServiceInfo updateServiceInfo, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            r12 = updateServiceData.resultCode;
        }
        if ((r32 & 2) != 0) {
            updateServiceInfo = updateServiceData.updateServiceInfo;
        }
        return updateServiceData.copy(r12, updateServiceInfo);
    }

    /* renamed from: component1, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component2, reason: from getter */
    public final UpdateServiceInfo getUpdateServiceInfo() {
        return this.updateServiceInfo;
    }

    public final UpdateServiceData copy(int resultCode, UpdateServiceInfo updateServiceInfo) {
        return new UpdateServiceData(resultCode, updateServiceInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdateServiceData)) {
            return false;
        }
        UpdateServiceData updateServiceData = (UpdateServiceData) other;
        return this.resultCode == updateServiceData.resultCode && h.a(this.updateServiceInfo, updateServiceData.updateServiceInfo);
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final UpdateServiceInfo getUpdateServiceInfo() {
        return this.updateServiceInfo;
    }

    public int hashCode() {
        int r02 = this.resultCode * 31;
        UpdateServiceInfo updateServiceInfo = this.updateServiceInfo;
        return r02 + (updateServiceInfo == null ? 0 : updateServiceInfo.hashCode());
    }

    public final void setResultCode(int r12) {
        this.resultCode = r12;
    }

    public final void setUpdateServiceInfo(UpdateServiceInfo updateServiceInfo) {
        this.updateServiceInfo = updateServiceInfo;
    }

    public String toString() {
        return "UpdateServiceData(resultCode=" + this.resultCode + ", updateServiceInfo=" + this.updateServiceInfo + ')';
    }
}
