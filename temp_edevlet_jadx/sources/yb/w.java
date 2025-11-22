package yb;

/* loaded from: classes2.dex */
public final class w<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f19487a;

    /* renamed from: b, reason: collision with root package name */
    public final T f19488b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19489c;

    /* renamed from: d, reason: collision with root package name */
    public final lb.b f19490d;

    /* JADX WARN: Multi-variable type inference failed */
    public w(kb.e eVar, kb.e eVar2, String filePath, lb.b classId) {
        kotlin.jvm.internal.h.f(filePath, "filePath");
        kotlin.jvm.internal.h.f(classId, "classId");
        this.f19487a = eVar;
        this.f19488b = eVar2;
        this.f19489c = filePath;
        this.f19490d = classId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return kotlin.jvm.internal.h.a(this.f19487a, wVar.f19487a) && kotlin.jvm.internal.h.a(this.f19488b, wVar.f19488b) && kotlin.jvm.internal.h.a(this.f19489c, wVar.f19489c) && kotlin.jvm.internal.h.a(this.f19490d, wVar.f19490d);
    }

    public final int hashCode() {
        T t10 = this.f19487a;
        int r12 = (t10 == null ? 0 : t10.hashCode()) * 31;
        T t11 = this.f19488b;
        return this.f19490d.hashCode() + androidx.room.util.a.a(this.f19489c, (r12 + (t11 != null ? t11.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.f19487a + ", expectedVersion=" + this.f19488b + ", filePath=" + this.f19489c + ", classId=" + this.f19490d + ')';
    }
}
