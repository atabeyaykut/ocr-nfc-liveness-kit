package s4;

/* loaded from: classes.dex */
public final class x1 {

    /* renamed from: a, reason: collision with root package name */
    public Object f15221a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15222b;

    /* renamed from: c, reason: collision with root package name */
    public Object f15223c;

    public x1() {
    }

    public /* synthetic */ x1(k9.a aVar, k9.a aVar2, k9.a aVar3) {
        this.f15222b = aVar;
        this.f15221a = aVar2;
        this.f15223c = aVar3;
    }

    public final r8 a() {
        String strConcat = ((String) this.f15222b) == null ? " libraryName" : "";
        if (((Boolean) this.f15223c) == null) {
            strConcat = strConcat.concat(" enableFirelog");
        }
        if (((Integer) this.f15221a) == null) {
            strConcat = String.valueOf(strConcat).concat(" firelogEventType");
        }
        if (strConcat.isEmpty()) {
            return new r8((String) this.f15222b, ((Boolean) this.f15223c).booleanValue(), ((Integer) this.f15221a).intValue());
        }
        throw new IllegalStateException(strConcat.length() != 0 ? "Missing required properties:".concat(strConcat) : new String("Missing required properties:"));
    }
}
