package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.scheduling.a;

/* loaded from: classes2.dex */
public final class q<T> {
    private volatile AtomicReferenceArray<T> array;

    public q(int r22) {
        this.array = new AtomicReferenceArray<>(r22);
    }

    public final int a() {
        return this.array.length();
    }

    public final T b(int r32) {
        AtomicReferenceArray<T> atomicReferenceArray = this.array;
        if (r32 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(r32);
        }
        return null;
    }

    public final void c(int r72, a.C0173a c0173a) {
        AtomicReferenceArray<T> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (r72 < length) {
            atomicReferenceArray.set(r72, c0173a);
            return;
        }
        int r32 = r72 + 1;
        int r42 = length * 2;
        if (r32 < r42) {
            r32 = r42;
        }
        AtomicReferenceArray<T> atomicReferenceArray2 = new AtomicReferenceArray<>(r32);
        for (int r33 = 0; r33 < length; r33++) {
            atomicReferenceArray2.set(r33, atomicReferenceArray.get(r33));
        }
        atomicReferenceArray2.set(r72, c0173a);
        this.array = atomicReferenceArray2;
    }
}
