package tr.gov.turkiye.edevlet.kapisi.data.extension;

import androidx.exifinterface.media.ExifInterface;
import j7.p;
import kotlin.Metadata;
import kotlin.jvm.internal.d;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007\b\u0004¢\u0006\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0005J\u000b\u0010\u0006\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005\u0082\u0001\u0006\u0007\b\t\n\u000b\f¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "get", "()Ljava/lang/Object;", "getOrThrow", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkError;", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class ServiceResult<T> {
    private ServiceResult() {
    }

    public /* synthetic */ ServiceResult(d dVar) {
        this();
    }

    public T get() {
        return null;
    }

    public final T getOrThrow() throws Throwable {
        if (this instanceof SuccessResult) {
            return (T) ((SuccessResult) this).get();
        }
        if (this instanceof QueueResult) {
            return (T) ((QueueResult) this).get();
        }
        if (this instanceof LoginFail) {
            throw ((LoginFail) this).getThrowable();
        }
        if (this instanceof ServerError) {
            throw ((ServerError) this).getThrowable();
        }
        if (this instanceof EmptyResult) {
            throw ((EmptyResult) this).getThrowable();
        }
        if (this instanceof NetworkError) {
            throw ((NetworkError) this).getThrowable();
        }
        throw new p();
    }
}
