package h5;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import o3.h0;

/* loaded from: classes.dex */
public final class u implements v {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6865a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6866b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final e f6867c;

    public u(@NonNull Executor executor, @NonNull e eVar) {
        this.f6865a = executor;
        this.f6867c = eVar;
    }

    @Override // h5.v
    public final void b(@NonNull k kVar) {
        synchronized (this.f6866b) {
            if (this.f6867c == null) {
                return;
            }
            this.f6865a.execute(new h0(4, this, kVar));
        }
    }
}
