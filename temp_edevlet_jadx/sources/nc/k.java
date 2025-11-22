package nc;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class k extends r {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f10811c = AtomicIntegerFieldUpdater.newUpdater(k.class, "_resumed");
    private volatile /* synthetic */ int _resumed;

    public k(p9.d<?> dVar, Throwable th2, boolean z10) {
        if (th2 == null) {
            th2 = new CancellationException("Continuation " + dVar + " was cancelled normally");
        }
        super(z10, th2);
        this._resumed = 0;
    }
}
