package yd;

import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0306a f19652a = new C0306a();

    /* renamed from: b, reason: collision with root package name */
    public static volatile b[] f19653b;

    /* renamed from: yd.a$a, reason: collision with other inner class name */
    public static final class C0306a extends b {
        @Override // yd.a.b
        public final void a(String str, Object... args) {
            h.f(args, "args");
            for (b bVar : a.f19653b) {
                bVar.a(str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // yd.a.b
        public final void b(Exception exc) {
            for (b bVar : a.f19653b) {
                bVar.b(exc);
            }
        }

        @Override // yd.a.b
        public final void c(String str, Object... args) {
            h.f(args, "args");
            for (b bVar : a.f19653b) {
                bVar.c(str, Arrays.copyOf(args, args.length));
            }
        }
    }

    public static abstract class b {
        public b() {
            new ThreadLocal();
        }

        public abstract void a(String str, Object... objArr);

        public abstract void b(Exception exc);

        public abstract void c(String str, Object... objArr);
    }

    static {
        new ArrayList();
        f19653b = new b[0];
    }
}
