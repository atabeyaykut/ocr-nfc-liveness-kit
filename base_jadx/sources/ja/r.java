package ja;

/* loaded from: classes2.dex */
public enum r {
    /* JADX INFO: Fake field, exist only in values array */
    UBYTE(lb.b.f("kotlin/UByte", false)),
    /* JADX INFO: Fake field, exist only in values array */
    USHORT(lb.b.f("kotlin/UShort", false)),
    /* JADX INFO: Fake field, exist only in values array */
    UINT(lb.b.f("kotlin/UInt", false)),
    /* JADX INFO: Fake field, exist only in values array */
    ULONG(lb.b.f("kotlin/ULong", false));


    /* renamed from: a, reason: collision with root package name */
    public final lb.b f8403a;

    /* renamed from: b, reason: collision with root package name */
    public final lb.f f8404b;

    /* renamed from: c, reason: collision with root package name */
    public final lb.b f8405c;

    r(lb.b bVar) {
        this.f8403a = bVar;
        lb.f fVarJ = bVar.j();
        kotlin.jvm.internal.h.e(fVarJ, "classId.shortClassName");
        this.f8404b = fVarJ;
        this.f8405c = new lb.b(bVar.h(), lb.f.t(fVarJ.o() + "Array"));
    }
}
