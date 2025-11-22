package na;

/* loaded from: classes2.dex */
public enum e {
    FIELD(null),
    FILE(null),
    PROPERTY(null),
    PROPERTY_GETTER("get"),
    PROPERTY_SETTER("set"),
    RECEIVER(null),
    CONSTRUCTOR_PARAMETER("param"),
    SETTER_PARAMETER("setparam"),
    PROPERTY_DELEGATE_FIELD("delegate");


    /* renamed from: a, reason: collision with root package name */
    public final String f10646a;

    e(String str) {
        this.f10646a = str == null ? a6.a.G(name()) : str;
    }
}
