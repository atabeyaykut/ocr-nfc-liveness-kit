package ud;

import rc.d;

/* loaded from: classes2.dex */
public abstract class l<ResponseT, ReturnT> extends e0<ReturnT> {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f18035a;

    /* renamed from: b, reason: collision with root package name */
    public final d.a f18036b;

    /* renamed from: c, reason: collision with root package name */
    public final f<rc.d0, ResponseT> f18037c;

    public static final class a<ResponseT, ReturnT> extends l<ResponseT, ReturnT> {

        /* renamed from: d, reason: collision with root package name */
        public final ud.c<ResponseT, ReturnT> f18038d;

        public a(b0 b0Var, d.a aVar, f<rc.d0, ResponseT> fVar, ud.c<ResponseT, ReturnT> cVar) {
            super(b0Var, aVar, fVar);
            this.f18038d = cVar;
        }

        @Override // ud.l
        public final Object c(u uVar, Object[] objArr) {
            return this.f18038d.b(uVar);
        }
    }

    public static final class b<ResponseT> extends l<ResponseT, Object> {

        /* renamed from: d, reason: collision with root package name */
        public final ud.c<ResponseT, ud.b<ResponseT>> f18039d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f18040e;

        public b(b0 b0Var, d.a aVar, f fVar, ud.c cVar) {
            super(b0Var, aVar, fVar);
            this.f18039d = cVar;
            this.f18040e = false;
        }

        @Override // ud.l
        public final Object c(u uVar, Object[] objArr) {
            ud.b bVar = (ud.b) this.f18039d.b(uVar);
            p9.d dVar = (p9.d) objArr[objArr.length - 1];
            try {
                if (this.f18040e) {
                    nc.j jVar = new nc.j(1, c5.w.x(dVar));
                    jVar.D(new o(bVar));
                    bVar.n0(new q(jVar));
                    return jVar.m();
                }
                nc.j jVar2 = new nc.j(1, c5.w.x(dVar));
                jVar2.D(new n(bVar));
                bVar.n0(new p(jVar2));
                return jVar2.m();
            } catch (Exception e10) {
                return t.a(e10, dVar);
            }
        }
    }

    public static final class c<ResponseT> extends l<ResponseT, Object> {

        /* renamed from: d, reason: collision with root package name */
        public final ud.c<ResponseT, ud.b<ResponseT>> f18041d;

        public c(b0 b0Var, d.a aVar, f<rc.d0, ResponseT> fVar, ud.c<ResponseT, ud.b<ResponseT>> cVar) {
            super(b0Var, aVar, fVar);
            this.f18041d = cVar;
        }

        @Override // ud.l
        public final Object c(u uVar, Object[] objArr) {
            ud.b bVar = (ud.b) this.f18041d.b(uVar);
            p9.d dVar = (p9.d) objArr[objArr.length - 1];
            try {
                nc.j jVar = new nc.j(1, c5.w.x(dVar));
                jVar.D(new r(bVar));
                bVar.n0(new s(jVar));
                return jVar.m();
            } catch (Exception e10) {
                return t.a(e10, dVar);
            }
        }
    }

    public l(b0 b0Var, d.a aVar, f<rc.d0, ResponseT> fVar) {
        this.f18035a = b0Var;
        this.f18036b = aVar;
        this.f18037c = fVar;
    }

    @Override // ud.e0
    public final ReturnT a(Object[] objArr) {
        return (ReturnT) c(new u(this.f18035a, objArr, this.f18036b, this.f18037c), objArr);
    }

    public abstract Object c(u uVar, Object[] objArr);
}
