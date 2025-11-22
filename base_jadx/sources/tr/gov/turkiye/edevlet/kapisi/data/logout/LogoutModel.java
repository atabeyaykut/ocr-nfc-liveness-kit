package tr.gov.turkiye.edevlet.kapisi.data.logout;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import l8.k;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/logout/LogoutModel;", "", "login", "", "isSuccess", "", "(IZ)V", "()Z", "getLogin", "()I", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class LogoutModel {

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    public LogoutModel(int r12, boolean z10) {
        this.login = r12;
        this.isSuccess = z10;
    }

    public static /* synthetic */ LogoutModel copy$default(LogoutModel logoutModel, int r12, boolean z10, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            r12 = logoutModel.login;
        }
        if ((r32 & 2) != 0) {
            z10 = logoutModel.isSuccess;
        }
        return logoutModel.copy(r12, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final LogoutModel copy(int login, boolean isSuccess) {
        return new LogoutModel(login, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LogoutModel)) {
            return false;
        }
        LogoutModel logoutModel = (LogoutModel) other;
        return this.login == logoutModel.login && this.isSuccess == logoutModel.isSuccess;
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
        return r02 + r12;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LogoutModel(login=");
        sb2.append(this.login);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
