package p9;

import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import p9.e;
import x9.p;

/* loaded from: classes2.dex */
public interface f {

    public static final class a {

        /* renamed from: p9.f$a$a, reason: collision with other inner class name */
        public static final class C0216a extends j implements p<f, b, f> {

            /* renamed from: a, reason: collision with root package name */
            public static final C0216a f12869a = new C0216a();

            public C0216a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final f mo7invoke(f fVar, b bVar) {
                p9.c cVar;
                f acc = fVar;
                b element = bVar;
                h.f(acc, "acc");
                h.f(element, "element");
                f fVarMinusKey = acc.minusKey(element.getKey());
                g gVar = g.f12870a;
                if (fVarMinusKey == gVar) {
                    return element;
                }
                int r12 = e.f12867e0;
                e.a aVar = e.a.f12868a;
                e eVar = (e) fVarMinusKey.get(aVar);
                if (eVar == null) {
                    cVar = new p9.c(element, fVarMinusKey);
                } else {
                    f fVarMinusKey2 = fVarMinusKey.minusKey(aVar);
                    if (fVarMinusKey2 == gVar) {
                        return new p9.c(eVar, element);
                    }
                    cVar = new p9.c(eVar, new p9.c(element, fVarMinusKey2));
                }
                return cVar;
            }
        }

        public static f a(f fVar, f context) {
            h.f(context, "context");
            return context == g.f12870a ? fVar : (f) context.fold(fVar, C0216a.f12869a);
        }
    }

    public interface b extends f {

        public static final class a {
            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends b> E a(b bVar, c<E> key) {
                h.f(key, "key");
                if (h.a(bVar.getKey(), key)) {
                    return bVar;
                }
                return null;
            }

            public static f b(b bVar, c<?> key) {
                h.f(key, "key");
                return h.a(bVar.getKey(), key) ? g.f12870a : bVar;
            }
        }

        @Override // p9.f
        <E extends b> E get(c<E> cVar);

        c<?> getKey();
    }

    public interface c<E extends b> {
    }

    <R> R fold(R r6, p<? super R, ? super b, ? extends R> pVar);

    <E extends b> E get(c<E> cVar);

    f minusKey(c<?> cVar);

    f plus(f fVar);
}
