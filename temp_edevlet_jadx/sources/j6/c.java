package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class c extends a0.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f8131a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8132b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8133c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8134d;

    /* renamed from: e, reason: collision with root package name */
    public final long f8135e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final long f8136g;

    /* renamed from: h, reason: collision with root package name */
    public final String f8137h;

    public static final class a extends a0.a.AbstractC0135a {

        /* renamed from: a, reason: collision with root package name */
        public Integer f8138a;

        /* renamed from: b, reason: collision with root package name */
        public String f8139b;

        /* renamed from: c, reason: collision with root package name */
        public Integer f8140c;

        /* renamed from: d, reason: collision with root package name */
        public Integer f8141d;

        /* renamed from: e, reason: collision with root package name */
        public Long f8142e;
        public Long f;

        /* renamed from: g, reason: collision with root package name */
        public Long f8143g;

        /* renamed from: h, reason: collision with root package name */
        public String f8144h;

        public final c a() {
            String strF = this.f8138a == null ? " pid" : "";
            if (this.f8139b == null) {
                strF = strF.concat(" processName");
            }
            if (this.f8140c == null) {
                strF = android.support.v4.media.a.f(strF, " reasonCode");
            }
            if (this.f8141d == null) {
                strF = android.support.v4.media.a.f(strF, " importance");
            }
            if (this.f8142e == null) {
                strF = android.support.v4.media.a.f(strF, " pss");
            }
            if (this.f == null) {
                strF = android.support.v4.media.a.f(strF, " rss");
            }
            if (this.f8143g == null) {
                strF = android.support.v4.media.a.f(strF, " timestamp");
            }
            if (strF.isEmpty()) {
                return new c(this.f8138a.intValue(), this.f8139b, this.f8140c.intValue(), this.f8141d.intValue(), this.f8142e.longValue(), this.f.longValue(), this.f8143g.longValue(), this.f8144h);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public c(int r12, String str, int r32, int r42, long j10, long j11, long j12, String str2) {
        this.f8131a = r12;
        this.f8132b = str;
        this.f8133c = r32;
        this.f8134d = r42;
        this.f8135e = j10;
        this.f = j11;
        this.f8136g = j12;
        this.f8137h = str2;
    }

    @Override // j6.a0.a
    @NonNull
    public final int a() {
        return this.f8134d;
    }

    @Override // j6.a0.a
    @NonNull
    public final int b() {
        return this.f8131a;
    }

    @Override // j6.a0.a
    @NonNull
    public final String c() {
        return this.f8132b;
    }

    @Override // j6.a0.a
    @NonNull
    public final long d() {
        return this.f8135e;
    }

    @Override // j6.a0.a
    @NonNull
    public final int e() {
        return this.f8133c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.a)) {
            return false;
        }
        a0.a aVar = (a0.a) obj;
        if (this.f8131a == aVar.b() && this.f8132b.equals(aVar.c()) && this.f8133c == aVar.e() && this.f8134d == aVar.a() && this.f8135e == aVar.d() && this.f == aVar.f() && this.f8136g == aVar.g()) {
            String str = this.f8137h;
            String strH = aVar.h();
            if (str == null) {
                if (strH == null) {
                    return true;
                }
            } else if (str.equals(strH)) {
                return true;
            }
        }
        return false;
    }

    @Override // j6.a0.a
    @NonNull
    public final long f() {
        return this.f;
    }

    @Override // j6.a0.a
    @NonNull
    public final long g() {
        return this.f8136g;
    }

    @Override // j6.a0.a
    @Nullable
    public final String h() {
        return this.f8137h;
    }

    public final int hashCode() {
        int r02 = (((((((this.f8131a ^ 1000003) * 1000003) ^ this.f8132b.hashCode()) * 1000003) ^ this.f8133c) * 1000003) ^ this.f8134d) * 1000003;
        long j10 = this.f8135e;
        int r03 = (r02 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f;
        int r04 = (r03 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f8136g;
        int r05 = (r04 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        String str = this.f8137h;
        return r05 ^ (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ApplicationExitInfo{pid=");
        sb2.append(this.f8131a);
        sb2.append(", processName=");
        sb2.append(this.f8132b);
        sb2.append(", reasonCode=");
        sb2.append(this.f8133c);
        sb2.append(", importance=");
        sb2.append(this.f8134d);
        sb2.append(", pss=");
        sb2.append(this.f8135e);
        sb2.append(", rss=");
        sb2.append(this.f);
        sb2.append(", timestamp=");
        sb2.append(this.f8136g);
        sb2.append(", traceFile=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f8137h, "}");
    }
}
