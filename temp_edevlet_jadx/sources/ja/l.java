package ja;

import c5.y;
import java.util.Set;

/* loaded from: classes2.dex */
public enum l {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");


    /* renamed from: a, reason: collision with root package name */
    public final lb.f f8343a;

    /* renamed from: b, reason: collision with root package name */
    public final lb.f f8344b;

    /* renamed from: c, reason: collision with root package name */
    public final l9.e f8345c = y.v(2, new b());

    /* renamed from: d, reason: collision with root package name */
    public final l9.e f8346d = y.v(2, new a());

    /* renamed from: e, reason: collision with root package name */
    public static final Set<l> f8334e = x5.a.s(CHAR, BYTE, SHORT, INT, FLOAT, LONG, DOUBLE);

    public static final class a extends kotlin.jvm.internal.j implements x9.a<lb.c> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final lb.c invoke() {
            return o.f8364k.c(l.this.f8344b);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<lb.c> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final lb.c invoke() {
            return o.f8364k.c(l.this.f8343a);
        }
    }

    l(String str) {
        this.f8343a = lb.f.t(str);
        this.f8344b = lb.f.t(str.concat("Array"));
    }
}
