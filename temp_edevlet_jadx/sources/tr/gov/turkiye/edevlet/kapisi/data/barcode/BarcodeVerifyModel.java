package tr.gov.turkiye.edevlet.kapisi.data.barcode;

import androidx.browser.browseractions.b;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\nHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\bHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;", "", "barcodeData", "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;", "login", "", "messageArr", "", "", "isSuccess", "", "(Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;ILjava/util/List;Z)V", "getBarcodeData", "()Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;", "()Z", "getLogin", "()I", "getMessageArr", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class BarcodeVerifyModel {

    @k(name = "data")
    private final BarcodeData barcodeData;

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    @k(name = "messageArr")
    private final List<String> messageArr;

    public BarcodeVerifyModel(BarcodeData barcodeData, int r22, List<String> list, boolean z10) {
        this.barcodeData = barcodeData;
        this.login = r22;
        this.messageArr = list;
        this.isSuccess = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BarcodeVerifyModel copy$default(BarcodeVerifyModel barcodeVerifyModel, BarcodeData barcodeData, int r22, List list, boolean z10, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            barcodeData = barcodeVerifyModel.barcodeData;
        }
        if ((r52 & 2) != 0) {
            r22 = barcodeVerifyModel.login;
        }
        if ((r52 & 4) != 0) {
            list = barcodeVerifyModel.messageArr;
        }
        if ((r52 & 8) != 0) {
            z10 = barcodeVerifyModel.isSuccess;
        }
        return barcodeVerifyModel.copy(barcodeData, r22, list, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final BarcodeData getBarcodeData() {
        return this.barcodeData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    public final List<String> component3() {
        return this.messageArr;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final BarcodeVerifyModel copy(BarcodeData barcodeData, int login, List<String> messageArr, boolean isSuccess) {
        return new BarcodeVerifyModel(barcodeData, login, messageArr, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BarcodeVerifyModel)) {
            return false;
        }
        BarcodeVerifyModel barcodeVerifyModel = (BarcodeVerifyModel) other;
        return h.a(this.barcodeData, barcodeVerifyModel.barcodeData) && this.login == barcodeVerifyModel.login && h.a(this.messageArr, barcodeVerifyModel.messageArr) && this.isSuccess == barcodeVerifyModel.isSuccess;
    }

    public final BarcodeData getBarcodeData() {
        return this.barcodeData;
    }

    public final int getLogin() {
        return this.login;
    }

    public final List<String> getMessageArr() {
        return this.messageArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        BarcodeData barcodeData = this.barcodeData;
        int r02 = (((barcodeData == null ? 0 : barcodeData.hashCode()) * 31) + this.login) * 31;
        List<String> list = this.messageArr;
        int r03 = (r02 + (list != null ? list.hashCode() : 0)) * 31;
        boolean z10 = this.isSuccess;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r03 + r12;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("BarcodeVerifyModel(barcodeData=");
        sb2.append(this.barcodeData);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", messageArr=");
        sb2.append(this.messageArr);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
