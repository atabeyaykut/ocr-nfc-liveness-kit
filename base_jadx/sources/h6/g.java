package h6;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class g implements h5.b<Void, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Callable f6915a;

    public g(Callable callable) {
        this.f6915a = callable;
    }

    @Override // h5.b
    public final Object c(@NonNull h5.k<Void> kVar) throws Exception {
        return this.f6915a.call();
    }
}
