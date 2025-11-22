package eb;

import eb.a;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class c extends kotlin.jvm.internal.j implements x9.l<s, a.C0078a<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a<Object, Object> f5185a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(a<Object, Object> aVar) {
        super(1);
        this.f5185a = aVar;
    }

    @Override // x9.l
    public final a.C0078a<Object, Object> invoke(s sVar) {
        s kotlinClass = sVar;
        kotlin.jvm.internal.h.f(kotlinClass, "kotlinClass");
        a<Object, Object> aVar = this.f5185a;
        aVar.getClass();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        kotlinClass.d(new b(aVar, map, kotlinClass, map2));
        return new a.C0078a<>(map, map2, map3);
    }
}
