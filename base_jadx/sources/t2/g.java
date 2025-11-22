package t2;

import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes.dex */
public final class g extends m {

    /* renamed from: a, reason: collision with root package name */
    public final long f15623a;

    /* renamed from: b, reason: collision with root package name */
    public final long f15624b;

    /* renamed from: c, reason: collision with root package name */
    public final k f15625c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f15626d;

    /* renamed from: e, reason: collision with root package name */
    public final String f15627e;
    public final List<l> f;

    /* renamed from: g, reason: collision with root package name */
    public final p f15628g;

    public g() {
        throw null;
    }

    public g(long j10, long j11, k kVar, Integer num, String str, List list, p pVar) {
        this.f15623a = j10;
        this.f15624b = j11;
        this.f15625c = kVar;
        this.f15626d = num;
        this.f15627e = str;
        this.f = list;
        this.f15628g = pVar;
    }

    @Override // t2.m
    @Nullable
    public final k a() {
        return this.f15625c;
    }

    @Override // t2.m
    @Nullable
    public final List<l> b() {
        return this.f;
    }

    @Override // t2.m
    @Nullable
    public final Integer c() {
        return this.f15626d;
    }

    @Override // t2.m
    @Nullable
    public final String d() {
        return this.f15627e;
    }

    @Override // t2.m
    @Nullable
    public final p e() {
        return this.f15628g;
    }

    public final boolean equals(Object obj) {
        k kVar;
        Integer num;
        String str;
        List<l> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f15623a == mVar.f() && this.f15624b == mVar.g() && ((kVar = this.f15625c) != null ? kVar.equals(mVar.a()) : mVar.a() == null) && ((num = this.f15626d) != null ? num.equals(mVar.c()) : mVar.c() == null) && ((str = this.f15627e) != null ? str.equals(mVar.d()) : mVar.d() == null) && ((list = this.f) != null ? list.equals(mVar.b()) : mVar.b() == null)) {
            p pVar = this.f15628g;
            p pVarE = mVar.e();
            if (pVar == null) {
                if (pVarE == null) {
                    return true;
                }
            } else if (pVar.equals(pVarE)) {
                return true;
            }
        }
        return false;
    }

    @Override // t2.m
    public final long f() {
        return this.f15623a;
    }

    @Override // t2.m
    public final long g() {
        return this.f15624b;
    }

    public final int hashCode() {
        long j10 = this.f15623a;
        long j11 = this.f15624b;
        int r12 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        k kVar = this.f15625c;
        int r13 = (r12 ^ (kVar == null ? 0 : kVar.hashCode())) * 1000003;
        Integer num = this.f15626d;
        int r14 = (r13 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f15627e;
        int r15 = (r14 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<l> list = this.f;
        int r16 = (r15 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        p pVar = this.f15628g;
        return r16 ^ (pVar != null ? pVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f15623a + ", requestUptimeMs=" + this.f15624b + ", clientInfo=" + this.f15625c + ", logSource=" + this.f15626d + ", logSourceName=" + this.f15627e + ", logEvents=" + this.f + ", qosTier=" + this.f15628g + "}";
    }
}
