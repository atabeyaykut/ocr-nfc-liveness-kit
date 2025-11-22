package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class b implements v {

    /* renamed from: a, reason: collision with root package name */
    public final l7.c f10050a;

    public static final class a<E> extends u<Collection<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final n f10051a;

        /* renamed from: b, reason: collision with root package name */
        public final l7.j<? extends Collection<E>> f10052b;

        public a(j7.h hVar, Type type, u<E> uVar, l7.j<? extends Collection<E>> jVar) {
            this.f10051a = new n(hVar, uVar, type);
            this.f10052b = jVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // j7.u
        public final Object a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            Collection<E> collectionH = this.f10052b.h();
            aVar.a();
            while (aVar.i()) {
                collectionH.add(this.f10051a.a(aVar));
            }
            aVar.e();
            return collectionH;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                bVar.j();
                return;
            }
            bVar.b();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f10051a.b(bVar, it.next());
            }
            bVar.e();
        }
    }

    public b(l7.c cVar) {
        this.f10050a = cVar;
    }

    @Override // j7.v
    public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
        Type type = aVar.f12845b;
        Class<? super T> cls = aVar.f12844a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type typeF = l7.a.f(type, cls, Collection.class);
        if (typeF instanceof WildcardType) {
            typeF = ((WildcardType) typeF).getUpperBounds()[0];
        }
        Class cls2 = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments()[0] : Object.class;
        return new a(hVar, cls2, hVar.b(new p7.a<>(cls2)), this.f10050a.a(aVar));
    }
}
