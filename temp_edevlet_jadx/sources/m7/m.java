package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public final class m<T> extends u<T> {

    /* renamed from: a, reason: collision with root package name */
    public final j7.r<T> f10092a;

    /* renamed from: b, reason: collision with root package name */
    public final j7.k<T> f10093b;

    /* renamed from: c, reason: collision with root package name */
    public final j7.h f10094c;

    /* renamed from: d, reason: collision with root package name */
    public final p7.a<T> f10095d;

    /* renamed from: e, reason: collision with root package name */
    public final v f10096e;
    public u<T> f;

    public final class a {
    }

    public m(j7.r rVar, j7.k kVar, j7.h hVar, p7.a aVar) {
        new a();
        this.f10092a = rVar;
        this.f10093b = kVar;
        this.f10094c = hVar;
        this.f10095d = aVar;
        this.f10096e = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004e  */
    @Override // j7.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T a(q7.a r4) throws java.io.IOException {
        /*
            r3 = this;
            p7.a<T> r0 = r3.f10095d
            j7.k<T> r1 = r3.f10093b
            if (r1 != 0) goto L1a
            j7.u<T> r1 = r3.f
            if (r1 == 0) goto Lb
            goto L15
        Lb:
            j7.v r1 = r3.f10096e
            j7.h r2 = r3.f10094c
            j7.u r1 = r2.c(r1, r0)
            r3.f = r1
        L15:
            java.lang.Object r4 = r1.a(r4)
            return r4
        L1a:
            r4.B()     // Catch: java.lang.NumberFormatException -> L2a java.io.IOException -> L31 q7.c -> L38 java.io.EOFException -> L3f
            m7.o$u r2 = m7.o.A     // Catch: java.io.EOFException -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L31 q7.c -> L38
            r2.getClass()     // Catch: java.io.EOFException -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L31 q7.c -> L38
            j7.l r4 = m7.o.u.c(r4)     // Catch: java.io.EOFException -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L31 q7.c -> L38
            goto L45
        L27:
            r4 = move-exception
            r2 = 0
            goto L41
        L2a:
            r4 = move-exception
            j7.s r0 = new j7.s
            r0.<init>(r4)
            throw r0
        L31:
            r4 = move-exception
            j7.m r0 = new j7.m
            r0.<init>(r4)
            throw r0
        L38:
            r4 = move-exception
            j7.s r0 = new j7.s
            r0.<init>(r4)
            throw r0
        L3f:
            r4 = move-exception
            r2 = 1
        L41:
            if (r2 == 0) goto L55
            j7.n r4 = j7.n.f8300a
        L45:
            r4.getClass()
            boolean r4 = r4 instanceof j7.n
            if (r4 == 0) goto L4e
            r4 = 0
            return r4
        L4e:
            java.lang.reflect.Type r4 = r0.f12845b
            java.lang.Object r4 = r1.a()
            return r4
        L55:
            j7.s r0 = new j7.s
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: m7.m.a(q7.a):java.lang.Object");
    }

    @Override // j7.u
    public final void b(q7.b bVar, T t10) throws IOException {
        p7.a<T> aVar = this.f10095d;
        j7.r<T> rVar = this.f10092a;
        if (rVar == null) {
            u<T> uVarC = this.f;
            if (uVarC == null) {
                uVarC = this.f10094c.c(this.f10096e, aVar);
                this.f = uVarC;
            }
            uVarC.b(bVar, t10);
            return;
        }
        if (t10 == null) {
            bVar.j();
            return;
        }
        Type type = aVar.f12845b;
        o.A.b(bVar, rVar.a());
    }
}
