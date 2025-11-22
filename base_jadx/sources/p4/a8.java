package p4;

/* loaded from: classes.dex */
public enum a8 implements k1 {
    TYPE_UNKNOWN(0),
    TYPE_CONTACT_INFO(1),
    TYPE_EMAIL(2),
    TYPE_ISBN(3),
    TYPE_PHONE(4),
    TYPE_PRODUCT(5),
    TYPE_SMS(6),
    TYPE_TEXT(7),
    TYPE_URL(8),
    TYPE_WIFI(9),
    TYPE_GEO(10),
    TYPE_CALENDAR_EVENT(11),
    TYPE_DRIVER_LICENSE(12);


    /* renamed from: a, reason: collision with root package name */
    public final int f12264a;

    a8(int r32) {
        this.f12264a = r32;
    }

    @Override // p4.k1
    public final int a() {
        return this.f12264a;
    }
}
