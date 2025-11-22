package r2;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class a<T> extends c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f13898a = null;

    /* renamed from: b, reason: collision with root package name */
    public final T f13899b;

    /* renamed from: c, reason: collision with root package name */
    public final d f13900c;

    /* JADX WARN: Multi-variable type inference failed */
    public a(Object obj, d dVar) {
        if (obj == 0) {
            throw new NullPointerException("Null payload");
        }
        this.f13899b = obj;
        this.f13900c = dVar;
    }

    @Override // r2.c
    @Nullable
    public final Integer a() {
        return this.f13898a;
    }

    @Override // r2.c
    public final T b() {
        return this.f13899b;
    }

    @Override // r2.c
    public final d c() {
        return this.f13900c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        Integer num = this.f13898a;
        if (num != null ? num.equals(cVar.a()) : cVar.a() == null) {
            if (this.f13899b.equals(cVar.b()) && this.f13900c.equals(cVar.c())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Integer num = this.f13898a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f13899b.hashCode()) * 1000003) ^ this.f13900c.hashCode();
    }

    public final String toString() {
        return "Event{code=" + this.f13898a + ", payload=" + this.f13899b + ", priority=" + this.f13900c + "}";
    }
}
