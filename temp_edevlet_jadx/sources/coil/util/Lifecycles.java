package coil.util;

import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.v;
import p9.d;
import r9.c;
import r9.e;

/* renamed from: coil.util.-Lifecycles, reason: invalid class name */
/* loaded from: classes.dex */
public final class Lifecycles {

    @e(c = "coil.util.-Lifecycles", f = "Lifecycles.kt", l = {44}, m = "awaitStarted")
    /* renamed from: coil.util.-Lifecycles$a */
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public Lifecycle f2469a;

        /* renamed from: b, reason: collision with root package name */
        public v f2470b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f2471c;

        /* renamed from: d, reason: collision with root package name */
        public int f2472d;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f2471c = obj;
            this.f2472d |= Integer.MIN_VALUE;
            return Lifecycles.a(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v6, types: [T, androidx.lifecycle.LifecycleObserver, coil.util.-Lifecycles$awaitStarted$2$1] */
    @androidx.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(androidx.lifecycle.Lifecycle r5, p9.d<? super l9.m> r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof coil.util.Lifecycles.a
            if (r0 == 0) goto L13
            r0 = r6
            coil.util.-Lifecycles$a r0 = (coil.util.Lifecycles.a) r0
            int r1 = r0.f2472d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f2472d = r1
            goto L18
        L13:
            coil.util.-Lifecycles$a r0 = new coil.util.-Lifecycles$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f2471c
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f2472d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            kotlin.jvm.internal.v r5 = r0.f2470b
            androidx.lifecycle.Lifecycle r0 = r0.f2469a
            c5.w.F(r6)     // Catch: java.lang.Throwable -> L2b
            goto L71
        L2b:
            r6 = move-exception
            goto L83
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            c5.w.F(r6)
            androidx.lifecycle.Lifecycle$State r6 = r5.getCurrentState()
            androidx.lifecycle.Lifecycle$State r2 = androidx.lifecycle.Lifecycle.State.STARTED
            boolean r6 = r6.isAtLeast(r2)
            if (r6 == 0) goto L47
            l9.m r5 = l9.m.f9594a
            return r5
        L47:
            kotlin.jvm.internal.v r6 = new kotlin.jvm.internal.v
            r6.<init>()
            r0.f2469a = r5     // Catch: java.lang.Throwable -> L7e
            r0.f2470b = r6     // Catch: java.lang.Throwable -> L7e
            r0.f2472d = r3     // Catch: java.lang.Throwable -> L7e
            nc.j r2 = new nc.j     // Catch: java.lang.Throwable -> L7e
            p9.d r0 = c5.w.x(r0)     // Catch: java.lang.Throwable -> L7e
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L7e
            r2.n()     // Catch: java.lang.Throwable -> L7e
            coil.util.-Lifecycles$awaitStarted$2$1 r0 = new coil.util.-Lifecycles$awaitStarted$2$1     // Catch: java.lang.Throwable -> L7e
            r0.<init>()     // Catch: java.lang.Throwable -> L7e
            r6.f8975a = r0     // Catch: java.lang.Throwable -> L7e
            r5.addObserver(r0)     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r0 = r2.m()     // Catch: java.lang.Throwable -> L7e
            if (r0 != r1) goto L6f
            return r1
        L6f:
            r0 = r5
            r5 = r6
        L71:
            T r5 = r5.f8975a
            androidx.lifecycle.LifecycleObserver r5 = (androidx.lifecycle.LifecycleObserver) r5
            if (r5 != 0) goto L78
            goto L7b
        L78:
            r0.removeObserver(r5)
        L7b:
            l9.m r5 = l9.m.f9594a
            return r5
        L7e:
            r0 = move-exception
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L83:
            T r5 = r5.f8975a
            androidx.lifecycle.LifecycleObserver r5 = (androidx.lifecycle.LifecycleObserver) r5
            if (r5 != 0) goto L8a
            goto L8d
        L8a:
            r0.removeObserver(r5)
        L8d:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.util.Lifecycles.a(androidx.lifecycle.Lifecycle, p9.d):java.lang.Object");
    }
}
