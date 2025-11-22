package n3;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import n3.h;

/* loaded from: classes.dex */
public final class k<R extends h> extends BasePendingResult<R> {

    /* renamed from: k, reason: collision with root package name */
    public final h f10560k;

    public k(Status status) {
        super(null);
        this.f10560k = status;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R b(Status status) {
        return (R) this.f10560k;
    }
}
