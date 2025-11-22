package z2;

import a3.p;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import r2.h;
import u2.j;
import u2.n;
import u2.s;
import u2.w;
import v2.m;

/* loaded from: classes.dex */
public final class c implements e {
    public static final Logger f = Logger.getLogger(w.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final p f19777a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f19778b;

    /* renamed from: c, reason: collision with root package name */
    public final v2.e f19779c;

    /* renamed from: d, reason: collision with root package name */
    public final b3.d f19780d;

    /* renamed from: e, reason: collision with root package name */
    public final c3.b f19781e;

    public c(Executor executor, v2.e eVar, p pVar, b3.d dVar, c3.b bVar) {
        this.f19778b = executor;
        this.f19779c = eVar;
        this.f19777a = pVar;
        this.f19780d = dVar;
        this.f19781e = bVar;
    }

    @Override // z2.e
    public final void a(final h hVar, final u2.h hVar2, final j jVar) {
        this.f19778b.execute(new Runnable() { // from class: z2.a
            @Override // java.lang.Runnable
            public final void run() {
                s sVar = jVar;
                h hVar3 = hVar;
                n nVar = hVar2;
                c cVar = this.f19770a;
                cVar.getClass();
                Logger logger = c.f;
                try {
                    m mVar = cVar.f19779c.get(sVar.b());
                    if (mVar == null) {
                        String str = String.format("Transport backend '%s' is not registered", sVar.b());
                        logger.warning(str);
                        hVar3.a(new IllegalArgumentException(str));
                    } else {
                        cVar.f19781e.a(new b(cVar, sVar, mVar.b(nVar)));
                        hVar3.a(null);
                    }
                } catch (Exception e10) {
                    logger.warning("Error scheduling event " + e10.getMessage());
                    hVar3.a(e10);
                }
            }
        });
    }
}
