package l7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public final class f implements v, Cloneable {
    public static final f f = new f();

    /* renamed from: a, reason: collision with root package name */
    public final double f9410a = -1.0d;

    /* renamed from: b, reason: collision with root package name */
    public final int f9411b = ISO781611.FORMAT_TYPE_TAG;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9412c = true;

    /* renamed from: d, reason: collision with root package name */
    public final List<j7.a> f9413d = Collections.emptyList();

    /* renamed from: e, reason: collision with root package name */
    public final List<j7.a> f9414e = Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> extends u<T> {

        /* renamed from: a, reason: collision with root package name */
        public u<T> f9415a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f9416b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f9417c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ j7.h f9418d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ p7.a f9419e;

        public a(boolean z10, boolean z11, j7.h hVar, p7.a aVar) {
            this.f9416b = z10;
            this.f9417c = z11;
            this.f9418d = hVar;
            this.f9419e = aVar;
        }

        @Override // j7.u
        public final T a(q7.a aVar) throws IOException {
            if (this.f9416b) {
                aVar.P();
                return null;
            }
            u<T> uVarC = this.f9415a;
            if (uVarC == null) {
                uVarC = this.f9418d.c(f.this, this.f9419e);
                this.f9415a = uVarC;
            }
            return uVarC.a(aVar);
        }

        @Override // j7.u
        public final void b(q7.b bVar, T t10) throws IOException {
            if (this.f9417c) {
                bVar.j();
                return;
            }
            u<T> uVarC = this.f9415a;
            if (uVarC == null) {
                uVarC = this.f9418d.c(f.this, this.f9419e);
                this.f9415a = uVarC;
            }
            uVarC.b(bVar, t10);
        }
    }

    @Override // j7.v
    public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
        Class<? super T> cls = aVar.f12844a;
        boolean zC = c(cls);
        boolean z10 = zC || d(cls, true);
        boolean z11 = zC || d(cls, false);
        if (z10 || z11) {
            return new a(z11, z10, hVar, aVar);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(java.lang.Class<?> r7) {
        /*
            r6 = this;
            double r0 = r6.f9410a
            r2 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r4 = 1
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 == 0) goto L20
            java.lang.Class<k7.c> r0 = k7.c.class
            java.lang.annotation.Annotation r0 = r7.getAnnotation(r0)
            k7.c r0 = (k7.c) r0
            java.lang.Class<k7.d> r1 = k7.d.class
            java.lang.annotation.Annotation r1 = r7.getAnnotation(r1)
            k7.d r1 = (k7.d) r1
            boolean r0 = r6.e(r0, r1)
            if (r0 != 0) goto L20
            return r4
        L20:
            boolean r0 = r6.f9412c
            r1 = 0
            if (r0 != 0) goto L3e
            boolean r0 = r7.isMemberClass()
            if (r0 == 0) goto L3a
            int r0 = r7.getModifiers()
            r0 = r0 & 8
            if (r0 == 0) goto L35
            r0 = 1
            goto L36
        L35:
            r0 = 0
        L36:
            if (r0 != 0) goto L3a
            r0 = 1
            goto L3b
        L3a:
            r0 = 0
        L3b:
            if (r0 == 0) goto L3e
            return r4
        L3e:
            java.lang.Class<java.lang.Enum> r0 = java.lang.Enum.class
            boolean r0 = r0.isAssignableFrom(r7)
            if (r0 != 0) goto L54
            boolean r0 = r7.isAnonymousClass()
            if (r0 != 0) goto L52
            boolean r7 = r7.isLocalClass()
            if (r7 == 0) goto L54
        L52:
            r7 = 1
            goto L55
        L54:
            r7 = 0
        L55:
            if (r7 == 0) goto L58
            return r4
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.f.c(java.lang.Class):boolean");
    }

    public final Object clone() throws CloneNotSupportedException {
        try {
            return (f) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public final boolean d(Class<?> cls, boolean z10) {
        Iterator<j7.a> it = (z10 ? this.f9413d : this.f9414e).iterator();
        while (it.hasNext()) {
            if (it.next().a()) {
                return true;
            }
        }
        return false;
    }

    public final boolean e(k7.c cVar, k7.d dVar) {
        double d10 = this.f9410a;
        if (cVar == null || cVar.value() <= d10) {
            return dVar == null || (dVar.value() > d10 ? 1 : (dVar.value() == d10 ? 0 : -1)) > 0;
        }
        return false;
    }
}
