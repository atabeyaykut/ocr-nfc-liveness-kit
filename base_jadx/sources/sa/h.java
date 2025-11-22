package sa;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class h extends f implements cb.e {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f15349b;

    public h(lb.f fVar, Object[] objArr) {
        super(fVar);
        this.f15349b = objArr;
    }

    @Override // cb.e
    public final ArrayList e() {
        Object[] objArr = this.f15349b;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            kotlin.jvm.internal.h.c(obj);
            Class<?> cls = obj.getClass();
            List<da.d<? extends Object>> list = d.f15334a;
            arrayList.add(Enum.class.isAssignableFrom(cls) ? new w(null, (Enum) obj) : obj instanceof Annotation ? new g(null, (Annotation) obj) : obj instanceof Object[] ? new h(null, (Object[]) obj) : obj instanceof Class ? new s(null, (Class) obj) : new y(obj, null));
        }
        return arrayList;
    }
}
