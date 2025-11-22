package com.google.android.gms.internal.clearcut;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class l1 extends k1 {

    /* renamed from: c, reason: collision with root package name */
    public static final Class<?> f3173c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    @Override // com.google.android.gms.internal.clearcut.k1
    public final void a(long j10, Object obj) {
        Object objUnmodifiableList;
        List list = (List) g3.w(j10, obj);
        if (list instanceof j1) {
            objUnmodifiableList = ((j1) list).i0();
        } else {
            if (f3173c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
        }
        g3.j(j10, obj, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    @Override // com.google.android.gms.internal.clearcut.k1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(long r5, java.lang.Object r7, java.lang.Object r8) {
        /*
            r4 = this;
            java.lang.Object r8 = com.google.android.gms.internal.clearcut.g3.w(r5, r8)
            java.util.List r8 = (java.util.List) r8
            int r0 = r8.size()
            java.lang.Object r1 = com.google.android.gms.internal.clearcut.g3.w(r5, r7)
            java.util.List r1 = (java.util.List) r1
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L26
            boolean r1 = r1 instanceof com.google.android.gms.internal.clearcut.j1
            if (r1 == 0) goto L20
            com.google.android.gms.internal.clearcut.i1 r1 = new com.google.android.gms.internal.clearcut.i1
            r1.<init>(r0)
            goto L55
        L20:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r0)
            goto L55
        L26:
            java.lang.Class r2 = r1.getClass()
            java.lang.Class<?> r3 = com.google.android.gms.internal.clearcut.l1.f3173c
            boolean r2 = r3.isAssignableFrom(r2)
            if (r2 == 0) goto L41
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r1.size()
            int r3 = r3 + r0
            r2.<init>(r3)
            r2.addAll(r1)
        L3f:
            r1 = r2
            goto L55
        L41:
            boolean r2 = r1 instanceof com.google.android.gms.internal.clearcut.d3
            if (r2 == 0) goto L58
            com.google.android.gms.internal.clearcut.i1 r2 = new com.google.android.gms.internal.clearcut.i1
            int r3 = r1.size()
            int r3 = r3 + r0
            r2.<init>(r3)
            com.google.android.gms.internal.clearcut.d3 r1 = (com.google.android.gms.internal.clearcut.d3) r1
            r2.addAll(r1)
            goto L3f
        L55:
            com.google.android.gms.internal.clearcut.g3.j(r5, r7, r1)
        L58:
            int r0 = r1.size()
            int r2 = r8.size()
            if (r0 <= 0) goto L67
            if (r2 <= 0) goto L67
            r1.addAll(r8)
        L67:
            if (r0 <= 0) goto L6a
            r8 = r1
        L6a:
            com.google.android.gms.internal.clearcut.g3.j(r5, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.l1.b(long, java.lang.Object, java.lang.Object):void");
    }
}
