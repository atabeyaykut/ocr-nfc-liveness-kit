package ib;

import java.util.List;
import mb.h;

/* loaded from: classes2.dex */
public final class e {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends h.c<M>, T> T a(h.c<M> cVar, h.e<M, T> extension) {
        kotlin.jvm.internal.h.f(cVar, "<this>");
        kotlin.jvm.internal.h.f(extension, "extension");
        if (cVar.l(extension)) {
            return (T) cVar.k(extension);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends h.c<M>, T> T b(h.c<M> cVar, h.e<M, List<T>> eVar, int r6) {
        kotlin.jvm.internal.h.f(cVar, "<this>");
        cVar.p(eVar);
        mb.g<h.d> gVar = cVar.f10284a;
        gVar.getClass();
        h.d dVar = eVar.f10295d;
        if (!dVar.f10290c) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objF = gVar.f(dVar);
        if (r6 >= (objF == null ? 0 : ((List) objF).size())) {
            return null;
        }
        cVar.p(eVar);
        if (!dVar.f10290c) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objF2 = gVar.f(dVar);
        if (objF2 != null) {
            return (T) eVar.a(((List) objF2).get(r6));
        }
        throw new IndexOutOfBoundsException();
    }
}
