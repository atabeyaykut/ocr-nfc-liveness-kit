package fg;

import c5.w;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileViewModel$fetchProfileInfo$2", f = "ProfileViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<ProfileServiceModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f5655a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f5656b;

    public static final class a extends kotlin.jvm.internal.j implements p<e, r0.b<? extends Result<ProfileServiceModel>>, e> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f5657a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final e mo7invoke(e eVar, r0.b<? extends Result<ProfileServiceModel>> bVar) {
            e execute = eVar;
            r0.b<? extends Result<ProfileServiceModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ProfileServiceModel> resultA = result.a();
                ProfileServiceModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? e.copy$default(execute, result, null, null, orThrow, null, false, 22, null) : e.copy$default(execute, result, null, null, null, null, false, 30, null);
            } catch (Throwable th2) {
                return e.copy$default(execute, new r0.i(null, th2), null, null, null, null, false, 30, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar, p9.d<? super h> dVar) {
        super(2, dVar);
        this.f5656b = fVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f5656b, dVar);
        hVar.f5655a = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ProfileServiceModel>> fVar, p9.d<? super m> dVar) {
        return ((h) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f5656b, (kotlinx.coroutines.flow.f) this.f5655a, a.f5657a);
        return m.f9594a;
    }
}
