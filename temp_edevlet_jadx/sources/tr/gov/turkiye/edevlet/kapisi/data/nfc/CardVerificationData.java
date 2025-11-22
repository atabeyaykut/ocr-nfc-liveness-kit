package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b!\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003JO\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010(\u001a\u00020\u00062\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u000bHÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000e\"\u0004\b\u0015\u0010\u0010R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u0017\u0010\u0010R\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010\u0013¨\u0006,"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;", "", "resultCode", "", "resultMessage", "smsRequired", "", "phoneNumber", "countryCode", "isSMSSent", "smsDuration", "", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZI)V", "getCountryCode", "()Ljava/lang/String;", "setCountryCode", "(Ljava/lang/String;)V", "()Z", "setSMSSent", "(Z)V", "getPhoneNumber", "setPhoneNumber", "getResultCode", "setResultCode", "getResultMessage", "setResultMessage", "getSmsDuration", "()I", "setSmsDuration", "(I)V", "getSmsRequired", "setSmsRequired", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class CardVerificationData {

    @k(name = "ulkeKodu")
    private String countryCode;

    @k(name = "isSMSSent")
    private boolean isSMSSent;

    @k(name = "cepTel")
    private String phoneNumber;

    @k(name = "sonucKodu")
    private String resultCode;

    @k(name = "sonucAciklamasi")
    private String resultMessage;

    @k(name = "smsDuration")
    private int smsDuration;

    @k(name = "smsRequired")
    private boolean smsRequired;

    public CardVerificationData(String resultCode, String resultMessage, boolean z10, String phoneNumber, String countryCode, boolean z11, int r82) {
        h.f(resultCode, "resultCode");
        h.f(resultMessage, "resultMessage");
        h.f(phoneNumber, "phoneNumber");
        h.f(countryCode, "countryCode");
        this.resultCode = resultCode;
        this.resultMessage = resultMessage;
        this.smsRequired = z10;
        this.phoneNumber = phoneNumber;
        this.countryCode = countryCode;
        this.isSMSSent = z11;
        this.smsDuration = r82;
    }

    public static /* synthetic */ CardVerificationData copy$default(CardVerificationData cardVerificationData, String str, String str2, boolean z10, String str3, String str4, boolean z11, int r12, int r13, Object obj) {
        if ((r13 & 1) != 0) {
            str = cardVerificationData.resultCode;
        }
        if ((r13 & 2) != 0) {
            str2 = cardVerificationData.resultMessage;
        }
        String str5 = str2;
        if ((r13 & 4) != 0) {
            z10 = cardVerificationData.smsRequired;
        }
        boolean z12 = z10;
        if ((r13 & 8) != 0) {
            str3 = cardVerificationData.phoneNumber;
        }
        String str6 = str3;
        if ((r13 & 16) != 0) {
            str4 = cardVerificationData.countryCode;
        }
        String str7 = str4;
        if ((r13 & 32) != 0) {
            z11 = cardVerificationData.isSMSSent;
        }
        boolean z13 = z11;
        if ((r13 & 64) != 0) {
            r12 = cardVerificationData.smsDuration;
        }
        return cardVerificationData.copy(str, str5, z12, str6, str7, z13, r12);
    }

    /* renamed from: component1, reason: from getter */
    public final String getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component2, reason: from getter */
    public final String getResultMessage() {
        return this.resultMessage;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getSmsRequired() {
        return this.smsRequired;
    }

    /* renamed from: component4, reason: from getter */
    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    /* renamed from: component5, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getIsSMSSent() {
        return this.isSMSSent;
    }

    /* renamed from: component7, reason: from getter */
    public final int getSmsDuration() {
        return this.smsDuration;
    }

    public final CardVerificationData copy(String resultCode, String resultMessage, boolean smsRequired, String phoneNumber, String countryCode, boolean isSMSSent, int smsDuration) {
        h.f(resultCode, "resultCode");
        h.f(resultMessage, "resultMessage");
        h.f(phoneNumber, "phoneNumber");
        h.f(countryCode, "countryCode");
        return new CardVerificationData(resultCode, resultMessage, smsRequired, phoneNumber, countryCode, isSMSSent, smsDuration);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardVerificationData)) {
            return false;
        }
        CardVerificationData cardVerificationData = (CardVerificationData) other;
        return h.a(this.resultCode, cardVerificationData.resultCode) && h.a(this.resultMessage, cardVerificationData.resultMessage) && this.smsRequired == cardVerificationData.smsRequired && h.a(this.phoneNumber, cardVerificationData.phoneNumber) && h.a(this.countryCode, cardVerificationData.countryCode) && this.isSMSSent == cardVerificationData.isSMSSent && this.smsDuration == cardVerificationData.smsDuration;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getResultCode() {
        return this.resultCode;
    }

    public final String getResultMessage() {
        return this.resultMessage;
    }

    public final int getSmsDuration() {
        return this.smsDuration;
    }

    public final boolean getSmsRequired() {
        return this.smsRequired;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = a.a(this.resultMessage, this.resultCode.hashCode() * 31, 31);
        boolean z10 = this.smsRequired;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r03 = a.a(this.countryCode, a.a(this.phoneNumber, (r02 + r12) * 31, 31), 31);
        boolean z11 = this.isSMSSent;
        return ((r03 + (z11 ? 1 : z11 ? 1 : 0)) * 31) + this.smsDuration;
    }

    public final boolean isSMSSent() {
        return this.isSMSSent;
    }

    public final void setCountryCode(String str) {
        h.f(str, "<set-?>");
        this.countryCode = str;
    }

    public final void setPhoneNumber(String str) {
        h.f(str, "<set-?>");
        this.phoneNumber = str;
    }

    public final void setResultCode(String str) {
        h.f(str, "<set-?>");
        this.resultCode = str;
    }

    public final void setResultMessage(String str) {
        h.f(str, "<set-?>");
        this.resultMessage = str;
    }

    public final void setSMSSent(boolean z10) {
        this.isSMSSent = z10;
    }

    public final void setSmsDuration(int r12) {
        this.smsDuration = r12;
    }

    public final void setSmsRequired(boolean z10) {
        this.smsRequired = z10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("CardVerificationData(resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultMessage=");
        sb2.append(this.resultMessage);
        sb2.append(", smsRequired=");
        sb2.append(this.smsRequired);
        sb2.append(", phoneNumber=");
        sb2.append(this.phoneNumber);
        sb2.append(", countryCode=");
        sb2.append(this.countryCode);
        sb2.append(", isSMSSent=");
        sb2.append(this.isSMSSent);
        sb2.append(", smsDuration=");
        return androidx.constraintlayout.core.a.d(sb2, this.smsDuration, ')');
    }
}
