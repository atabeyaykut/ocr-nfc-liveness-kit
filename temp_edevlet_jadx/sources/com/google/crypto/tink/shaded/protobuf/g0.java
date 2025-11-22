package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class g0 {

    /* renamed from: a, reason: collision with root package name */
    public static final a f4263a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final b f4264b = new b();

    public static final class a extends g0 {

        /* renamed from: c, reason: collision with root package name */
        public static final Class<?> f4265c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        /* JADX WARN: Multi-variable type inference failed */
        public static List d(int r32, long j10, Object obj) {
            z.c cVarF;
            e0 e0Var;
            List arrayList = (List) n1.n(j10, obj);
            if (arrayList.isEmpty()) {
                if (arrayList instanceof f0) {
                    arrayList = new e0(r32);
                } else if ((arrayList instanceof z0) && (arrayList instanceof z.c)) {
                    cVarF = ((z.c) arrayList).F(r32);
                    arrayList = cVarF;
                } else {
                    arrayList = new ArrayList(r32);
                }
                n1.x(j10, obj, arrayList);
            } else {
                if (f4265c.isAssignableFrom(arrayList.getClass())) {
                    ArrayList arrayList2 = new ArrayList(arrayList.size() + r32);
                    arrayList2.addAll(arrayList);
                    e0Var = arrayList2;
                } else if (arrayList instanceof m1) {
                    e0 e0Var2 = new e0(arrayList.size() + r32);
                    e0Var2.addAll((m1) arrayList);
                    e0Var = e0Var2;
                } else if ((arrayList instanceof z0) && (arrayList instanceof z.c)) {
                    z.c cVar = (z.c) arrayList;
                    if (!cVar.o0()) {
                        cVarF = cVar.F(arrayList.size() + r32);
                        arrayList = cVarF;
                        n1.x(j10, obj, arrayList);
                    }
                }
                arrayList = e0Var;
                n1.x(j10, obj, arrayList);
            }
            return arrayList;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.g0
        public final void a(long j10, Object obj) {
            Object objUnmodifiableList;
            List list = (List) n1.n(j10, obj);
            if (list instanceof f0) {
                objUnmodifiableList = ((f0) list).p();
            } else {
                if (f4265c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof z0) && (list instanceof z.c)) {
                    z.c cVar = (z.c) list;
                    if (cVar.o0()) {
                        cVar.B();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            n1.x(j10, obj, objUnmodifiableList);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.g0
        public final void b(long j10, Object obj, Object obj2) {
            List list = (List) n1.n(j10, obj2);
            List listD = d(list.size(), j10, obj);
            int size = listD.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listD.addAll(list);
            }
            if (size > 0) {
                list = listD;
            }
            n1.x(j10, obj, list);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.g0
        public final List c(long j10, Object obj) {
            return d(10, j10, obj);
        }
    }

    public static final class b extends g0 {
        @Override // com.google.crypto.tink.shaded.protobuf.g0
        public final void a(long j10, Object obj) {
            ((z.c) n1.n(j10, obj)).B();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.g0
        public final void b(long j10, Object obj, Object obj2) {
            z.c cVarF = (z.c) n1.n(j10, obj);
            z.c cVar = (z.c) n1.n(j10, obj2);
            int size = cVarF.size();
            int size2 = cVar.size();
            if (size > 0 && size2 > 0) {
                if (!cVarF.o0()) {
                    cVarF = cVarF.F(size2 + size);
                }
                cVarF.addAll(cVar);
            }
            if (size > 0) {
                cVar = cVarF;
            }
            n1.x(j10, obj, cVar);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.g0
        public final List c(long j10, Object obj) {
            z.c cVar = (z.c) n1.n(j10, obj);
            if (cVar.o0()) {
                return cVar;
            }
            int size = cVar.size();
            z.c cVarF = cVar.F(size == 0 ? 10 : size * 2);
            n1.x(j10, obj, cVarF);
            return cVarF;
        }
    }

    public abstract void a(long j10, Object obj);

    public abstract void b(long j10, Object obj, Object obj2);

    public abstract List c(long j10, Object obj);
}
