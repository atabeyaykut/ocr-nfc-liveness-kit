package tr.gov.turkiye.edevlet.kapisi.data.info;

import androidx.browser.browseractions.b;
import androidx.camera.camera2.internal.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\tHÆ\u0003J?\u0010\u0015\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f¨\u0006\u001b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;", "", "infoMessageData", "", "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;", "login", "", "messageArr", "isSuccess", "", "(Ljava/util/List;ILjava/util/List;Z)V", "getInfoMessageData", "()Ljava/util/List;", "()Z", "getLogin", "()I", "getMessageArr", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InfoMessageModel {

    @k(name = "data")
    private final List<InfoMessageData> infoMessageData;

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    @k(name = "messageArr")
    private final List<Object> messageArr;

    public InfoMessageModel(List<InfoMessageData> list, int r32, List<? extends Object> messageArr, boolean z10) {
        h.f(messageArr, "messageArr");
        this.infoMessageData = list;
        this.login = r32;
        this.messageArr = messageArr;
        this.isSuccess = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InfoMessageModel copy$default(InfoMessageModel infoMessageModel, List list, int r22, List list2, boolean z10, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            list = infoMessageModel.infoMessageData;
        }
        if ((r52 & 2) != 0) {
            r22 = infoMessageModel.login;
        }
        if ((r52 & 4) != 0) {
            list2 = infoMessageModel.messageArr;
        }
        if ((r52 & 8) != 0) {
            z10 = infoMessageModel.isSuccess;
        }
        return infoMessageModel.copy(list, r22, list2, z10);
    }

    public final List<InfoMessageData> component1() {
        return this.infoMessageData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    public final List<Object> component3() {
        return this.messageArr;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final InfoMessageModel copy(List<InfoMessageData> infoMessageData, int login, List<? extends Object> messageArr, boolean isSuccess) {
        h.f(messageArr, "messageArr");
        return new InfoMessageModel(infoMessageData, login, messageArr, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InfoMessageModel)) {
            return false;
        }
        InfoMessageModel infoMessageModel = (InfoMessageModel) other;
        return h.a(this.infoMessageData, infoMessageModel.infoMessageData) && this.login == infoMessageModel.login && h.a(this.messageArr, infoMessageModel.messageArr) && this.isSuccess == infoMessageModel.isSuccess;
    }

    public final List<InfoMessageData> getInfoMessageData() {
        return this.infoMessageData;
    }

    public final int getLogin() {
        return this.login;
    }

    public final List<Object> getMessageArr() {
        return this.messageArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        List<InfoMessageData> list = this.infoMessageData;
        int r02 = c.c(this.messageArr, (((list == null ? 0 : list.hashCode()) * 31) + this.login) * 31, 31);
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
        StringBuilder sb2 = new StringBuilder("InfoMessageModel(infoMessageData=");
        sb2.append(this.infoMessageData);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", messageArr=");
        sb2.append(this.messageArr);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
