package va;

import java.util.Collection;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final db.l f18355a;

    /* renamed from: b, reason: collision with root package name */
    public final Collection<c> f18356b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18357c;

    public n(db.l lVar, Collection collection) {
        this(lVar, collection, lVar.f4761a == db.k.NOT_NULL);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(db.l lVar, Collection<? extends c> qualifierApplicabilityTypes, boolean z10) {
        kotlin.jvm.internal.h.f(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        this.f18355a = lVar;
        this.f18356b = qualifierApplicabilityTypes;
        this.f18357c = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return kotlin.jvm.internal.h.a(this.f18355a, nVar.f18355a) && kotlin.jvm.internal.h.a(this.f18356b, nVar.f18356b) && this.f18357c == nVar.f18357c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r12 = (this.f18356b.hashCode() + (this.f18355a.hashCode() * 31)) * 31;
        boolean z10 = this.f18357c;
        int r02 = z10;
        if (z10 != 0) {
            r02 = 1;
        }
        return r12 + r02;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("JavaDefaultQualifiers(nullabilityQualifier=");
        sb2.append(this.f18355a);
        sb2.append(", qualifierApplicabilityTypes=");
        sb2.append(this.f18356b);
        sb2.append(", definitelyNotNull=");
        return androidx.browser.browseractions.b.f(sb2, this.f18357c, ')');
    }
}
