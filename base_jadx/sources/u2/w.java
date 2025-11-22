package u2;

import android.content.Context;
import java.util.Collections;
import java.util.Set;
import u2.j;

/* loaded from: classes.dex */
public final class w implements v {

    /* renamed from: e, reason: collision with root package name */
    public static volatile k f17861e;

    /* renamed from: a, reason: collision with root package name */
    public final d3.a f17862a;

    /* renamed from: b, reason: collision with root package name */
    public final d3.a f17863b;

    /* renamed from: c, reason: collision with root package name */
    public final z2.e f17864c;

    /* renamed from: d, reason: collision with root package name */
    public final a3.m f17865d;

    public w(d3.a aVar, d3.a aVar2, z2.e eVar, a3.m mVar, a3.o oVar) {
        this.f17862a = aVar;
        this.f17863b = aVar2;
        this.f17864c = eVar;
        this.f17865d = mVar;
        oVar.getClass();
        oVar.f100a.execute(new androidx.appcompat.widget.w(1, oVar));
    }

    public static w a() {
        k kVar = f17861e;
        if (kVar != null) {
            return kVar.f17846e.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void b(Context context) {
        if (f17861e == null) {
            synchronized (w.class) {
                if (f17861e == null) {
                    context.getClass();
                    f17861e = new k(context);
                }
            }
        }
    }

    public final t c(s2.a aVar) {
        Set setSingleton;
        if (aVar instanceof l) {
            aVar.getClass();
            setSingleton = Collections.unmodifiableSet(s2.a.f14854d);
        } else {
            setSingleton = Collections.singleton(new r2.b("proto"));
        }
        j.a aVarA = s.a();
        aVar.getClass();
        aVarA.b("cct");
        aVarA.f17840b = aVar.b();
        return new t(setSingleton, aVarA.a(), this);
    }
}
