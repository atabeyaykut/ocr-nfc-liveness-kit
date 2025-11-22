package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class t2<T> implements d3<T> {

    /* renamed from: a, reason: collision with root package name */
    public final n2 f4090a;

    /* renamed from: b, reason: collision with root package name */
    public final n3<?, ?> f4091b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4092c;

    /* renamed from: d, reason: collision with root package name */
    public final y0<?> f4093d;

    public t2(n3<?, ?> n3Var, y0<?> y0Var, n2 n2Var) {
        this.f4091b = n3Var;
        this.f4092c = y0Var.d(n2Var);
        this.f4093d = y0Var;
        this.f4090a = n2Var;
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final void a(T t10) {
        this.f4091b.h(t10);
        this.f4093d.g(t10);
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final int b(T t10) {
        g3<T, Object> g3Var;
        n3<?, ?> n3Var = this.f4091b;
        int r12 = 0;
        int i10 = n3Var.i(n3Var.e(t10)) + 0;
        if (!this.f4092c) {
            return i10;
        }
        c1<T> c1VarA = this.f4093d.a(t10);
        int r22 = 0;
        while (true) {
            g3Var = c1VarA.f3914a;
            if (r12 >= g3Var.e()) {
                break;
            }
            r22 += c1.h(g3Var.d(r12));
            r12++;
        }
        Iterator<T> it = g3Var.g().iterator();
        while (it.hasNext()) {
            r22 += c1.h((Map.Entry) it.next());
        }
        return i10 + r22;
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final int c(T t10) {
        int r02 = this.f4091b.e(t10).hashCode();
        return this.f4092c ? (r02 * 53) + this.f4093d.a(t10).hashCode() : r02;
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final boolean d(T t10, T t11) {
        n3<?, ?> n3Var = this.f4091b;
        if (!n3Var.e(t10).equals(n3Var.e(t11))) {
            return false;
        }
        if (!this.f4092c) {
            return true;
        }
        y0<?> y0Var = this.f4093d;
        return y0Var.a(t10).equals(y0Var.a(t11));
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final boolean e(T t10) {
        return this.f4093d.a(t10).k();
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final void f(Object obj, u0 u0Var) throws IOException {
        Iterator itI = this.f4093d.a(obj).i();
        while (itI.hasNext()) {
            Map.Entry entry = (Map.Entry) itI.next();
            e1 e1Var = (e1) entry.getKey();
            if (e1Var.c() != f4.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            e1Var.d();
            e1Var.e();
            boolean z10 = entry instanceof w1;
            e1Var.mo29a();
            u0Var.g(0, z10 ? ((w1) entry).f4116a.getValue().b() : entry.getValue());
        }
        n3<?, ?> n3Var = this.f4091b;
        n3Var.f(n3Var.e(obj), u0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a3, code lost:
    
        if (r5 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a5, code lost:
    
        r10.a((r1 << 3) | 2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ac, code lost:
    
        r1 = r3;
        r11 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a3 A[EDGE_INSN: B:57:0x00a3->B:39:0x00a3 BREAK  A[LOOP:1: B:18:0x005b->B:37:0x009f], SYNTHETIC] */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r18, byte[] r19, int r20, int r21, com.google.android.gms.internal.vision.l0 r22) throws java.lang.Throwable {
        /*
            r17 = this;
            r0 = r17
            r7 = r19
            r8 = r21
            r9 = r22
            r1 = r18
            com.google.android.gms.internal.vision.i1 r1 = (com.google.android.gms.internal.vision.i1) r1
            com.google.android.gms.internal.vision.q3 r2 = r1.zzb
            com.google.android.gms.internal.vision.q3 r3 = com.google.android.gms.internal.vision.q3.f
            if (r2 != r3) goto L19
            com.google.android.gms.internal.vision.q3 r2 = new com.google.android.gms.internal.vision.q3
            r2.<init>()
            r1.zzb = r2
        L19:
            r10 = r2
            r1 = r18
            com.google.android.gms.internal.vision.i1$c r1 = (com.google.android.gms.internal.vision.i1.c) r1
            r1.o()
            r11 = 0
            r1 = r20
            r2 = r11
        L25:
            if (r1 >= r8) goto Lb0
            int r3 = com.google.android.gms.internal.vision.k0.i(r7, r1, r9)
            int r1 = r9.f4022a
            r4 = 2
            r5 = 11
            com.google.android.gms.internal.vision.n2 r6 = r0.f4090a
            com.google.android.gms.internal.vision.y0<?> r12 = r0.f4093d
            com.google.android.gms.internal.vision.w0 r13 = r9.f4025d
            if (r1 == r5) goto L59
            r5 = r1 & 7
            if (r5 != r4) goto L54
            int r2 = r1 >>> 3
            com.google.android.gms.internal.vision.i1$d r12 = r12.b(r13, r6, r2)
            if (r12 != 0) goto L51
            r2 = r19
            r4 = r21
            r5 = r10
            r6 = r22
            int r1 = com.google.android.gms.internal.vision.k0.d(r1, r2, r3, r4, r5, r6)
            r2 = r12
            goto L25
        L51:
            com.google.android.gms.internal.vision.a3 r1 = com.google.android.gms.internal.vision.a3.f3885c
            throw r11
        L54:
            int r1 = com.google.android.gms.internal.vision.k0.b(r1, r7, r3, r8, r9)
            goto L25
        L59:
            r1 = 0
            r5 = r11
        L5b:
            if (r3 >= r8) goto La2
            int r3 = com.google.android.gms.internal.vision.k0.i(r7, r3, r9)
            int r14 = r9.f4022a
            int r15 = r14 >>> 3
            r11 = r14 & 7
            if (r15 == r4) goto L83
            r4 = 3
            if (r15 == r4) goto L6d
            goto L7d
        L6d:
            if (r2 != 0) goto L7f
            r4 = 2
            if (r11 != r4) goto L7d
            int r3 = com.google.android.gms.internal.vision.k0.q(r7, r3, r9)
            java.lang.Object r4 = r9.f4024c
            r5 = r4
            com.google.android.gms.internal.vision.p0 r5 = (com.google.android.gms.internal.vision.p0) r5
            r4 = 0
            goto L9f
        L7d:
            r4 = 0
            goto L97
        L7f:
            com.google.android.gms.internal.vision.a3 r1 = com.google.android.gms.internal.vision.a3.f3885c
            r4 = 0
            throw r4
        L83:
            r4 = 0
            if (r11 != 0) goto L97
            int r1 = com.google.android.gms.internal.vision.k0.i(r7, r3, r9)
            int r2 = r9.f4022a
            com.google.android.gms.internal.vision.i1$d r3 = r12.b(r13, r6, r2)
            r16 = r3
            r3 = r1
            r1 = r2
            r2 = r16
            goto L9f
        L97:
            r11 = 12
            if (r14 == r11) goto La3
            int r3 = com.google.android.gms.internal.vision.k0.b(r14, r7, r3, r8, r9)
        L9f:
            r11 = r4
            r4 = 2
            goto L5b
        La2:
            r4 = r11
        La3:
            if (r5 == 0) goto Lac
            int r1 = r1 << 3
            r6 = 2
            r1 = r1 | r6
            r10.a(r1, r5)
        Lac:
            r1 = r3
            r11 = r4
            goto L25
        Lb0:
            if (r1 != r8) goto Lb3
            return
        Lb3:
            com.google.android.gms.internal.vision.q1 r1 = com.google.android.gms.internal.vision.q1.c()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.t2.g(java.lang.Object, byte[], int, int, com.google.android.gms.internal.vision.l0):void");
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final T h() {
        return (T) this.f4090a.j().i();
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final void q(T t10, T t11) {
        Class<?> cls = e3.f3946a;
        n3<?, ?> n3Var = this.f4091b;
        n3Var.d(t10, n3Var.g(n3Var.e(t10), n3Var.e(t11)));
        if (this.f4092c) {
            e3.j(this.f4093d, t10, t11);
        }
    }
}
