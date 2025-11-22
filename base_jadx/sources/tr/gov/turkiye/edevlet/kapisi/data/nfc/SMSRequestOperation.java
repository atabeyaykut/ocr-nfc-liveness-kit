package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSRequestOperation;", "", "isSuccess", "", "content", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;", "(ZLtr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;)V", "getContent", "()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;", "setContent", "(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;)V", "()Z", "setSuccess", "(Z)V", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SMSRequestOperation {
    private CardVerificationData content;
    private boolean isSuccess;

    public SMSRequestOperation(boolean z10, CardVerificationData cardVerificationData) {
        this.isSuccess = z10;
        this.content = cardVerificationData;
    }

    public final CardVerificationData getContent() {
        return this.content;
    }

    /* renamed from: isSuccess, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final void setContent(CardVerificationData cardVerificationData) {
        this.content = cardVerificationData;
    }

    public final void setSuccess(boolean z10) {
        this.isSuccess = z10;
    }
}
