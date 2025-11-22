package fd;

import ed.d0;
import java.io.IOException;
import kotlin.jvm.internal.v;
import l9.m;
import x9.p;

/* loaded from: classes2.dex */
public final class i extends kotlin.jvm.internal.j implements p<Integer, Long, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ed.g f5608a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v<Long> f5609b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v<Long> f5610c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v<Long> f5611d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(d0 d0Var, v vVar, v vVar2, v vVar3) {
        super(2);
        this.f5608a = d0Var;
        this.f5609b = vVar;
        this.f5610c = vVar2;
        this.f5611d = vVar3;
    }

    /* JADX WARN: Type inference failed for: r12v10, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r12v12, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r12v8, types: [T, java.lang.Long] */
    @Override // x9.p
    /* renamed from: invoke */
    public final m mo7invoke(Integer num, Long l5) throws IOException {
        int r12 = num.intValue();
        long jLongValue = l5.longValue();
        if (r12 == 21589) {
            if (jLongValue < 1) {
                throw new IOException("bad zip: extended timestamp extra too short");
            }
            int r42 = this.f5608a.readByte() & 255;
            boolean z10 = (r42 & 1) == 1;
            boolean z11 = (r42 & 2) == 2;
            boolean z12 = (r42 & 4) == 4;
            long j10 = z10 ? 5L : 1L;
            if (z11) {
                j10 += 4;
            }
            if (z12) {
                j10 += 4;
            }
            if (jLongValue < j10) {
                throw new IOException("bad zip: extended timestamp extra too short");
            }
            if (z10) {
                this.f5609b.f8975a = Long.valueOf(r13.b0() * 1000);
            }
            if (z11) {
                this.f5610c.f8975a = Long.valueOf(r13.b0() * 1000);
            }
            if (z12) {
                this.f5611d.f8975a = Long.valueOf(r13.b0() * 1000);
            }
        }
        return m.f9594a;
    }
}
