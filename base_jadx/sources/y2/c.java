package y2;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final long f19295a;

    /* renamed from: b, reason: collision with root package name */
    public final a f19296b;

    public enum a implements w6.c {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);


        /* renamed from: a, reason: collision with root package name */
        public final int f19304a;

        a(int r32) {
            this.f19304a = r32;
        }

        @Override // w6.c
        public final int f() {
            return this.f19304a;
        }
    }

    public c(long j10, a aVar) {
        this.f19295a = j10;
        this.f19296b = aVar;
    }
}
