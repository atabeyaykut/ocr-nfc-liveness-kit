package nc;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10839a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<Throwable, l9.m> f10840b;

    public s(x9.l lVar, Object obj) {
        this.f10839a = obj;
        this.f10840b = lVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return kotlin.jvm.internal.h.a(this.f10839a, sVar.f10839a) && kotlin.jvm.internal.h.a(this.f10840b, sVar.f10840b);
    }

    public final int hashCode() {
        Object obj = this.f10839a;
        return this.f10840b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "CompletedWithCancellation(result=" + this.f10839a + ", onCancellation=" + this.f10840b + ')';
    }
}
