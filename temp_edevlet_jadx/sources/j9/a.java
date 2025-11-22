package j9;

import io.realm.s0;

/* loaded from: classes2.dex */
public final class a<E extends s0> {

    /* renamed from: a, reason: collision with root package name */
    public final E f8315a;

    /* JADX WARN: Multi-variable type inference failed */
    public a(s0 s0Var) {
        this.f8315a = s0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (!this.f8315a.equals(aVar.f8315a)) {
            return false;
        }
        aVar.getClass();
        return true;
    }

    public final int hashCode() {
        return (this.f8315a.hashCode() * 31) + 0;
    }

    public final String toString() {
        return "ObjectChange{object=" + this.f8315a + ", changeset=" + ((Object) null) + '}';
    }
}
