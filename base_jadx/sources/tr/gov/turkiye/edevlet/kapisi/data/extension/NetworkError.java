package tr.gov.turkiye.edevlet.kapisi.data.extension;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0019\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkError;", ExifInterface.GPS_DIRECTION_TRUE, "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;", "throwable", "", "(Ljava/lang/Throwable;)V", "getThrowable", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class NetworkError<T> extends ServiceResult<T> {
    private final Throwable throwable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkError(Throwable throwable) {
        super(null);
        h.f(throwable, "throwable");
        this.throwable = throwable;
    }

    public static /* synthetic */ NetworkError copy$default(NetworkError networkError, Throwable th2, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            th2 = networkError.throwable;
        }
        return networkError.copy(th2);
    }

    /* renamed from: component1, reason: from getter */
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final NetworkError<T> copy(Throwable throwable) {
        h.f(throwable, "throwable");
        return new NetworkError<>(throwable);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof NetworkError) && h.a(this.throwable, ((NetworkError) other).throwable);
    }

    public final Throwable getThrowable() {
        return this.throwable;
    }

    public int hashCode() {
        return this.throwable.hashCode();
    }

    public String toString() {
        return "NetworkError(throwable=" + this.throwable + ')';
    }
}
