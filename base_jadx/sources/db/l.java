package db;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final k f4761a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4762b;

    public /* synthetic */ l() {
        throw null;
    }

    public l(k kVar, boolean z10) {
        this.f4761a = kVar;
        this.f4762b = z10;
    }

    public static l a(l lVar, k qualifier, boolean z10, int r42) {
        if ((r42 & 1) != 0) {
            qualifier = lVar.f4761a;
        }
        if ((r42 & 2) != 0) {
            z10 = lVar.f4762b;
        }
        lVar.getClass();
        kotlin.jvm.internal.h.f(qualifier, "qualifier");
        return new l(qualifier, z10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f4761a == lVar.f4761a && this.f4762b == lVar.f4762b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = this.f4761a.hashCode() * 31;
        boolean z10 = this.f4762b;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("NullabilityQualifierWithMigrationStatus(qualifier=");
        sb2.append(this.f4761a);
        sb2.append(", isForWarningOnly=");
        return androidx.browser.browseractions.b.f(sb2, this.f4762b, ')');
    }
}
