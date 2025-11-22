package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import kotlin.Metadata;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;", "", "isSuccess", "", "content", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;", "exception", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;", "(ZLtr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V", "getContent", "()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;", "setContent", "(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;)V", "getException", "()Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;", "setException", "(Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V", "()Z", "setSuccess", "(Z)V", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class IdScanOperation {
    private CardVerificationData content;
    private ErrorResult<Object> exception;
    private boolean isSuccess;

    public IdScanOperation(boolean z10, CardVerificationData cardVerificationData, ErrorResult<Object> errorResult) {
        this.isSuccess = z10;
        this.content = cardVerificationData;
        this.exception = errorResult;
    }

    public final CardVerificationData getContent() {
        return this.content;
    }

    public final ErrorResult<Object> getException() {
        return this.exception;
    }

    /* renamed from: isSuccess, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final void setContent(CardVerificationData cardVerificationData) {
        this.content = cardVerificationData;
    }

    public final void setException(ErrorResult<Object> errorResult) {
        this.exception = errorResult;
    }

    public final void setSuccess(boolean z10) {
        this.isSuccess = z10;
    }
}
