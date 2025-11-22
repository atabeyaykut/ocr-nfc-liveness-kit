package wb;

import cc.e0;

/* loaded from: classes2.dex */
public final class b extends a implements f {

    /* renamed from: c, reason: collision with root package name */
    public final ma.e f18856c;

    /* renamed from: d, reason: collision with root package name */
    public final lb.f f18857d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ma.e classDescriptor, e0 receiverType, lb.f fVar) {
        super(receiverType, null);
        kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
        kotlin.jvm.internal.h.f(receiverType, "receiverType");
        this.f18856c = classDescriptor;
        this.f18857d = fVar;
    }

    @Override // wb.f
    public final lb.f a() {
        return this.f18857d;
    }

    public final String toString() {
        return getType() + ": Ctx { " + this.f18856c + " }";
    }
}
