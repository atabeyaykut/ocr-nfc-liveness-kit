package e1;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final e f5045a;

    /* renamed from: b, reason: collision with root package name */
    public static final c f5046b;

    /* renamed from: c, reason: collision with root package name */
    public static final d f5047c;

    /* renamed from: d, reason: collision with root package name */
    public static final f f5048d;

    /* renamed from: e, reason: collision with root package name */
    public static final d f5049e;
    public static final v0.g<l> f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f5050g;

    public static class a extends l {
        @Override // e1.l
        public final int a(int r12, int r22, int r32, int r42) {
            return 2;
        }

        @Override // e1.l
        public final float b(int r12, int r22, int r32, int r42) {
            if (Math.min(r22 / r42, r12 / r32) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }
    }

    public static class b extends l {
        @Override // e1.l
        public final int a(int r12, int r22, int r32, int r42) {
            return 1;
        }

        @Override // e1.l
        public final float b(int r12, int r22, int r32, int r42) {
            int r13 = (int) Math.ceil(Math.max(r22 / r42, r12 / r32));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(r13)) >= r13 ? 0 : 1));
        }
    }

    public static class c extends l {
        @Override // e1.l
        public final int a(int r32, int r42, int r52, int r6) {
            if (b(r32, r42, r52, r6) == 1.0f) {
                return 2;
            }
            return l.f5045a.a(r32, r42, r52, r6);
        }

        @Override // e1.l
        public final float b(int r22, int r32, int r42, int r52) {
            return Math.min(1.0f, l.f5045a.b(r22, r32, r42, r52));
        }
    }

    public static class d extends l {
        @Override // e1.l
        public final int a(int r12, int r22, int r32, int r42) {
            return 2;
        }

        @Override // e1.l
        public final float b(int r12, int r22, int r32, int r42) {
            return Math.max(r32 / r12, r42 / r22);
        }
    }

    public static class e extends l {
        @Override // e1.l
        public final int a(int r12, int r22, int r32, int r42) {
            return l.f5050g ? 2 : 1;
        }

        @Override // e1.l
        public final float b(int r22, int r32, int r42, int r52) {
            if (l.f5050g) {
                return Math.min(r42 / r22, r52 / r32);
            }
            if (Math.max(r32 / r52, r22 / r42) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r2);
        }
    }

    public static class f extends l {
        @Override // e1.l
        public final int a(int r12, int r22, int r32, int r42) {
            return 2;
        }

        @Override // e1.l
        public final float b(int r12, int r22, int r32, int r42) {
            return 1.0f;
        }
    }

    static {
        new a();
        new b();
        f5045a = new e();
        f5046b = new c();
        d dVar = new d();
        f5047c = dVar;
        f5048d = new f();
        f5049e = dVar;
        f = v0.g.a(dVar, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f5050g = true;
    }

    public abstract int a(int r12, int r22, int r32, int r42);

    public abstract float b(int r12, int r22, int r32, int r42);
}
