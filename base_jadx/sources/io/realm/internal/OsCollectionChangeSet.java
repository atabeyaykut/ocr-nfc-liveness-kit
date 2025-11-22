package io.realm.internal;

import io.realm.b0;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class OsCollectionChangeSet implements i {

    /* renamed from: b, reason: collision with root package name */
    public static final long f7581b = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final long f7582a;

    public OsCollectionChangeSet(long j10, boolean z10) {
        this.f7582a = j10;
        h.f7664b.a(this);
    }

    public static b0[] g(int[] r6) {
        if (r6 == null) {
            return new b0[0];
        }
        int length = r6.length / 2;
        b0[] b0VarArr = new b0[length];
        for (int r02 = 0; r02 < length; r02++) {
            int r42 = r02 * 2;
            b0VarArr[r02] = new b0(r6[r42], r6[r42 + 1]);
        }
        return b0VarArr;
    }

    private static native long nativeGetFinalizerPtr();

    private static native int[] nativeGetRanges(long j10, int r22);

    public b0[] a() {
        return g(nativeGetRanges(this.f7582a, 2));
    }

    public b0[] b() {
        return g(nativeGetRanges(this.f7582a, 0));
    }

    public void c() {
    }

    public b0[] d() {
        return g(nativeGetRanges(this.f7582a, 1));
    }

    public boolean e() {
        return this.f7582a == 0;
    }

    public void f() {
    }

    @Override // io.realm.internal.i
    public long getNativeFinalizerPtr() {
        return f7581b;
    }

    @Override // io.realm.internal.i
    public long getNativePtr() {
        return this.f7582a;
    }

    public String toString() {
        if (this.f7582a == 0) {
            return "Change set is empty.";
        }
        return "Deletion Ranges: " + Arrays.toString(b()) + "\nInsertion Ranges: " + Arrays.toString(d()) + "\nChange Ranges: " + Arrays.toString(a());
    }
}
