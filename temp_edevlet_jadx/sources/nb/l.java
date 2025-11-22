package nb;

/* loaded from: classes2.dex */
public final class l extends z9.a<Object> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f10763b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Object obj, k kVar) {
        super(obj);
        this.f10763b = kVar;
    }

    @Override // z9.a
    public final void a(da.m property) {
        kotlin.jvm.internal.h.f(property, "property");
        if (this.f10763b.f10737a) {
            throw new IllegalStateException("Cannot modify readonly DescriptorRendererOptions");
        }
    }
}
