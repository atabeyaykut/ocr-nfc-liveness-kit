package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class e7 extends g7 {

    /* renamed from: c, reason: collision with root package name */
    public static final Class<?> f3458c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    @Override // com.google.android.gms.internal.measurement.g7
    public final void a(long j10, Object obj) {
        Object objUnmodifiableList;
        List list = (List) y8.j(j10, obj);
        if (list instanceof d7) {
            objUnmodifiableList = ((d7) list).e();
        } else {
            if (f3458c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof z7) && (list instanceof w6)) {
                w6 w6Var = (w6) list;
                if (w6Var.c()) {
                    w6Var.b();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        y8.r(j10, obj, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.g7
    public final void b(long j10, Object obj, Object obj2) {
        w6 w6VarV;
        c7 c7Var;
        List list = (List) y8.j(j10, obj2);
        int size = list.size();
        List arrayList = (List) y8.j(j10, obj);
        if (arrayList.isEmpty()) {
            if (arrayList instanceof d7) {
                arrayList = new c7(size);
            } else if ((arrayList instanceof z7) && (arrayList instanceof w6)) {
                w6VarV = ((w6) arrayList).v(size);
                arrayList = w6VarV;
            } else {
                arrayList = new ArrayList(size);
            }
            y8.r(j10, obj, arrayList);
        } else {
            if (f3458c.isAssignableFrom(arrayList.getClass())) {
                ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
                arrayList2.addAll(arrayList);
                c7Var = arrayList2;
            } else if (arrayList instanceof t8) {
                c7 c7Var2 = new c7(arrayList.size() + size);
                c7Var2.addAll(c7Var2.size(), (t8) arrayList);
                c7Var = c7Var2;
            } else if ((arrayList instanceof z7) && (arrayList instanceof w6)) {
                w6 w6Var = (w6) arrayList;
                if (!w6Var.c()) {
                    w6VarV = w6Var.v(arrayList.size() + size);
                    arrayList = w6VarV;
                    y8.r(j10, obj, arrayList);
                }
            }
            arrayList = c7Var;
            y8.r(j10, obj, arrayList);
        }
        int size2 = arrayList.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            arrayList.addAll(list);
        }
        if (size2 > 0) {
            list = arrayList;
        }
        y8.r(j10, obj, list);
    }
}
