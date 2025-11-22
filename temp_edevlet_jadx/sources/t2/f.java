package t2;

import androidx.annotation.Nullable;
import java.util.Arrays;
import t2.l;

/* loaded from: classes.dex */
public final class f extends l {

    /* renamed from: a, reason: collision with root package name */
    public final long f15611a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f15612b;

    /* renamed from: c, reason: collision with root package name */
    public final long f15613c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f15614d;

    /* renamed from: e, reason: collision with root package name */
    public final String f15615e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final o f15616g;

    public static final class a extends l.a {

        /* renamed from: a, reason: collision with root package name */
        public Long f15617a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f15618b;

        /* renamed from: c, reason: collision with root package name */
        public Long f15619c;

        /* renamed from: d, reason: collision with root package name */
        public byte[] f15620d;

        /* renamed from: e, reason: collision with root package name */
        public String f15621e;
        public Long f;

        /* renamed from: g, reason: collision with root package name */
        public o f15622g;
    }

    public f(long j10, Integer num, long j11, byte[] bArr, String str, long j12, o oVar) {
        this.f15611a = j10;
        this.f15612b = num;
        this.f15613c = j11;
        this.f15614d = bArr;
        this.f15615e = str;
        this.f = j12;
        this.f15616g = oVar;
    }

    @Override // t2.l
    @Nullable
    public final Integer a() {
        return this.f15612b;
    }

    @Override // t2.l
    public final long b() {
        return this.f15611a;
    }

    @Override // t2.l
    public final long c() {
        return this.f15613c;
    }

    @Override // t2.l
    @Nullable
    public final o d() {
        return this.f15616g;
    }

    @Override // t2.l
    @Nullable
    public final byte[] e() {
        return this.f15614d;
    }

    public final boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f15611a == lVar.b() && ((num = this.f15612b) != null ? num.equals(lVar.a()) : lVar.a() == null) && this.f15613c == lVar.c()) {
            if (Arrays.equals(this.f15614d, lVar instanceof f ? ((f) lVar).f15614d : lVar.e()) && ((str = this.f15615e) != null ? str.equals(lVar.f()) : lVar.f() == null) && this.f == lVar.g()) {
                o oVar = this.f15616g;
                o oVarD = lVar.d();
                if (oVar == null) {
                    if (oVarD == null) {
                        return true;
                    }
                } else if (oVar.equals(oVarD)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // t2.l
    @Nullable
    public final String f() {
        return this.f15615e;
    }

    @Override // t2.l
    public final long g() {
        return this.f;
    }

    public final int hashCode() {
        long j10 = this.f15611a;
        int r12 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f15612b;
        int r13 = (r12 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j11 = this.f15613c;
        int r14 = (((r13 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f15614d)) * 1000003;
        String str = this.f15615e;
        int r15 = (r14 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j12 = this.f;
        int r16 = (r15 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        o oVar = this.f15616g;
        return r16 ^ (oVar != null ? oVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f15611a + ", eventCode=" + this.f15612b + ", eventUptimeMs=" + this.f15613c + ", sourceExtension=" + Arrays.toString(this.f15614d) + ", sourceExtensionJsonProto3=" + this.f15615e + ", timezoneOffsetSeconds=" + this.f + ", networkConnectionInfo=" + this.f15616g + "}";
    }
}
