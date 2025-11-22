package wb;

import cc.e0;

/* loaded from: classes2.dex */
public final class c extends a implements f {

    /* renamed from: c, reason: collision with root package name */
    public final ma.a f18858c;

    /* renamed from: d, reason: collision with root package name */
    public final lb.f f18859d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ma.a aVar, e0 receiverType, lb.f fVar, g gVar) {
        super(receiverType, gVar);
        kotlin.jvm.internal.h.f(receiverType, "receiverType");
        this.f18858c = aVar;
        this.f18859d = fVar;
    }

    @Override // wb.f
    public final lb.f a() {
        return this.f18859d;
    }

    public final String toString() {
        return "Cxt { " + this.f18858c + " }";
    }
}
