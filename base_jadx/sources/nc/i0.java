package nc;

import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public abstract class i0<T> extends kotlinx.coroutines.scheduling.g {

    /* renamed from: c, reason: collision with root package name */
    public int f10802c;

    public i0(int r12) {
        this.f10802c = r12;
    }

    public void a(Object obj, CancellationException cancellationException) {
    }

    public abstract p9.d<T> b();

    public Throwable c(Object obj) {
        r rVar = obj instanceof r ? (r) obj : null;
        if (rVar == null) {
            return null;
        }
        return rVar.f10837a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T e(Object obj) {
        return obj;
    }

    public final void f(Throwable th2, Throwable th3) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (th2 == null && th3 == null) {
            return;
        }
        if (th2 != null && th3 != null) {
            b8.f.k(th2, th3);
        }
        if (th2 == null) {
            th2 = th3;
        }
        kotlin.jvm.internal.h.c(th2);
        c5.v.u(b().getContext(), new b0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th2));
    }

    public abstract Object h();

    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r12 = this;
            kotlinx.coroutines.scheduling.h r0 = r12.f9213b
            p9.d r1 = r12.b()     // Catch: java.lang.Throwable -> L93
            kotlinx.coroutines.internal.g r1 = (kotlinx.coroutines.internal.g) r1     // Catch: java.lang.Throwable -> L93
            p9.d<T> r2 = r1.f9141e     // Catch: java.lang.Throwable -> L93
            java.lang.Object r1 = r1.f9142g     // Catch: java.lang.Throwable -> L93
            p9.f r3 = r2.getContext()     // Catch: java.lang.Throwable -> L93
            java.lang.Object r1 = kotlinx.coroutines.internal.w.c(r3, r1)     // Catch: java.lang.Throwable -> L93
            kotlinx.coroutines.internal.u r4 = kotlinx.coroutines.internal.w.f9178a     // Catch: java.lang.Throwable -> L93
            r5 = 0
            if (r1 == r4) goto L1e
            nc.z1 r4 = nc.w.c(r2, r3, r1)     // Catch: java.lang.Throwable -> L93
            goto L1f
        L1e:
            r4 = r5
        L1f:
            p9.f r6 = r2.getContext()     // Catch: java.lang.Throwable -> L57
            java.lang.Object r7 = r12.h()     // Catch: java.lang.Throwable -> L57
            java.lang.Throwable r8 = r12.c(r7)     // Catch: java.lang.Throwable -> L57
            if (r8 != 0) goto L42
            int r9 = r12.f10802c     // Catch: java.lang.Throwable -> L57
            r10 = 1
            if (r9 == r10) goto L37
            r11 = 2
            if (r9 != r11) goto L36
            goto L37
        L36:
            r10 = 0
        L37:
            if (r10 == 0) goto L42
            nc.b1$b r9 = nc.b1.b.f10784a     // Catch: java.lang.Throwable -> L57
            p9.f$b r6 = r6.get(r9)     // Catch: java.lang.Throwable -> L57
            nc.b1 r6 = (nc.b1) r6     // Catch: java.lang.Throwable -> L57
            goto L43
        L42:
            r6 = r5
        L43:
            if (r6 == 0) goto L59
            boolean r9 = r6.b()     // Catch: java.lang.Throwable -> L57
            if (r9 != 0) goto L59
            java.util.concurrent.CancellationException r6 = r6.n()     // Catch: java.lang.Throwable -> L57
            r12.a(r7, r6)     // Catch: java.lang.Throwable -> L57
            l9.h$a r6 = c5.w.j(r6)     // Catch: java.lang.Throwable -> L57
            goto L64
        L57:
            r2 = move-exception
            goto L87
        L59:
            if (r8 == 0) goto L60
            l9.h$a r6 = c5.w.j(r8)     // Catch: java.lang.Throwable -> L57
            goto L64
        L60:
            java.lang.Object r6 = r12.e(r7)     // Catch: java.lang.Throwable -> L57
        L64:
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L57
            l9.m r2 = l9.m.f9594a     // Catch: java.lang.Throwable -> L57
            if (r4 == 0) goto L71
            boolean r2 = r4.m0()     // Catch: java.lang.Throwable -> L93
            if (r2 == 0) goto L74
        L71:
            kotlinx.coroutines.internal.w.a(r3, r1)     // Catch: java.lang.Throwable -> L93
        L74:
            r0.a()     // Catch: java.lang.Throwable -> L7a
            l9.m r0 = l9.m.f9594a     // Catch: java.lang.Throwable -> L7a
            goto L7f
        L7a:
            r0 = move-exception
            l9.h$a r0 = c5.w.j(r0)
        L7f:
            java.lang.Throwable r0 = l9.h.a(r0)
            r12.f(r5, r0)
            goto La6
        L87:
            if (r4 == 0) goto L8f
            boolean r4 = r4.m0()     // Catch: java.lang.Throwable -> L93
            if (r4 == 0) goto L92
        L8f:
            kotlinx.coroutines.internal.w.a(r3, r1)     // Catch: java.lang.Throwable -> L93
        L92:
            throw r2     // Catch: java.lang.Throwable -> L93
        L93:
            r1 = move-exception
            r0.a()     // Catch: java.lang.Throwable -> L9a
            l9.m r0 = l9.m.f9594a     // Catch: java.lang.Throwable -> L9a
            goto L9f
        L9a:
            r0 = move-exception
            l9.h$a r0 = c5.w.j(r0)
        L9f:
            java.lang.Throwable r0 = l9.h.a(r0)
            r12.f(r1, r0)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: nc.i0.run():void");
    }
}
