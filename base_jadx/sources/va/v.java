package va;

import java.util.Map;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f18377a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f18378b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<lb.c, b0> f18379c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18380d;

    public v() {
        throw null;
    }

    public v(b0 b0Var, b0 b0Var2) {
        m9.w wVar = m9.w.f10174a;
        this.f18377a = b0Var;
        this.f18378b = b0Var2;
        this.f18379c = wVar;
        c5.y.w(new u(this));
        b0 b0Var3 = b0.IGNORE;
        this.f18380d = b0Var == b0Var3 && b0Var2 == b0Var3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f18377a == vVar.f18377a && this.f18378b == vVar.f18378b && kotlin.jvm.internal.h.a(this.f18379c, vVar.f18379c);
    }

    public final int hashCode() {
        int r02 = this.f18377a.hashCode() * 31;
        b0 b0Var = this.f18378b;
        return this.f18379c.hashCode() + ((r02 + (b0Var == null ? 0 : b0Var.hashCode())) * 31);
    }

    public final String toString() {
        return "Jsr305Settings(globalLevel=" + this.f18377a + ", migrationLevel=" + this.f18378b + ", userDefinedLevelForSpecificAnnotation=" + this.f18379c + ')';
    }
}
