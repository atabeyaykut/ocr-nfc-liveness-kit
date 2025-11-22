package u2;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Arrays;
import u2.s;

/* loaded from: classes.dex */
public final class j extends s {

    /* renamed from: a, reason: collision with root package name */
    public final String f17836a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f17837b;

    /* renamed from: c, reason: collision with root package name */
    public final r2.d f17838c;

    public static final class a extends s.a {

        /* renamed from: a, reason: collision with root package name */
        public String f17839a;

        /* renamed from: b, reason: collision with root package name */
        public byte[] f17840b;

        /* renamed from: c, reason: collision with root package name */
        public r2.d f17841c;

        public final j a() {
            String strConcat = this.f17839a == null ? " backendName" : "";
            if (this.f17841c == null) {
                strConcat = strConcat.concat(" priority");
            }
            if (strConcat.isEmpty()) {
                return new j(this.f17839a, this.f17840b, this.f17841c);
            }
            throw new IllegalStateException("Missing required properties:".concat(strConcat));
        }

        public final a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.f17839a = str;
            return this;
        }

        public final a c(r2.d dVar) {
            if (dVar == null) {
                throw new NullPointerException("Null priority");
            }
            this.f17841c = dVar;
            return this;
        }
    }

    public j(String str, byte[] bArr, r2.d dVar) {
        this.f17836a = str;
        this.f17837b = bArr;
        this.f17838c = dVar;
    }

    @Override // u2.s
    public final String b() {
        return this.f17836a;
    }

    @Override // u2.s
    @Nullable
    public final byte[] c() {
        return this.f17837b;
    }

    @Override // u2.s
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final r2.d d() {
        return this.f17838c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f17836a.equals(sVar.b())) {
            if (Arrays.equals(this.f17837b, sVar instanceof j ? ((j) sVar).f17837b : sVar.c()) && this.f17838c.equals(sVar.d())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f17836a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f17837b)) * 1000003) ^ this.f17838c.hashCode();
    }
}
