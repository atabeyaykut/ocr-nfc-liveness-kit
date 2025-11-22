package kotlinx.coroutines.internal;

import androidx.core.internal.view.SupportMenu;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.internal.s;

/* loaded from: classes2.dex */
public abstract class s<S extends s<S>> extends e<S> {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9173d = AtomicIntegerFieldUpdater.newUpdater(s.class, "cleanedAndPointers");

    /* renamed from: c, reason: collision with root package name */
    public final long f9174c;
    private volatile /* synthetic */ int cleanedAndPointers;

    public s(long j10, S s7, int r42) {
        super(s7);
        this.f9174c = j10;
        this.cleanedAndPointers = r42 << 16;
    }

    @Override // kotlinx.coroutines.internal.e
    public final boolean b() {
        return this.cleanedAndPointers == f() && !c();
    }

    public final boolean e() {
        return f9173d.addAndGet(this, SupportMenu.CATEGORY_MASK) == f() && !c();
    }

    public abstract int f();

    public final boolean g() {
        int r02;
        do {
            r02 = this.cleanedAndPointers;
            if (!(r02 != f() || c())) {
                return false;
            }
        } while (!f9173d.compareAndSet(this, r02, 65536 + r02));
        return true;
    }
}
