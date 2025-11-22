package h7;

import k4.k;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final long f6997a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6998b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6999c;

    /* renamed from: d, reason: collision with root package name */
    public final b f7000d;

    /* renamed from: e, reason: collision with root package name */
    public final c f7001e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f7002g;

    /* renamed from: i, reason: collision with root package name */
    public final int f7004i;

    /* renamed from: j, reason: collision with root package name */
    public final String f7005j;

    /* renamed from: l, reason: collision with root package name */
    public final EnumC0119a f7007l;

    /* renamed from: m, reason: collision with root package name */
    public final String f7008m;

    /* renamed from: o, reason: collision with root package name */
    public final String f7010o;

    /* renamed from: h, reason: collision with root package name */
    public final int f7003h = 0;

    /* renamed from: k, reason: collision with root package name */
    public final long f7006k = 0;

    /* renamed from: n, reason: collision with root package name */
    public final long f7009n = 0;

    /* renamed from: h7.a$a, reason: collision with other inner class name */
    public enum EnumC0119a implements k {
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        /* JADX INFO: Fake field, exist only in values array */
        MESSAGE_OPEN(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f7013a;

        EnumC0119a(int r32) {
            this.f7013a = r32;
        }

        @Override // k4.k
        public final int f() {
            return this.f7013a;
        }
    }

    public enum b implements k {
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN(0),
        DATA_MESSAGE(1),
        /* JADX INFO: Fake field, exist only in values array */
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);


        /* renamed from: a, reason: collision with root package name */
        public final int f7017a;

        b(int r32) {
            this.f7017a = r32;
        }

        @Override // k4.k
        public final int f() {
            return this.f7017a;
        }
    }

    public enum c implements k {
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN_OS(0),
        ANDROID(1),
        /* JADX INFO: Fake field, exist only in values array */
        IOS(2),
        /* JADX INFO: Fake field, exist only in values array */
        WEB(3);


        /* renamed from: a, reason: collision with root package name */
        public final int f7020a;

        c(int r32) {
            this.f7020a = r32;
        }

        @Override // k4.k
        public final int f() {
            return this.f7020a;
        }
    }

    public a(long j10, String str, String str2, b bVar, c cVar, String str3, String str4, int r92, String str5, EnumC0119a enumC0119a, String str6, String str7) {
        this.f6997a = j10;
        this.f6998b = str;
        this.f6999c = str2;
        this.f7000d = bVar;
        this.f7001e = cVar;
        this.f = str3;
        this.f7002g = str4;
        this.f7004i = r92;
        this.f7005j = str5;
        this.f7007l = enumC0119a;
        this.f7008m = str6;
        this.f7010o = str7;
    }
}
