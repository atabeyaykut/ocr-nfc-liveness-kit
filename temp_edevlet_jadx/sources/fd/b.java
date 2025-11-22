package fd;

import ed.j0;
import ed.n;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class b extends n {

    /* renamed from: b, reason: collision with root package name */
    public final long f5589b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5590c;

    /* renamed from: d, reason: collision with root package name */
    public long f5591d;

    public b(j0 j0Var, long j10, boolean z10) {
        super(j0Var);
        this.f5589b = j10;
        this.f5590c = z10;
    }

    @Override // ed.n, ed.j0
    public final long w(ed.e sink, long j10) throws IOException {
        kotlin.jvm.internal.h.f(sink, "sink");
        long j11 = this.f5591d;
        long j12 = this.f5589b;
        if (j11 > j12) {
            j10 = 0;
        } else if (this.f5590c) {
            long j13 = j12 - j11;
            if (j13 == 0) {
                return -1L;
            }
            j10 = Math.min(j10, j13);
        }
        long jW = super.w(sink, j10);
        if (jW != -1) {
            this.f5591d += jW;
        }
        long j14 = this.f5591d;
        if ((j14 >= j12 || jW != -1) && j14 <= j12) {
            return jW;
        }
        if (jW > 0 && j14 > j12) {
            long j15 = sink.f5304b - (j14 - j12);
            ed.e eVar = new ed.e();
            eVar.J(sink);
            sink.M(eVar, j15);
            eVar.b();
        }
        throw new IOException("expected " + j12 + " bytes but got " + this.f5591d);
    }
}
