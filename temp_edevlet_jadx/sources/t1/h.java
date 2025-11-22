package t1;

import java.util.List;

/* loaded from: classes.dex */
public final class h extends kotlin.jvm.internal.j implements x9.l<List<? extends d2.b>, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f15531a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f15532b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f15533c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g gVar, l lVar, d dVar) {
        super(1);
        this.f15531a = gVar;
        this.f15532b = lVar;
        this.f15533c = dVar;
    }

    @Override // x9.l
    public final l9.m invoke(List<? extends d2.b> list) {
        int r22;
        List<? extends d2.b> selectedImages = list;
        kotlin.jvm.internal.h.f(selectedImages, "selectedImages");
        int r02 = g.f15520j;
        g gVar = this.f15531a;
        gVar.E();
        this.f15532b.j();
        d config = this.f15533c;
        kotlin.jvm.internal.h.f(config, "config");
        if (((config instanceof v1.a) || (r22 = config.f15513r) == 2 || r22 == 4) && (!selectedImages.isEmpty())) {
            gVar.D();
        }
        return l9.m.f9594a;
    }
}
