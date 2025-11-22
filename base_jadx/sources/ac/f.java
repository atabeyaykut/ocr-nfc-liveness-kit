package ac;

import java.util.List;
import m9.t;

/* loaded from: classes2.dex */
public final class f extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f205a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gb.f f206b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, gb.f fVar) {
        super(0);
        this.f205a = dVar;
        this.f206b = fVar;
    }

    @Override // x9.a
    public final List<? extends na.c> invoke() {
        d dVar = this.f205a;
        return t.v1(dVar.f170m.f19464a.f19446e.a(dVar.f180z, this.f206b));
    }
}
