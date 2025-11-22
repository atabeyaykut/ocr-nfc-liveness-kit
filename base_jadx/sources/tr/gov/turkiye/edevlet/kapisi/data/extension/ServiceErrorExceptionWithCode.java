package tr.gov.turkiye.edevlet.kapisi.data.extension;

import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithCode;", "", "errorCode", "", "errorMessage", "(Ljava/lang/String;Ljava/lang/String;)V", "getErrorCode", "()Ljava/lang/String;", "setErrorCode", "(Ljava/lang/String;)V", "getErrorMessage", "setErrorMessage", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ServiceErrorExceptionWithCode extends Throwable {
    private String errorCode;
    private String errorMessage;

    public ServiceErrorExceptionWithCode(String errorCode, String errorMessage) {
        h.f(errorCode, "errorCode");
        h.f(errorMessage, "errorMessage");
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    public final String getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final void setErrorCode(String str) {
        h.f(str, "<set-?>");
        this.errorCode = str;
    }

    public final void setErrorMessage(String str) {
        h.f(str, "<set-?>");
        this.errorMessage = str;
    }
}
