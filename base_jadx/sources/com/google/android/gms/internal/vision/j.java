package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class j extends i1<j, a> implements p2 {
    private static final j zzj;
    private static volatile z2<j> zzk;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private float zzi;

    public static final class a extends i1.b<j, a> implements p2 {
        public a() {
            super(j.zzj);
        }
    }

    public enum b implements l1 {
        CLASSIFICATION_UNKNOWN(0),
        CLASSIFICATION_NONE(1),
        CLASSIFICATION_ALL(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f4005a;

        b(int r32) {
            this.f4005a = r32;
        }

        @Override // com.google.android.gms.internal.vision.l1
        public final int a() {
            return this.f4005a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f4005a + " name=" + name() + '>';
        }
    }

    public enum c implements l1 {
        LANDMARK_UNKNOWN(0),
        LANDMARK_NONE(1),
        LANDMARK_ALL(2),
        LANDMARK_CONTOUR(3);


        /* renamed from: a, reason: collision with root package name */
        public final int f4010a;

        c(int r32) {
            this.f4010a = r32;
        }

        @Override // com.google.android.gms.internal.vision.l1
        public final int a() {
            return this.f4010a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f4010a + " name=" + name() + '>';
        }
    }

    public enum d implements l1 {
        MODE_UNKNOWN(0),
        MODE_ACCURATE(1),
        MODE_FAST(2),
        MODE_SELFIE(3);


        /* renamed from: a, reason: collision with root package name */
        public final int f4015a;

        d(int r32) {
            this.f4015a = r32;
        }

        @Override // com.google.android.gms.internal.vision.l1
        public final int a() {
            return this.f4015a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + d.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f4015a + " name=" + name() + '>';
        }
    }

    static {
        j jVar = new j();
        zzj = jVar;
        i1.m(j.class, jVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.j>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<j> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new j();
            case 2:
                return new a();
            case 3:
                return new b3(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", y.f4122a, "zze", x.f4120a, "zzf", w.f4109a, "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                z2<j> z2Var2 = zzk;
                z2<j> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (j.class) {
                        z2<j> z2Var4 = zzk;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzk = aVar;
                            z2Var = aVar;
                        }
                    }
                    z2Var3 = z2Var;
                }
                return z2Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
