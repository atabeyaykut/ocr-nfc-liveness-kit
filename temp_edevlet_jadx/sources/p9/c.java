package p9;

import java.io.Serializable;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import p9.f;
import x9.p;

/* loaded from: classes2.dex */
public final class c implements f, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final f f12864a;

    /* renamed from: b, reason: collision with root package name */
    public final f.b f12865b;

    public static final class a extends j implements p<String, f.b, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f12866a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final String mo7invoke(String str, f.b bVar) {
            String acc = str;
            f.b element = bVar;
            h.f(acc, "acc");
            h.f(element, "element");
            if (acc.length() == 0) {
                return element.toString();
            }
            return acc + ", " + element;
        }
    }

    public c(f.b element, f left) {
        h.f(left, "left");
        h.f(element, "element");
        this.f12864a = left;
        this.f12865b = element;
    }

    public final boolean equals(Object obj) {
        boolean zA;
        if (this != obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            cVar.getClass();
            int r02 = 2;
            c cVar2 = cVar;
            int r32 = 2;
            while (true) {
                f fVar = cVar2.f12864a;
                cVar2 = fVar instanceof c ? (c) fVar : null;
                if (cVar2 == null) {
                    break;
                }
                r32++;
            }
            c cVar3 = this;
            while (true) {
                f fVar2 = cVar3.f12864a;
                cVar3 = fVar2 instanceof c ? (c) fVar2 : null;
                if (cVar3 == null) {
                    break;
                }
                r02++;
            }
            if (r32 != r02) {
                return false;
            }
            c cVar4 = this;
            while (true) {
                f.b bVar = cVar4.f12865b;
                if (!h.a(cVar.get(bVar.getKey()), bVar)) {
                    zA = false;
                    break;
                }
                f fVar3 = cVar4.f12864a;
                if (!(fVar3 instanceof c)) {
                    h.d(fVar3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    f.b bVar2 = (f.b) fVar3;
                    zA = h.a(cVar.get(bVar2.getKey()), bVar2);
                    break;
                }
                cVar4 = (c) fVar3;
            }
            if (!zA) {
                return false;
            }
        }
        return true;
    }

    @Override // p9.f
    public final <R> R fold(R r6, p<? super R, ? super f.b, ? extends R> operation) {
        h.f(operation, "operation");
        return operation.mo7invoke((Object) this.f12864a.fold(r6, operation), this.f12865b);
    }

    @Override // p9.f
    public final <E extends f.b> E get(f.c<E> key) {
        h.f(key, "key");
        c cVar = this;
        while (true) {
            E e10 = (E) cVar.f12865b.get(key);
            if (e10 != null) {
                return e10;
            }
            f fVar = cVar.f12864a;
            if (!(fVar instanceof c)) {
                return (E) fVar.get(key);
            }
            cVar = (c) fVar;
        }
    }

    public final int hashCode() {
        return this.f12865b.hashCode() + this.f12864a.hashCode();
    }

    @Override // p9.f
    public final f minusKey(f.c<?> key) {
        h.f(key, "key");
        f.b bVar = this.f12865b;
        f.b bVar2 = bVar.get(key);
        f fVar = this.f12864a;
        if (bVar2 != null) {
            return fVar;
        }
        f fVarMinusKey = fVar.minusKey(key);
        return fVarMinusKey == fVar ? this : fVarMinusKey == g.f12870a ? bVar : new c(bVar, fVarMinusKey);
    }

    @Override // p9.f
    public final f plus(f fVar) {
        return f.a.a(this, fVar);
    }

    public final String toString() {
        return android.support.v4.media.a.h(new StringBuilder("["), (String) fold("", a.f12866a), ']');
    }
}
