package ic;

import ic.f;

/* loaded from: classes2.dex */
public abstract class v implements f {

    /* renamed from: a, reason: collision with root package name */
    public final String f7417a;

    public static final class a extends v {

        /* renamed from: b, reason: collision with root package name */
        public final int f7418b;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(int r32) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("must have at least ", r32, " value parameter");
            sbE.append(r32 > 1 ? "s" : "");
            super(sbE.toString());
            this.f7418b = r32;
        }

        @Override // ic.f
        public final boolean b(ma.u functionDescriptor) {
            kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
            return functionDescriptor.g().size() >= this.f7418b;
        }
    }

    public static final class b extends v {

        /* renamed from: b, reason: collision with root package name */
        public final int f7419b;

        public b() {
            super("must have exactly 2 value parameters");
            this.f7419b = 2;
        }

        @Override // ic.f
        public final boolean b(ma.u functionDescriptor) {
            kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
            return functionDescriptor.g().size() == this.f7419b;
        }
    }

    public static final class c extends v {

        /* renamed from: b, reason: collision with root package name */
        public static final c f7420b = new c();

        public c() {
            super("must have no value parameters");
        }

        @Override // ic.f
        public final boolean b(ma.u functionDescriptor) {
            kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
            return functionDescriptor.g().isEmpty();
        }
    }

    public static final class d extends v {

        /* renamed from: b, reason: collision with root package name */
        public static final d f7421b = new d();

        public d() {
            super("must have a single value parameter");
        }

        @Override // ic.f
        public final boolean b(ma.u functionDescriptor) {
            kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
            return functionDescriptor.g().size() == 1;
        }
    }

    public v(String str) {
        this.f7417a = str;
    }

    @Override // ic.f
    public final String a(ma.u uVar) {
        return f.a.a(this, uVar);
    }

    @Override // ic.f
    public final String getDescription() {
        return this.f7417a;
    }
}
