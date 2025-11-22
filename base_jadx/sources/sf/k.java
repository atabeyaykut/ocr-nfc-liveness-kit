package sf;

import r4.h6;

/* loaded from: classes3.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public Object f15440a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15441b;

    /* renamed from: c, reason: collision with root package name */
    public Object f15442c;

    public k() {
    }

    public final h6 a() {
        Boolean bool;
        String str = (String) this.f15440a;
        if (str != null && (bool = (Boolean) this.f15441b) != null && ((Integer) this.f15442c) != null) {
            return new h6(str, bool.booleanValue(), ((Integer) this.f15442c).intValue());
        }
        StringBuilder sb2 = new StringBuilder();
        if (((String) this.f15440a) == null) {
            sb2.append(" libraryName");
        }
        if (((Boolean) this.f15441b) == null) {
            sb2.append(" enableFirelog");
        }
        if (((Integer) this.f15442c) == null) {
            sb2.append(" firelogEventType");
        }
        String strValueOf = String.valueOf(sb2);
        throw new IllegalStateException(androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 28), "Missing required properties:", strValueOf));
    }

    public /* synthetic */ k(k9.a aVar, k9.a aVar2, k9.a aVar3) {
        this.f15440a = aVar;
        this.f15441b = aVar2;
        this.f15442c = aVar3;
    }
}
