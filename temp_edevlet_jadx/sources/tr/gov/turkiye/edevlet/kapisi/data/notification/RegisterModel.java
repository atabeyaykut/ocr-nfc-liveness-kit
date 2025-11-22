package tr.gov.turkiye.edevlet.kapisi.data.notification;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0001HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;", "", "registerData", "login", "", "isSuccess", "", "(Ljava/lang/Object;IZ)V", "()Z", "getLogin", "()I", "getRegisterData", "()Ljava/lang/Object;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class RegisterModel {

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    @k(name = "data")
    private final Object registerData;

    public RegisterModel(Object registerData, int r32, boolean z10) {
        h.f(registerData, "registerData");
        this.registerData = registerData;
        this.login = r32;
        this.isSuccess = z10;
    }

    public static /* synthetic */ RegisterModel copy$default(RegisterModel registerModel, Object obj, int r22, boolean z10, int r42, Object obj2) {
        if ((r42 & 1) != 0) {
            obj = registerModel.registerData;
        }
        if ((r42 & 2) != 0) {
            r22 = registerModel.login;
        }
        if ((r42 & 4) != 0) {
            z10 = registerModel.isSuccess;
        }
        return registerModel.copy(obj, r22, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final Object getRegisterData() {
        return this.registerData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final RegisterModel copy(Object registerData, int login, boolean isSuccess) {
        h.f(registerData, "registerData");
        return new RegisterModel(registerData, login, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RegisterModel)) {
            return false;
        }
        RegisterModel registerModel = (RegisterModel) other;
        return h.a(this.registerData, registerModel.registerData) && this.login == registerModel.login && this.isSuccess == registerModel.isSuccess;
    }

    public final int getLogin() {
        return this.login;
    }

    public final Object getRegisterData() {
        return this.registerData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = ((this.registerData.hashCode() * 31) + this.login) * 31;
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
        StringBuilder sb2 = new StringBuilder("RegisterModel(registerData=");
        sb2.append(this.registerData);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
