package j6;

import androidx.annotation.NonNull;
import j6.a0;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class f extends a0.d.a {

    /* renamed from: a, reason: collision with root package name */
    public final String f8149a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8150b;

    public f(String str, byte[] bArr) {
        this.f8149a = str;
        this.f8150b = bArr;
    }

    @Override // j6.a0.d.a
    @NonNull
    public final byte[] a() {
        return this.f8150b;
    }

    @Override // j6.a0.d.a
    @NonNull
    public final String b() {
        return this.f8149a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.d.a)) {
            return false;
        }
        a0.d.a aVar = (a0.d.a) obj;
        if (this.f8149a.equals(aVar.b())) {
            if (Arrays.equals(this.f8150b, aVar instanceof f ? ((f) aVar).f8150b : aVar.a())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f8149a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f8150b);
    }

    public final String toString() {
        return "File{filename=" + this.f8149a + ", contents=" + Arrays.toString(this.f8150b) + "}";
    }
}
