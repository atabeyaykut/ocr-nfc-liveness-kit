package com.google.android.gms.internal.vision;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class b2 extends z1 {

    /* renamed from: c, reason: collision with root package name */
    public static final Class<?> f3906c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.z1
    public final void a(long j10, Object obj, Object obj2) {
        r1 r1VarF;
        x1 x1Var;
        List list = (List) t3.u(j10, obj2);
        int size = list.size();
        List arrayList = (List) t3.u(j10, obj);
        if (arrayList.isEmpty()) {
            if (arrayList instanceof a2) {
                arrayList = new x1(size);
            } else if ((arrayList instanceof y2) && (arrayList instanceof r1)) {
                r1VarF = ((r1) arrayList).f(size);
                arrayList = r1VarF;
            } else {
                arrayList = new ArrayList(size);
            }
            t3.j(j10, obj, arrayList);
        } else {
            if (f3906c.isAssignableFrom(arrayList.getClass())) {
                ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
                arrayList2.addAll(arrayList);
                x1Var = arrayList2;
            } else if (arrayList instanceof s3) {
                x1 x1Var2 = new x1(arrayList.size() + size);
                x1Var2.addAll((s3) arrayList);
                x1Var = x1Var2;
            } else if ((arrayList instanceof y2) && (arrayList instanceof r1)) {
                r1 r1Var = (r1) arrayList;
                if (!r1Var.a()) {
                    r1VarF = r1Var.f(arrayList.size() + size);
                    arrayList = r1VarF;
                    t3.j(j10, obj, arrayList);
                }
            }
            arrayList = x1Var;
            t3.j(j10, obj, arrayList);
        }
        int size2 = arrayList.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            arrayList.addAll(list);
        }
        if (size2 > 0) {
            list = arrayList;
        }
        t3.j(j10, obj, list);
    }

    @Override // com.google.android.gms.internal.vision.z1
    public final void b(long j10, Object obj) {
        Object objUnmodifiableList;
        List list = (List) t3.u(j10, obj);
        if (list instanceof a2) {
            objUnmodifiableList = ((a2) list).e();
        } else {
            if (f3906c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof y2) && (list instanceof r1)) {
                r1 r1Var = (r1) list;
                if (r1Var.a()) {
                    r1Var.b();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        t3.j(j10, obj, objUnmodifiableList);
    }
}
