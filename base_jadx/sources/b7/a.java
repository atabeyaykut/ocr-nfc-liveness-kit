package b7;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public final class a extends i {

    /* renamed from: a, reason: collision with root package name */
    public final String f1144a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1145b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1146c;

    public a(String str, long j10, long j11) {
        this.f1144a = str;
        this.f1145b = j10;
        this.f1146c = j11;
    }

    @Override // b7.i
    @NonNull
    public final String a() {
        return this.f1144a;
    }

    @Override // b7.i
    @NonNull
    public final long b() {
        return this.f1146c;
    }

    @Override // b7.i
    @NonNull
    public final long c() {
        return this.f1145b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f1144a.equals(iVar.a()) && this.f1145b == iVar.c() && this.f1146c == iVar.b();
    }

    public final int hashCode() {
        int r02 = (this.f1144a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f1145b;
        long j11 = this.f1146c;
        return ((r02 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public final String toString() {
        return "InstallationTokenResult{token=" + this.f1144a + ", tokenExpirationTimestamp=" + this.f1145b + ", tokenCreationTimestamp=" + this.f1146c + "}";
    }
}
