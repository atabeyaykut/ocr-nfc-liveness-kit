package z2;

import a3.o;
import a3.p;
import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class g implements x2.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19788a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f19789b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f19790c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f19791d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f19792e;

    public /* synthetic */ g(k9.a aVar, k9.a aVar2, x2.b bVar, k9.a aVar3, int r52) {
        this.f19788a = r52;
        this.f19789b = aVar;
        this.f19790c = aVar2;
        this.f19791d = bVar;
        this.f19792e = aVar3;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f19788a;
        k9.a aVar = this.f19792e;
        k9.a aVar2 = this.f19791d;
        k9.a aVar3 = this.f19790c;
        k9.a aVar4 = this.f19789b;
        switch (r02) {
            case 0:
                Context context = (Context) aVar4.get();
                b3.d dVar = (b3.d) aVar3.get();
                a3.e eVar = (a3.e) aVar2.get();
                return new a3.d(context, dVar, eVar);
            default:
                return new o((Executor) aVar4.get(), (b3.d) aVar3.get(), (p) aVar2.get(), (c3.b) aVar.get());
        }
    }
}
