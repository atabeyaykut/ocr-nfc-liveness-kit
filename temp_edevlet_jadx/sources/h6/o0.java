package h6;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class o0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Callable f6946a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h5.l f6947b;

    public class a implements h5.b<Object, Void> {
        public a() {
        }

        @Override // h5.b
        public final Void c(@NonNull h5.k<Object> kVar) throws Exception {
            boolean zM = kVar.m();
            o0 o0Var = o0.this;
            if (zM) {
                o0Var.f6947b.b(kVar.i());
                return null;
            }
            o0Var.f6947b.a(kVar.h());
            return null;
        }
    }

    public o0(v vVar, h5.l lVar) {
        this.f6946a = vVar;
        this.f6947b = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ((h5.k) this.f6946a.call()).f(new a());
        } catch (Exception e10) {
            this.f6947b.a(e10);
        }
    }
}
