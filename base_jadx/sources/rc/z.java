package rc;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class z extends a0 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ byte[] f14609b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f14610c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f14611d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f14612e;

    public z(t tVar, byte[] bArr, int r32, int r42) {
        this.f14609b = bArr;
        this.f14610c = tVar;
        this.f14611d = r32;
        this.f14612e = r42;
    }

    @Override // rc.a0
    public final long a() {
        return this.f14611d;
    }

    @Override // rc.a0
    public final t b() {
        return this.f14610c;
    }

    @Override // rc.a0
    public final void c(ed.f fVar) throws IOException {
        fVar.write(this.f14609b, this.f14612e, this.f14611d);
    }
}
