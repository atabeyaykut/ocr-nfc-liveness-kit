package ed;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static final e0 f5311a = new e0(new byte[0], 0, 0, false);

    /* renamed from: b, reason: collision with root package name */
    public static final int f5312b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference<e0>[] f5313c;

    static {
        int r02 = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f5312b = r02;
        AtomicReference<e0>[] atomicReferenceArr = new AtomicReference[r02];
        for (int r12 = 0; r12 < r02; r12++) {
            atomicReferenceArr[r12] = new AtomicReference<>();
        }
        f5313c = atomicReferenceArr;
    }

    public static final void a(e0 e0Var) {
        boolean z10 = true;
        if (!(e0Var.f == null && e0Var.f5310g == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (e0Var.f5308d) {
            return;
        }
        AtomicReference<e0> atomicReference = f5313c[(int) (Thread.currentThread().getId() & (f5312b - 1))];
        e0 e0Var2 = atomicReference.get();
        if (e0Var2 == f5311a) {
            return;
        }
        int r42 = e0Var2 == null ? 0 : e0Var2.f5307c;
        if (r42 >= 65536) {
            return;
        }
        e0Var.f = e0Var2;
        e0Var.f5306b = 0;
        e0Var.f5307c = r42 + 8192;
        while (true) {
            if (atomicReference.compareAndSet(e0Var2, e0Var)) {
                break;
            } else if (atomicReference.get() != e0Var2) {
                z10 = false;
                break;
            }
        }
        if (z10) {
            return;
        }
        e0Var.f = null;
    }

    public static final e0 b() {
        AtomicReference<e0> atomicReference = f5313c[(int) (Thread.currentThread().getId() & (f5312b - 1))];
        e0 e0Var = f5311a;
        e0 andSet = atomicReference.getAndSet(e0Var);
        if (andSet == e0Var) {
            return new e0();
        }
        if (andSet == null) {
            atomicReference.set(null);
            return new e0();
        }
        atomicReference.set(andSet.f);
        andSet.f = null;
        andSet.f5307c = 0;
        return andSet;
    }
}
