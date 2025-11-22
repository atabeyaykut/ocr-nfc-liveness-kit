package u2;

import android.content.Context;
import b3.i;
import d3.c;
import java.util.concurrent.Executor;
import u2.o;

/* loaded from: classes.dex */
public final class k extends x {

    /* renamed from: a, reason: collision with root package name */
    public k9.a<Executor> f17842a = x2.a.a(o.a.f17849a);

    /* renamed from: b, reason: collision with root package name */
    public x2.c f17843b;

    /* renamed from: c, reason: collision with root package name */
    public k9.a f17844c;

    /* renamed from: d, reason: collision with root package name */
    public k9.a<b3.r> f17845d;

    /* renamed from: e, reason: collision with root package name */
    public k9.a<w> f17846e;

    public k(Context context) {
        if (context == null) {
            throw new NullPointerException("instance cannot be null");
        }
        x2.c cVar = new x2.c(context);
        this.f17843b = cVar;
        d3.c cVar2 = c.a.f4654a;
        this.f17844c = x2.a.a(new v2.l(cVar, new v2.j(cVar)));
        x2.c cVar3 = this.f17843b;
        k9.a<b3.r> aVarA = x2.a.a(new y(i.a.f1103a, new b3.y(cVar3), new b3.g(cVar3), 1));
        this.f17845d = aVarA;
        z2.f fVar = new z2.f();
        x2.c cVar4 = this.f17843b;
        z2.g gVar = new z2.g(cVar4, aVarA, fVar, cVar2, 0);
        k9.a<Executor> aVar = this.f17842a;
        k9.a aVar2 = this.f17844c;
        this.f17846e = x2.a.a(new y(new z2.d(aVar, aVar2, gVar, aVarA, aVarA), new a3.n(cVar4, aVar2, aVarA, gVar, aVar, aVarA, aVarA), new z2.g(aVar, aVarA, gVar, aVarA, 1), 0));
    }
}
