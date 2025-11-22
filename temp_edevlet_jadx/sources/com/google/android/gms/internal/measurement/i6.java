package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.h6;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class i6<T extends h6<T>> {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f3549c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final f8 f3550a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3551b;

    static {
        new i6(0);
    }

    public i6() {
        this.f3550a = new f8(16);
    }

    public i6(int r32) {
        f8 f8Var = new f8(0);
        this.f3550a = f8Var;
        if (!this.f3551b) {
            f8Var.a();
            this.f3551b = true;
        }
        if (this.f3551b) {
            return;
        }
        f8Var.a();
        this.f3551b = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(T r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.measurement.b9 r0 = r4.b()
            java.nio.charset.Charset r1 = com.google.android.gms.internal.measurement.x6.f3835a
            r5.getClass()
            com.google.android.gms.internal.measurement.b9[] r1 = com.google.android.gms.internal.measurement.b9.f3400b
            com.google.android.gms.internal.measurement.c9 r1 = com.google.android.gms.internal.measurement.c9.INT
            com.google.android.gms.internal.measurement.c9 r0 = r0.f3401a
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L39;
                case 1: goto L36;
                case 2: goto L33;
                case 3: goto L30;
                case 4: goto L2d;
                case 5: goto L2a;
                case 6: goto L21;
                case 7: goto L1c;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L3e
        L17:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.s7
            if (r0 == 0) goto L3e
            goto L3d
        L1c:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 == 0) goto L3e
            goto L3d
        L21:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.v5
            if (r0 != 0) goto L3d
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L3e
            goto L3d
        L2a:
            boolean r0 = r5 instanceof java.lang.String
            goto L3b
        L2d:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L3b
        L30:
            boolean r0 = r5 instanceof java.lang.Double
            goto L3b
        L33:
            boolean r0 = r5 instanceof java.lang.Float
            goto L3b
        L36:
            boolean r0 = r5 instanceof java.lang.Long
            goto L3b
        L39:
            boolean r0 = r5 instanceof java.lang.Integer
        L3b:
            if (r0 == 0) goto L3e
        L3d:
            return
        L3e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            int r2 = r4.a()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r3 = 0
            r1[r3] = r2
            com.google.android.gms.internal.measurement.b9 r4 = r4.b()
            com.google.android.gms.internal.measurement.c9 r4 = r4.f3401a
            r2 = 1
            r1[r2] = r4
            java.lang.Class r4 = r5.getClass()
            java.lang.String r4 = r4.getName()
            r5 = 2
            r1[r5] = r4
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r1)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.i6.b(com.google.android.gms.internal.measurement.h6, java.lang.Object):void");
    }

    public final void a(T t10, Object obj) {
        if (!t10.c()) {
            b(t10, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int r12 = 0; r12 < size; r12++) {
                b(t10, arrayList.get(r12));
            }
            obj = arrayList;
        }
        this.f3550a.put(t10, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object clone() throws CloneNotSupportedException {
        f8 f8Var;
        i6 i6Var = new i6();
        int r12 = 0;
        while (true) {
            f8Var = this.f3550a;
            if (r12 >= f8Var.f3613b.size()) {
                break;
            }
            i8 i8Var = f8Var.f3613b.get(r12);
            i6Var.a((h6) i8Var.getKey(), i8Var.getValue());
            r12++;
        }
        for (Map.Entry entry : f8Var.f3614c.isEmpty() ? x5.a.f19153e : f8Var.f3614c.entrySet()) {
            i6Var.a((h6) entry.getKey(), entry.getValue());
        }
        return i6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i6) {
            return this.f3550a.equals(((i6) obj).f3550a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3550a.hashCode();
    }
}
