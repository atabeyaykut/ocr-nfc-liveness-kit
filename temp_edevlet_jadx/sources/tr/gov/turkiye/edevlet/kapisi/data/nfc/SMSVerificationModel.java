package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import android.support.v4.media.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J;\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0005HÖ\u0001J\t\u0010!\u001a\u00020\nHÖ\u0001R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\""}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;", "", "isSuccess", "", "login", "", "smsCodeVerifyData", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;", "errorMessage", "", "", "(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;)V", "getErrorMessage", "()Ljava/util/List;", "()Z", "setSuccess", "(Z)V", "getLogin", "()I", "setLogin", "(I)V", "getSmsCodeVerifyData", "()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;", "setSmsCodeVerifyData", "(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;)V", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SMSVerificationModel {

    @k(name = "messageArr")
    private final List<String> errorMessage;

    @k(name = "return")
    private boolean isSuccess;

    @k(name = "login")
    private int login;

    @k(name = "data")
    private SmsCodeServiceResultData smsCodeVerifyData;

    public SMSVerificationModel(boolean z10, int r22, SmsCodeServiceResultData smsCodeServiceResultData, List<String> list) {
        this.isSuccess = z10;
        this.login = r22;
        this.smsCodeVerifyData = smsCodeServiceResultData;
        this.errorMessage = list;
    }

    public /* synthetic */ SMSVerificationModel(boolean z10, int r32, SmsCodeServiceResultData smsCodeServiceResultData, List list, int r6, d dVar) {
        this((r6 & 1) != 0 ? false : z10, (r6 & 2) != 0 ? 0 : r32, smsCodeServiceResultData, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SMSVerificationModel copy$default(SMSVerificationModel sMSVerificationModel, boolean z10, int r22, SmsCodeServiceResultData smsCodeServiceResultData, List list, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            z10 = sMSVerificationModel.isSuccess;
        }
        if ((r52 & 2) != 0) {
            r22 = sMSVerificationModel.login;
        }
        if ((r52 & 4) != 0) {
            smsCodeServiceResultData = sMSVerificationModel.smsCodeVerifyData;
        }
        if ((r52 & 8) != 0) {
            list = sMSVerificationModel.errorMessage;
        }
        return sMSVerificationModel.copy(z10, r22, smsCodeServiceResultData, list);
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
    public final SmsCodeServiceResultData getSmsCodeVerifyData() {
        return this.smsCodeVerifyData;
    }

    public final List<String> component4() {
        return this.errorMessage;
    }

    public final SMSVerificationModel copy(boolean isSuccess, int login, SmsCodeServiceResultData smsCodeVerifyData, List<String> errorMessage) {
        return new SMSVerificationModel(isSuccess, login, smsCodeVerifyData, errorMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SMSVerificationModel)) {
            return false;
        }
        SMSVerificationModel sMSVerificationModel = (SMSVerificationModel) other;
        return this.isSuccess == sMSVerificationModel.isSuccess && this.login == sMSVerificationModel.login && h.a(this.smsCodeVerifyData, sMSVerificationModel.smsCodeVerifyData) && h.a(this.errorMessage, sMSVerificationModel.errorMessage);
    }

    public final List<String> getErrorMessage() {
        return this.errorMessage;
    }

    public final int getLogin() {
        return this.login;
    }

    public final SmsCodeServiceResultData getSmsCodeVerifyData() {
        return this.smsCodeVerifyData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public int hashCode() {
        boolean z10 = this.isSuccess;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int r03 = ((r02 * 31) + this.login) * 31;
        SmsCodeServiceResultData smsCodeServiceResultData = this.smsCodeVerifyData;
        int r04 = (r03 + (smsCodeServiceResultData == null ? 0 : smsCodeServiceResultData.hashCode())) * 31;
        List<String> list = this.errorMessage;
        return r04 + (list != null ? list.hashCode() : 0);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public final void setLogin(int r12) {
        this.login = r12;
    }

    public final void setSmsCodeVerifyData(SmsCodeServiceResultData smsCodeServiceResultData) {
        this.smsCodeVerifyData = smsCodeServiceResultData;
    }

    public final void setSuccess(boolean z10) {
        this.isSuccess = z10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SMSVerificationModel(isSuccess=");
        sb2.append(this.isSuccess);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", smsCodeVerifyData=");
        sb2.append(this.smsCodeVerifyData);
        sb2.append(", errorMessage=");
        return a.j(sb2, this.errorMessage, ')');
    }
}
