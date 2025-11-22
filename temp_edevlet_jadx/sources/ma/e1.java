package ma;

/* loaded from: classes2.dex */
public abstract class e1 {

    /* renamed from: a, reason: collision with root package name */
    public final String f10215a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10216b;

    public e1(String str, boolean z10) {
        this.f10215a = str;
        this.f10216b = z10;
    }

    public Integer a(e1 visibility) {
        kotlin.jvm.internal.h.f(visibility, "visibility");
        n9.b bVar = d1.f10205a;
        if (this == visibility) {
            return 0;
        }
        n9.b bVar2 = d1.f10205a;
        Integer num = (Integer) bVar2.get(this);
        Integer num2 = (Integer) bVar2.get(visibility);
        if (num == null || num2 == null || kotlin.jvm.internal.h.a(num, num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public String b() {
        return this.f10215a;
    }

    public e1 c() {
        return this;
    }

    public final String toString() {
        return b();
    }
}
