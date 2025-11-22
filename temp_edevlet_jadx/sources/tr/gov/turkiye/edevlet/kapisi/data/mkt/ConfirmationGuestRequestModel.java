package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\bHÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\fR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u0019"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;", "", "confirmationGuestRequestData", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestData;", "isQueueService", "", "login", "isSuccess", "", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestData;IIZ)V", "getConfirmationGuestRequestData", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestData;", "()I", "()Z", "getLogin", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ConfirmationGuestRequestModel {

    @k(name = "data")
    private final ConfirmationGuestRequestData confirmationGuestRequestData;

    @k(name = "kuyrukMu")
    private final int isQueueService;

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    public ConfirmationGuestRequestModel() {
        this(null, 0, 0, false, 15, null);
    }

    public ConfirmationGuestRequestModel(ConfirmationGuestRequestData confirmationGuestRequestData, int r22, int r32, boolean z10) {
        this.confirmationGuestRequestData = confirmationGuestRequestData;
        this.isQueueService = r22;
        this.login = r32;
        this.isSuccess = z10;
    }

    public /* synthetic */ ConfirmationGuestRequestModel(ConfirmationGuestRequestData confirmationGuestRequestData, int r32, int r42, boolean z10, int r6, d dVar) {
        this((r6 & 1) != 0 ? null : confirmationGuestRequestData, (r6 & 2) != 0 ? 0 : r32, (r6 & 4) != 0 ? 0 : r42, (r6 & 8) != 0 ? false : z10);
    }

    public static /* synthetic */ ConfirmationGuestRequestModel copy$default(ConfirmationGuestRequestModel confirmationGuestRequestModel, ConfirmationGuestRequestData confirmationGuestRequestData, int r22, int r32, boolean z10, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            confirmationGuestRequestData = confirmationGuestRequestModel.confirmationGuestRequestData;
        }
        if ((r52 & 2) != 0) {
            r22 = confirmationGuestRequestModel.isQueueService;
        }
        if ((r52 & 4) != 0) {
            r32 = confirmationGuestRequestModel.login;
        }
        if ((r52 & 8) != 0) {
            z10 = confirmationGuestRequestModel.isSuccess;
        }
        return confirmationGuestRequestModel.copy(confirmationGuestRequestData, r22, r32, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final ConfirmationGuestRequestData getConfirmationGuestRequestData() {
        return this.confirmationGuestRequestData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getIsQueueService() {
        return this.isQueueService;
    }

    /* renamed from: component3, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final ConfirmationGuestRequestModel copy(ConfirmationGuestRequestData confirmationGuestRequestData, int isQueueService, int login, boolean isSuccess) {
        return new ConfirmationGuestRequestModel(confirmationGuestRequestData, isQueueService, login, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfirmationGuestRequestModel)) {
            return false;
        }
        ConfirmationGuestRequestModel confirmationGuestRequestModel = (ConfirmationGuestRequestModel) other;
        return h.a(this.confirmationGuestRequestData, confirmationGuestRequestModel.confirmationGuestRequestData) && this.isQueueService == confirmationGuestRequestModel.isQueueService && this.login == confirmationGuestRequestModel.login && this.isSuccess == confirmationGuestRequestModel.isSuccess;
    }

    public final ConfirmationGuestRequestData getConfirmationGuestRequestData() {
        return this.confirmationGuestRequestData;
    }

    public final int getLogin() {
        return this.login;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        ConfirmationGuestRequestData confirmationGuestRequestData = this.confirmationGuestRequestData;
        int r02 = (((((confirmationGuestRequestData == null ? 0 : confirmationGuestRequestData.hashCode()) * 31) + this.isQueueService) * 31) + this.login) * 31;
        boolean z10 = this.isSuccess;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public final int isQueueService() {
        return this.isQueueService;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ConfirmationGuestRequestModel(confirmationGuestRequestData=");
        sb2.append(this.confirmationGuestRequestData);
        sb2.append(", isQueueService=");
        sb2.append(this.isQueueService);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
