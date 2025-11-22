package t1;

import android.content.Context;
import c5.y;

/* loaded from: classes.dex */
public final class b implements t1.c {

    /* renamed from: a, reason: collision with root package name */
    public final l9.j f15494a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.j f15495b;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<u1.c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15496a = new a();

        public a() {
            super(0);
        }

        @Override // x9.a
        public final u1.c invoke() {
            return new u1.c();
        }
    }

    /* renamed from: t1.b$b, reason: collision with other inner class name */
    public static final class C0251b extends kotlin.jvm.internal.j implements x9.a<x1.a> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f15497a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0251b(Context context) {
            super(0);
            this.f15497a = context;
        }

        @Override // x9.a
        public final x1.a invoke() {
            Context applicationContext = this.f15497a.getApplicationContext();
            kotlin.jvm.internal.h.e(applicationContext, "context.applicationContext");
            return new x1.a(applicationContext);
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<y1.a> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f15498a = new c();

        public c() {
            super(0);
        }

        @Override // x9.a
        public final y1.a invoke() {
            return new y1.a();
        }
    }

    public b(Context context) {
        kotlin.jvm.internal.h.e(context.getApplicationContext(), "context.applicationContext");
        this.f15494a = y.w(c.f15498a);
        y.w(new C0251b(context));
        this.f15495b = y.w(a.f15496a);
    }

    @Override // t1.c
    public final u1.a b() {
        return (u1.a) this.f15495b.getValue();
    }

    @Override // t1.c
    public final y1.b c() {
        return (y1.b) this.f15494a.getValue();
    }
}
