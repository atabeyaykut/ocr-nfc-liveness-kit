package e;

import android.graphics.Bitmap;
import c5.w;
import l9.m;
import nc.a0;
import x9.p;

@r9.e(c = "coil.RealImageLoader$executeMain$result$1", f = "RealImageLoader.kt", l = {183}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class j extends r9.i implements p<a0, p9.d<? super p.h>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f5010a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p.g f5011b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f5012c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ q.e f5013d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ b f5014e;
    public final /* synthetic */ Bitmap f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(p.g gVar, h hVar, q.e eVar, b bVar, Bitmap bitmap, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f5011b = gVar;
        this.f5012c = hVar;
        this.f5013d = eVar;
        this.f5014e = bVar;
        this.f = bitmap;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        return new j(this.f5011b, this.f5012c, this.f5013d, this.f5014e, this.f, dVar);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super p.h> dVar) {
        return ((j) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f5010a;
        if (r12 == 0) {
            w.F(obj);
            p.g gVar = this.f5011b;
            k.i iVar = new k.i(gVar, this.f5012c.f4999h, 0, gVar, this.f5013d, this.f5014e, this.f != null);
            this.f5010a = 1;
            obj = iVar.c(gVar, this);
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
