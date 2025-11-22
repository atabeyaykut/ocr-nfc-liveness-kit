package u2;

import androidx.annotation.NonNull;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final r2.b f17847a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f17848b;

    public m(@NonNull r2.b bVar, @NonNull byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f17847a = bVar;
        this.f17848b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f17847a.equals(mVar.f17847a)) {
            return Arrays.equals(this.f17848b, mVar.f17848b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f17847a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f17848b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f17847a + ", bytes=[...]}";
    }
}
