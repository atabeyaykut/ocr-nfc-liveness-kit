package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class c2<T> implements o2<T> {

    /* renamed from: a, reason: collision with root package name */
    public final x1 f3058a;

    /* renamed from: b, reason: collision with root package name */
    public final a3<?, ?> f3059b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3060c;

    /* renamed from: d, reason: collision with root package name */
    public final j0<?> f3061d;

    public c2(a3<?, ?> a3Var, j0<?> j0Var, x1 x1Var) {
        this.f3059b = a3Var;
        this.f3060c = j0Var.f(x1Var);
        this.f3061d = j0Var;
        this.f3058a = x1Var;
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final void a(T t10) {
        this.f3059b.c(t10);
        this.f3061d.e(t10);
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final boolean b(T t10, T t11) {
        a3<?, ?> a3Var = this.f3059b;
        if (!a3Var.i(t10).equals(a3Var.i(t11))) {
            return false;
        }
        if (!this.f3060c) {
            return true;
        }
        j0<?> j0Var = this.f3061d;
        return j0Var.a(t10).equals(j0Var.a(t11));
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final T c() {
        return (T) this.f3058a.r().f();
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final int d(T t10) {
        int r02 = this.f3059b.i(t10).hashCode();
        return this.f3060c ? (r02 * 53) + this.f3061d.a(t10).hashCode() : r02;
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final void e(T t10, T t11) {
        Class<?> cls = q2.f3269a;
        a3<?, ?> a3Var = this.f3059b;
        a3Var.f(t10, a3Var.g(a3Var.i(t10), a3Var.i(t11)));
        if (this.f3060c) {
            q2.f(this.f3061d, t10, t11);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final int f(T t10) {
        s2 s2Var;
        a3<?, ?> a3Var = this.f3059b;
        int r12 = 0;
        int r02 = a3Var.j(a3Var.i(t10)) + 0;
        if (!this.f3060c) {
            return r02;
        }
        n0<T> n0VarA = this.f3061d.a(t10);
        int r22 = 0;
        while (true) {
            s2Var = n0VarA.f3235a;
            if (r12 >= s2Var.e()) {
                break;
            }
            r22 += n0.l(s2Var.c(r12));
            r12++;
        }
        Iterator<T> it = s2Var.f().iterator();
        while (it.hasNext()) {
            r22 += n0.l((Map.Entry) it.next());
        }
        return r02 + r22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0060 A[EDGE_INSN: B:50:0x0060->B:27:0x0060 BREAK  A[LOOP:1: B:13:0x0030->B:53:0x0030], SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.clearcut.t r12) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.gms.internal.clearcut.v0 r8 = (com.google.android.gms.internal.clearcut.v0) r8
            com.google.android.gms.internal.clearcut.b3 r0 = r8.zzjp
            com.google.android.gms.internal.clearcut.b3 r1 = com.google.android.gms.internal.clearcut.b3.f
            if (r0 != r1) goto Lf
            com.google.android.gms.internal.clearcut.b3 r0 = new com.google.android.gms.internal.clearcut.b3
            r0.<init>()
            r8.zzjp = r0
        Lf:
            if (r10 >= r11) goto L6a
            int r3 = com.google.android.gms.internal.clearcut.s.e(r9, r10, r12)
            int r1 = r12.f3312a
            r8 = 11
            r10 = 2
            if (r1 == r8) goto L2e
            r8 = r1 & 7
            if (r8 != r10) goto L29
            r2 = r9
            r4 = r11
            r5 = r0
            r6 = r12
            int r10 = com.google.android.gms.internal.clearcut.s.c(r1, r2, r3, r4, r5, r6)
            goto Lf
        L29:
            int r10 = com.google.android.gms.internal.clearcut.s.a(r1, r9, r3, r11, r12)
            goto Lf
        L2e:
            r8 = 0
            r1 = 0
        L30:
            if (r3 >= r11) goto L5f
            int r2 = com.google.android.gms.internal.clearcut.s.e(r9, r3, r12)
            int r3 = r12.f3312a
            int r4 = r3 >>> 3
            r5 = r3 & 7
            if (r4 == r10) goto L4d
            r6 = 3
            if (r4 == r6) goto L42
            goto L56
        L42:
            if (r5 != r10) goto L56
            int r3 = com.google.android.gms.internal.clearcut.s.n(r9, r2, r12)
            java.lang.Object r1 = r12.f3314c
            com.google.android.gms.internal.clearcut.x r1 = (com.google.android.gms.internal.clearcut.x) r1
            goto L30
        L4d:
            if (r5 != 0) goto L56
            int r3 = com.google.android.gms.internal.clearcut.s.e(r9, r2, r12)
            int r8 = r12.f3312a
            goto L30
        L56:
            r4 = 12
            if (r3 == r4) goto L60
            int r3 = com.google.android.gms.internal.clearcut.s.a(r3, r9, r2, r11, r12)
            goto L30
        L5f:
            r2 = r3
        L60:
            if (r1 == 0) goto L68
            int r8 = r8 << 3
            r8 = r8 | r10
            r0.c(r8, r1)
        L68:
            r10 = r2
            goto Lf
        L6a:
            if (r10 != r11) goto L6d
            return
        L6d:
            com.google.android.gms.internal.clearcut.b1 r8 = com.google.android.gms.internal.clearcut.b1.b()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.c2.g(java.lang.Object, byte[], int, int, com.google.android.gms.internal.clearcut.t):void");
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final void h(Object obj, f0 f0Var) throws IOException {
        Iterator itC = this.f3061d.a(obj).c();
        while (itC.hasNext()) {
            Map.Entry entry = (Map.Entry) itC.next();
            q0 q0Var = (q0) entry.getKey();
            if (q0Var.i() != r3.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            q0Var.j();
            q0Var.s();
            boolean z10 = entry instanceof f1;
            q0Var.c();
            f0Var.f(0, z10 ? ((f1) entry).f3116a.getValue().c() : entry.getValue());
        }
        a3<?, ?> a3Var = this.f3059b;
        a3Var.d(a3Var.i(obj), f0Var);
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final boolean i(T t10) {
        return this.f3061d.a(t10).b();
    }
}
