package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;", "", "twoFactorData", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;", "login", "", "isSuccess", "", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;IZ)V", "()Z", "getLogin", "()I", "getTwoFactorData", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class TwoFactorModel {

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    @k(name = "data")
    private final TwoFactorData twoFactorData;

    public TwoFactorModel() {
        this(null, 0, false, 7, null);
    }

    public TwoFactorModel(TwoFactorData twoFactorData, int r22, boolean z10) {
        this.twoFactorData = twoFactorData;
        this.login = r22;
        this.isSuccess = z10;
    }

    public /* synthetic */ TwoFactorModel(TwoFactorData twoFactorData, int r32, boolean z10, int r52, d dVar) {
        this((r52 & 1) != 0 ? null : twoFactorData, (r52 & 2) != 0 ? 0 : r32, (r52 & 4) != 0 ? false : z10);
    }

    public static /* synthetic */ TwoFactorModel copy$default(TwoFactorModel twoFactorModel, TwoFactorData twoFactorData, int r22, boolean z10, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            twoFactorData = twoFactorModel.twoFactorData;
        }
        if ((r42 & 2) != 0) {
            r22 = twoFactorModel.login;
        }
        if ((r42 & 4) != 0) {
            z10 = twoFactorModel.isSuccess;
        }
        return twoFactorModel.copy(twoFactorData, r22, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final TwoFactorData getTwoFactorData() {
        return this.twoFactorData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final TwoFactorModel copy(TwoFactorData twoFactorData, int login, boolean isSuccess) {
        return new TwoFactorModel(twoFactorData, login, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TwoFactorModel)) {
            return false;
        }
        TwoFactorModel twoFactorModel = (TwoFactorModel) other;
        return h.a(this.twoFactorData, twoFactorModel.twoFactorData) && this.login == twoFactorModel.login && this.isSuccess == twoFactorModel.isSuccess;
    }

    public final int getLogin() {
        return this.login;
    }

    public final TwoFactorData getTwoFactorData() {
        return this.twoFactorData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        TwoFactorData twoFactorData = this.twoFactorData;
        int r02 = (((twoFactorData == null ? 0 : twoFactorData.hashCode()) * 31) + this.login) * 31;
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
        StringBuilder sb2 = new StringBuilder("TwoFactorModel(twoFactorData=");
        sb2.append(this.twoFactorData);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
