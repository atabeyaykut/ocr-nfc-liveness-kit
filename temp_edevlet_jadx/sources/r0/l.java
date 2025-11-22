package r0;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import r0.p;
import r0.z;

/* loaded from: classes.dex */
public final class l<VM extends z<S>, S extends p> implements ViewModelProvider.Factory {

    /* renamed from: a, reason: collision with root package name */
    public final Class<? extends VM> f13768a;

    /* renamed from: b, reason: collision with root package name */
    public final Class<? extends S> f13769b;

    /* renamed from: c, reason: collision with root package name */
    public final f1 f13770c;

    /* renamed from: d, reason: collision with root package name */
    public final String f13771d;

    /* renamed from: e, reason: collision with root package name */
    public final x9.l<S, S> f13772e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final q<VM, S> f13773g;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<S, S> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13774a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final Object invoke(Object obj) {
            p it = (p) obj;
            kotlin.jvm.internal.h.f(it, "it");
            return it;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l(Class<? extends VM> cls, Class<? extends S> cls2, f1 f1Var, String str, x9.l<? super S, ? extends S> lVar, boolean z10, q<VM, S> qVar) {
        this.f13768a = cls;
        this.f13769b = cls2;
        this.f13770c = f1Var;
        this.f13771d = str;
        this.f13772e = lVar;
        this.f = z10;
        this.f13773g = qVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fa  */
    @Override // androidx.lifecycle.ViewModelProvider.Factory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T extends androidx.lifecycle.ViewModel> T create(java.lang.Class<T> r14) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r0.l.create(java.lang.Class):androidx.lifecycle.ViewModel");
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
        return androidx.lifecycle.h.b(this, cls, creationExtras);
    }
}
