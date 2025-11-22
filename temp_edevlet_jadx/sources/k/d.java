package k;

import c5.w;
import j.l;
import k.a;
import kotlin.jvm.internal.v;
import l9.m;
import nc.a0;
import org.bouncycastle.asn1.eac.CertificateBody;
import p.k;
import x9.p;

@r9.e(c = "coil.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {CertificateBody.profileType}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class d extends r9.i implements p<a0, p9.d<? super a.C0160a>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f8571a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f8572b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v<j.g> f8573c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v<e.a> f8574d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p.g f8575e;
    public final /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ v<k> f8576g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ e.b f8577h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(a aVar, v<j.g> vVar, v<e.a> vVar2, p.g gVar, Object obj, v<k> vVar3, e.b bVar, p9.d<? super d> dVar) {
        super(2, dVar);
        this.f8572b = aVar;
        this.f8573c = vVar;
        this.f8574d = vVar2;
        this.f8575e = gVar;
        this.f = obj;
        this.f8576g = vVar3;
        this.f8577h = bVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        return new d(this.f8572b, this.f8573c, this.f8574d, this.f8575e, this.f, this.f8576g, this.f8577h, dVar);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super a.C0160a> dVar) {
        return ((d) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f8571a;
        if (r12 == 0) {
            w.F(obj);
            a aVar2 = this.f8572b;
            l lVar = (l) this.f8573c.f8975a;
            e.a aVar3 = this.f8574d.f8975a;
            p.g gVar = this.f8575e;
            Object obj2 = this.f;
            k kVar = this.f8576g.f8975a;
            e.b bVar = this.f8577h;
            this.f8571a = 1;
            obj = a.b(aVar2, lVar, aVar3, gVar, obj2, kVar, bVar, this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return obj;
    }
}
