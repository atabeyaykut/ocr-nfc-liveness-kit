package u2;

import java.util.HashMap;
import u2.h;
import u2.j;

/* loaded from: classes.dex */
public final class u<T> implements r2.f<T> {

    /* renamed from: a, reason: collision with root package name */
    public final s f17856a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17857b;

    /* renamed from: c, reason: collision with root package name */
    public final r2.b f17858c;

    /* renamed from: d, reason: collision with root package name */
    public final r2.e<T, byte[]> f17859d;

    /* renamed from: e, reason: collision with root package name */
    public final v f17860e;

    public u(s sVar, String str, r2.b bVar, r2.e<T, byte[]> eVar, v vVar) {
        this.f17856a = sVar;
        this.f17857b = str;
        this.f17858c = bVar;
        this.f17859d = eVar;
        this.f17860e = vVar;
    }

    @Override // r2.f
    public final void a(r2.a aVar) {
        b(aVar, new androidx.appcompat.graphics.drawable.a());
    }

    @Override // r2.f
    public final void b(r2.a aVar, r2.h hVar) {
        s sVar = this.f17856a;
        if (sVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        String str = this.f17857b;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        r2.e<T, byte[]> eVar = this.f17859d;
        if (eVar == null) {
            throw new NullPointerException("Null transformer");
        }
        r2.b bVar = this.f17858c;
        if (bVar == null) {
            throw new NullPointerException("Null encoding");
        }
        i iVar = new i(sVar, str, aVar, eVar, bVar);
        w wVar = (w) this.f17860e;
        wVar.getClass();
        r2.c<?> cVar = iVar.f17833c;
        r2.d dVarC = cVar.c();
        s sVar2 = iVar.f17831a;
        sVar2.getClass();
        j.a aVarA = s.a();
        aVarA.b(sVar2.b());
        aVarA.c(dVarC);
        aVarA.f17840b = sVar2.c();
        j jVarA = aVarA.a();
        h.a aVar2 = new h.a();
        aVar2.f = new HashMap();
        aVar2.f17829d = Long.valueOf(wVar.f17862a.a());
        aVar2.f17830e = Long.valueOf(wVar.f17863b.a());
        aVar2.d(iVar.f17832b);
        aVar2.c(new m(iVar.f17835e, iVar.f17834d.apply(cVar.b())));
        aVar2.f17827b = cVar.a();
        wVar.f17864c.a(hVar, aVar2.b(), jVarA);
    }
}
