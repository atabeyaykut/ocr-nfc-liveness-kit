package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class c0 extends qc.b<a0<?>> {

    /* renamed from: a, reason: collision with root package name */
    public long f9038a = -1;

    /* renamed from: b, reason: collision with root package name */
    public nc.j f9039b;

    @Override // qc.b
    public final boolean a(qc.a aVar) {
        a0 a0Var = (a0) aVar;
        if (this.f9038a >= 0) {
            return false;
        }
        long j10 = a0Var.f9017h;
        if (j10 < a0Var.f9018j) {
            a0Var.f9018j = j10;
        }
        this.f9038a = j10;
        return true;
    }

    @Override // qc.b
    public final p9.d[] b(qc.a aVar) {
        long j10 = this.f9038a;
        this.f9038a = -1L;
        this.f9039b = null;
        return ((a0) aVar).s(j10);
    }
}
