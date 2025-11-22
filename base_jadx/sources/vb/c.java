package vb;

import vb.d;

/* loaded from: classes2.dex */
public abstract class c {

    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f18417a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final int f18418b;

        static {
            d.a aVar = d.f18420c;
            aVar.getClass();
            int r12 = d.f18427k;
            aVar.getClass();
            int r22 = d.f18425i;
            aVar.getClass();
            f18418b = (~(d.f18426j | r22)) & r12;
        }

        @Override // vb.c
        public final int a() {
            return f18418b;
        }
    }

    public static final class b extends c {

        /* renamed from: a, reason: collision with root package name */
        public static final b f18419a = new b();

        @Override // vb.c
        public final int a() {
            return 0;
        }
    }

    public abstract int a();

    public final String toString() {
        return getClass().getSimpleName();
    }
}
