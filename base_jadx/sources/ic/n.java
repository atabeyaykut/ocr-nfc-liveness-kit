package ic;

import ic.f;

/* loaded from: classes2.dex */
public abstract class n implements f {

    /* renamed from: a, reason: collision with root package name */
    public final String f7376a;

    public static final class a extends n {

        /* renamed from: b, reason: collision with root package name */
        public static final a f7377b = new a();

        public a() {
            super("must be a member function");
        }

        @Override // ic.f
        public final boolean b(ma.u functionDescriptor) {
            kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
            return functionDescriptor.a0() != null;
        }
    }

    public static final class b extends n {

        /* renamed from: b, reason: collision with root package name */
        public static final b f7378b = new b();

        public b() {
            super("must be a member or an extension function");
        }

        @Override // ic.f
        public final boolean b(ma.u functionDescriptor) {
            kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
            return (functionDescriptor.a0() == null && functionDescriptor.h0() == null) ? false : true;
        }
    }

    public n(String str) {
        this.f7376a = str;
    }

    @Override // ic.f
    public final String a(ma.u uVar) {
        return f.a.a(this, uVar);
    }

    @Override // ic.f
    public final String getDescription() {
        return this.f7376a;
    }
}
