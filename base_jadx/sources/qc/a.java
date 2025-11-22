package qc;

import java.util.Arrays;
import qc.b;

/* loaded from: classes2.dex */
public abstract class a<S extends b<?>> {

    /* renamed from: a, reason: collision with root package name */
    public S[] f13484a;

    /* renamed from: b, reason: collision with root package name */
    public int f13485b;

    /* renamed from: c, reason: collision with root package name */
    public int f13486c;

    public final S b() {
        S s7;
        synchronized (this) {
            S[] sArr = this.f13484a;
            if (sArr == null) {
                sArr = (S[]) d();
                this.f13484a = sArr;
            } else if (this.f13485b >= sArr.length) {
                Object[] objArrCopyOf = Arrays.copyOf(sArr, sArr.length * 2);
                kotlin.jvm.internal.h.e(objArrCopyOf, "copyOf(this, newSize)");
                this.f13484a = (S[]) ((b[]) objArrCopyOf);
                sArr = (S[]) ((b[]) objArrCopyOf);
            }
            int r12 = this.f13486c;
            do {
                s7 = sArr[r12];
                if (s7 == null) {
                    s7 = (S) c();
                    sArr[r12] = s7;
                }
                r12++;
                if (r12 >= sArr.length) {
                    r12 = 0;
                }
            } while (!s7.a(this));
            this.f13486c = r12;
            this.f13485b++;
        }
        return s7;
    }

    public abstract S c();

    public abstract b[] d();

    public final void e(S s7) {
        int r12;
        p9.d[] dVarArrB;
        synchronized (this) {
            int r02 = this.f13485b - 1;
            this.f13485b = r02;
            r12 = 0;
            if (r02 == 0) {
                this.f13486c = 0;
            }
            dVarArrB = s7.b(this);
        }
        int length = dVarArrB.length;
        while (r12 < length) {
            p9.d dVar = dVarArrB[r12];
            r12++;
            if (dVar != null) {
                dVar.resumeWith(l9.m.f9594a);
            }
        }
    }
}
