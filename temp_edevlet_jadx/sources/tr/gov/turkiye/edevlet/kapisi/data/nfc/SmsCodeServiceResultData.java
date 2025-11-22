package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;", "", "resultCode", "", "resultMessage", "(Ljava/lang/String;Ljava/lang/String;)V", "getResultCode", "()Ljava/lang/String;", "setResultCode", "(Ljava/lang/String;)V", "getResultMessage", "setResultMessage", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SmsCodeServiceResultData {

    @k(name = "sonucKodu")
    private String resultCode;

    @k(name = "sonucAciklamasi")
    private String resultMessage;

    public SmsCodeServiceResultData(String resultCode, String resultMessage) {
        h.f(resultCode, "resultCode");
        h.f(resultMessage, "resultMessage");
        this.resultCode = resultCode;
        this.resultMessage = resultMessage;
    }

    public static /* synthetic */ SmsCodeServiceResultData copy$default(SmsCodeServiceResultData smsCodeServiceResultData, String str, String str2, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = smsCodeServiceResultData.resultCode;
        }
        if ((r32 & 2) != 0) {
            str2 = smsCodeServiceResultData.resultMessage;
        }
        return smsCodeServiceResultData.copy(str, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component2, reason: from getter */
    public final String getResultMessage() {
        return this.resultMessage;
    }

    public final SmsCodeServiceResultData copy(String resultCode, String resultMessage) {
        h.f(resultCode, "resultCode");
        h.f(resultMessage, "resultMessage");
        return new SmsCodeServiceResultData(resultCode, resultMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SmsCodeServiceResultData)) {
            return false;
        }
        SmsCodeServiceResultData smsCodeServiceResultData = (SmsCodeServiceResultData) other;
        return h.a(this.resultCode, smsCodeServiceResultData.resultCode) && h.a(this.resultMessage, smsCodeServiceResultData.resultMessage);
    }

    public final String getResultCode() {
        return this.resultCode;
    }

    public final String getResultMessage() {
        return this.resultMessage;
    }

    public int hashCode() {
        return this.resultMessage.hashCode() + (this.resultCode.hashCode() * 31);
    }

    public final void setResultCode(String str) {
        h.f(str, "<set-?>");
        this.resultCode = str;
    }

    public final void setResultMessage(String str) {
        h.f(str, "<set-?>");
        this.resultMessage = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SmsCodeServiceResultData(resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultMessage=");
        return a.h(sb2, this.resultMessage, ')');
    }
}
