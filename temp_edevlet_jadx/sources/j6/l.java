package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class l extends a0.e.d.a {

    /* renamed from: a, reason: collision with root package name */
    public final a0.e.d.a.b f8203a;

    /* renamed from: b, reason: collision with root package name */
    public final b0<a0.c> f8204b;

    /* renamed from: c, reason: collision with root package name */
    public final b0<a0.c> f8205c;

    /* renamed from: d, reason: collision with root package name */
    public final Boolean f8206d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8207e;

    public static final class a extends a0.e.d.a.AbstractC0137a {

        /* renamed from: a, reason: collision with root package name */
        public a0.e.d.a.b f8208a;

        /* renamed from: b, reason: collision with root package name */
        public b0<a0.c> f8209b;

        /* renamed from: c, reason: collision with root package name */
        public b0<a0.c> f8210c;

        /* renamed from: d, reason: collision with root package name */
        public Boolean f8211d;

        /* renamed from: e, reason: collision with root package name */
        public Integer f8212e;

        public a(a0.e.d.a aVar) {
            this.f8208a = aVar.c();
            this.f8209b = aVar.b();
            this.f8210c = aVar.d();
            this.f8211d = aVar.a();
            this.f8212e = Integer.valueOf(aVar.e());
        }

        public final l a() {
            String strConcat = this.f8208a == null ? " execution" : "";
            if (this.f8212e == null) {
                strConcat = strConcat.concat(" uiOrientation");
            }
            if (strConcat.isEmpty()) {
                return new l(this.f8208a, this.f8209b, this.f8210c, this.f8211d, this.f8212e.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(strConcat));
        }
    }

    public l() {
        throw null;
    }

    public l(a0.e.d.a.b bVar, b0 b0Var, b0 b0Var2, Boolean bool, int r52) {
        this.f8203a = bVar;
        this.f8204b = b0Var;
        this.f8205c = b0Var2;
        this.f8206d = bool;
        this.f8207e = r52;
    }

    @Override // j6.a0.e.d.a
    @Nullable
    public final Boolean a() {
        return this.f8206d;
    }

    @Override // j6.a0.e.d.a
    @Nullable
    public final b0<a0.c> b() {
        return this.f8204b;
    }

    @Override // j6.a0.e.d.a
    @NonNull
    public final a0.e.d.a.b c() {
        return this.f8203a;
    }

    @Override // j6.a0.e.d.a
    @Nullable
    public final b0<a0.c> d() {
        return this.f8205c;
    }

    @Override // j6.a0.e.d.a
    public final int e() {
        return this.f8207e;
    }

    public final boolean equals(Object obj) {
        b0<a0.c> b0Var;
        b0<a0.c> b0Var2;
        Boolean bool;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.a)) {
            return false;
        }
        a0.e.d.a aVar = (a0.e.d.a) obj;
        return this.f8203a.equals(aVar.c()) && ((b0Var = this.f8204b) != null ? b0Var.equals(aVar.b()) : aVar.b() == null) && ((b0Var2 = this.f8205c) != null ? b0Var2.equals(aVar.d()) : aVar.d() == null) && ((bool = this.f8206d) != null ? bool.equals(aVar.a()) : aVar.a() == null) && this.f8207e == aVar.e();
    }

    @Override // j6.a0.e.d.a
    public final a f() {
        return new a(this);
    }

    public final int hashCode() {
        int r02 = (this.f8203a.hashCode() ^ 1000003) * 1000003;
        b0<a0.c> b0Var = this.f8204b;
        int r03 = (r02 ^ (b0Var == null ? 0 : b0Var.hashCode())) * 1000003;
        b0<a0.c> b0Var2 = this.f8205c;
        int r04 = (r03 ^ (b0Var2 == null ? 0 : b0Var2.hashCode())) * 1000003;
        Boolean bool = this.f8206d;
        return ((r04 ^ (bool != null ? bool.hashCode() : 0)) * 1000003) ^ this.f8207e;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Application{execution=");
        sb2.append(this.f8203a);
        sb2.append(", customAttributes=");
        sb2.append(this.f8204b);
        sb2.append(", internalKeys=");
        sb2.append(this.f8205c);
        sb2.append(", background=");
        sb2.append(this.f8206d);
        sb2.append(", uiOrientation=");
        return androidx.browser.browseractions.a.b(sb2, this.f8207e, "}");
    }
}
