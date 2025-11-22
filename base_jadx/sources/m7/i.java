package m7;

import j7.u;
import java.io.IOException;
import java.lang.reflect.Field;
import m7.j;

/* loaded from: classes2.dex */
public final class i extends j.b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Field f10073d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f10074e;
    public final /* synthetic */ u f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ j7.h f10075g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p7.a f10076h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f10077i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(String str, boolean z10, boolean z11, Field field, boolean z12, u uVar, j7.h hVar, p7.a aVar, boolean z13) {
        super(str, z10, z11);
        this.f10073d = field;
        this.f10074e = z12;
        this.f = uVar;
        this.f10075g = hVar;
        this.f10076h = aVar;
        this.f10077i = z13;
    }

    @Override // m7.j.b
    public final void a(q7.a aVar, Object obj) throws IllegalAccessException, IOException, IllegalArgumentException {
        Object objA = this.f.a(aVar);
        if (objA == null && this.f10077i) {
            return;
        }
        this.f10073d.set(obj, objA);
    }

    @Override // m7.j.b
    public final void b(q7.b bVar, Object obj) throws IllegalAccessException, IOException, IllegalArgumentException {
        Object obj2 = this.f10073d.get(obj);
        boolean z10 = this.f10074e;
        u nVar = this.f;
        if (!z10) {
            nVar = new n(this.f10075g, nVar, this.f10076h.f12845b);
        }
        nVar.b(bVar, obj2);
    }

    @Override // m7.j.b
    public final boolean c(Object obj) throws IllegalAccessException, IOException {
        return this.f10086b && this.f10073d.get(obj) != obj;
    }
}
