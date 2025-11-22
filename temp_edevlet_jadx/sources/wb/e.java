package wb;

import cc.e0;
import cc.m0;

/* loaded from: classes2.dex */
public final class e implements g, i {

    /* renamed from: a, reason: collision with root package name */
    public final ma.e f18861a;

    /* renamed from: b, reason: collision with root package name */
    public final ma.e f18862b;

    public e(pa.b classDescriptor) {
        kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
        this.f18861a = classDescriptor;
        this.f18862b = classDescriptor;
    }

    public final boolean equals(Object obj) {
        e eVar = obj instanceof e ? (e) obj : null;
        return kotlin.jvm.internal.h.a(this.f18861a, eVar != null ? eVar.f18861a : null);
    }

    @Override // wb.g
    public final e0 getType() {
        m0 m0VarQ = this.f18861a.q();
        kotlin.jvm.internal.h.e(m0VarQ, "classDescriptor.defaultType");
        return m0VarQ;
    }

    public final int hashCode() {
        return this.f18861a.hashCode();
    }

    @Override // wb.i
    public final ma.e p() {
        return this.f18861a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Class{");
        m0 m0VarQ = this.f18861a.q();
        kotlin.jvm.internal.h.e(m0VarQ, "classDescriptor.defaultType");
        sb2.append(m0VarQ);
        sb2.append('}');
        return sb2.toString();
    }
}
