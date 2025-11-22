package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public enum b0 implements l1 {
    UNKNOWN_FORMAT(0),
    CONTACT_INFO(1),
    EMAIL(2),
    ISBN(3),
    PHONE(4),
    PRODUCT(5),
    SMS(6),
    TEXT(7),
    URL(8),
    WIFI(9),
    GEO(10),
    CALENDAR_EVENT(11),
    DRIVER_LICENSE(12),
    BOARDING_PASS(13);


    /* renamed from: a, reason: collision with root package name */
    public final int f3903a;

    b0(int r32) {
        this.f3903a = r32;
    }

    public static b0 n(int r02) {
        switch (r02) {
            case 0:
                return UNKNOWN_FORMAT;
            case 1:
                return CONTACT_INFO;
            case 2:
                return EMAIL;
            case 3:
                return ISBN;
            case 4:
                return PHONE;
            case 5:
                return PRODUCT;
            case 6:
                return SMS;
            case 7:
                return TEXT;
            case 8:
                return URL;
            case 9:
                return WIFI;
            case 10:
                return GEO;
            case 11:
                return CALENDAR_EVENT;
            case 12:
                return DRIVER_LICENSE;
            case 13:
                return BOARDING_PASS;
            default:
                return null;
        }
    }

    @Override // com.google.android.gms.internal.vision.l1
    public final int a() {
        return this.f3903a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + b0.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f3903a + " name=" + name() + '>';
    }
}
