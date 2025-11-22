package m7;

import j7.t;
import j7.u;
import j7.v;

/* loaded from: classes2.dex */
public final class d implements v {

    /* renamed from: a, reason: collision with root package name */
    public final l7.c f10055a;

    public d(l7.c cVar) {
        this.f10055a = cVar;
    }

    public static u a(l7.c cVar, j7.h hVar, p7.a aVar, k7.a aVar2) {
        u mVar;
        Object objH = cVar.a(new p7.a(aVar2.value())).h();
        if (objH instanceof u) {
            mVar = (u) objH;
        } else if (objH instanceof v) {
            mVar = ((v) objH).b(hVar, aVar);
        } else {
            boolean z10 = objH instanceof j7.r;
            if (!z10 && !(objH instanceof j7.k)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objH.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            mVar = new m(z10 ? (j7.r) objH : null, objH instanceof j7.k ? (j7.k) objH : null, hVar, aVar);
        }
        return (mVar == null || !aVar2.nullSafe()) ? mVar : new t(mVar);
    }

    @Override // j7.v
    public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
        k7.a aVar2 = (k7.a) aVar.f12844a.getAnnotation(k7.a.class);
        if (aVar2 == null) {
            return null;
        }
        return a(this.f10055a, hVar, aVar, aVar2);
    }
}
