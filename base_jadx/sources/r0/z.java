package r0;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.b;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.h;
import mc.f;
import nc.t1;
import nc.u1;
import r0.e1;
import r0.p;
import r0.w0;
import r0.z;

/* loaded from: classes.dex */
public abstract class z<S extends p> {

    /* renamed from: a, reason: collision with root package name */
    public final k0 f13881a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f13882b;

    /* renamed from: c, reason: collision with root package name */
    public final nc.a0 f13883c;

    /* renamed from: d, reason: collision with root package name */
    public final r<S> f13884d;

    /* renamed from: e, reason: collision with root package name */
    public final ConcurrentHashMap<String, Object> f13885e;
    public final Set<String> f;

    /* renamed from: g, reason: collision with root package name */
    public final w0<S> f13886g;

    @r9.e(c = "com.airbnb.mvrx.MavericksViewModel$1", f = "MavericksViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<nc.a0, p9.d<? super l9.m>, Object> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ p f13888b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(p pVar, p9.d dVar) {
            super(2, dVar);
            this.f13888b = pVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
            kotlin.jvm.internal.h.f(completion, "completion");
            return new a(this.f13888b, completion);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(nc.a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Removed duplicated region for block: B:104:0x0212 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:108:? A[LOOP:5: B:52:0x00f6->B:108:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c4  */
        @Override // r9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 624
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: r0.z.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<S, S> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x9.l f13890b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(x9.l lVar) {
            super(1);
            this.f13890b = lVar;
        }

        @Override // x9.l
        public final Object invoke(Object obj) {
            Object objInvoke;
            boolean z10;
            p receiver = (p) obj;
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            x9.l lVar = this.f13890b;
            p newState = (p) lVar.invoke(receiver);
            p pVar = (p) lVar.invoke(receiver);
            boolean z11 = !kotlin.jvm.internal.h.a(newState, pVar);
            z zVar = z.this;
            if (!z11) {
                w0<S> w0Var = zVar.f13886g;
                if (w0Var != null) {
                    kotlin.jvm.internal.h.f(newState, "newState");
                    w0.a<S> aVar = w0Var.f13873a;
                    if (!(aVar.f13875a == aVar.hashCode())) {
                        throw new IllegalArgumentException(aVar.f13876b.getClass().getSimpleName().concat(" was mutated. State classes should be immutable.").toString());
                    }
                    w0Var.f13873a = new w0.a<>(newState);
                }
                return newState;
            }
            Field[] declaredFields = newState.getClass().getDeclaredFields();
            kotlin.jvm.internal.h.e(declaredFields, "firstState::class.java.declaredFields");
            lc.h hVarN0 = m9.k.n0(declaredFields);
            h0 action = h0.f13747a;
            kotlin.jvm.internal.h.f(action, "action");
            lc.y yVarZ0 = lc.w.Z0(hVarN0, new lc.v(action));
            Iterator it = yVarZ0.f9748a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    objInvoke = null;
                    break;
                }
                objInvoke = yVarZ0.f9749b.invoke(it.next());
                Field field = (Field) objInvoke;
                try {
                    z10 = !kotlin.jvm.internal.h.a(field.get(newState), field.get(pVar));
                } catch (Throwable unused) {
                    z10 = false;
                }
                if (z10) {
                    break;
                }
            }
            Field field2 = (Field) objInvoke;
            StringBuilder sb2 = new StringBuilder("Impure reducer set on ");
            sb2.append(zVar.getClass().getSimpleName());
            if (field2 == null) {
                sb2.append("! Differing states were provided by the same reducer.Ensure that your state properties properly implement hashCode. First state: ");
                sb2.append(newState);
                sb2.append(" -> Second state: ");
                sb2.append(pVar);
                throw new IllegalArgumentException(sb2.toString());
            }
            sb2.append("! ");
            sb2.append(field2.getName());
            sb2.append(" changed from ");
            sb2.append(field2.get(newState));
            sb2.append(" to ");
            sb2.append(field2.get(pVar));
            sb2.append(". Ensure that your state properties properly implement hashCode.");
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<String> {
        public c() {
            super(0);
        }

        @Override // x9.a
        public final String invoke() {
            return z.this.getClass().getSimpleName();
        }
    }

    public z(S initialState) {
        kotlin.jvm.internal.h.f(initialState, "initialState");
        k0 k0Var = com.google.android.gms.internal.clearcut.d0.f;
        if (k0Var == null) {
            throw new IllegalStateException("You must initialize Mavericks. Add Mavericks.initialize(...) to your Application.onCreate().".toString());
        }
        this.f13881a = k0Var;
        u1 u1VarA = com.google.android.gms.internal.clearcut.d0.a();
        kotlinx.coroutines.scheduling.c cVar = nc.j0.f10808a;
        kotlinx.coroutines.internal.f fVarF = b8.f.f(u1VarA.plus(kotlinx.coroutines.internal.m.f9167a.d()).plus(k0Var.f13765c));
        j0 j0Var = new j0(initialState, fVarF, k0Var.f13764b, new r0.c(initialState, fVarF, k0Var.f13766d), fVarF);
        Iterator it = k0Var.f13763a.iterator();
        while (it.hasNext()) {
            ((x9.p) it.next()).mo7invoke(this, j0Var);
        }
        this.f13882b = j0Var;
        nc.a0 a0Var = j0Var.f13753c;
        this.f13883c = a0Var;
        this.f13884d = (r<S>) j0Var.f13752b;
        this.f13885e = new ConcurrentHashMap<>();
        this.f = Collections.newSetFromMap(new ConcurrentHashMap());
        c5.y.w(new c());
        boolean z10 = j0Var.f13751a;
        this.f13886g = z10 ? new w0<>(initialState) : null;
        if (z10) {
            c5.v.C(a0Var, nc.j0.f10808a, 0, new a(initialState, null), 2);
        }
    }

    public static void a(af.c cVar, kotlinx.coroutines.flow.f execute, x9.p reducer) {
        cVar.getClass();
        kotlin.jvm.internal.h.f(execute, "$this$execute");
        kotlin.jvm.internal.h.f(reducer, "reducer");
        cVar.f13882b.getClass();
        cVar.c(new c0(reducer, null));
        kotlinx.coroutines.flow.u uVar = new kotlinx.coroutines.flow.u(new kotlinx.coroutines.flow.n(execute, new d0(cVar, reducer, null, null)), new b0(cVar, reducer, null));
        c5.v.C(new kotlinx.coroutines.internal.f(cVar.f13883c.getCoroutineContext().plus(p9.g.f12870a)), null, 0, new kotlinx.coroutines.flow.j(uVar, null), 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.lifecycle.LifecycleObserver, com.airbnb.mvrx.MavericksViewModel$assertOneActiveSubscription$observer$1] */
    public final t1 b(kotlinx.coroutines.flow.f resolveSubscription, LifecycleOwner lifecycleOwner, h deliveryMode, x9.p pVar) {
        nc.a0 lifecycleScope;
        kotlin.jvm.internal.h.f(resolveSubscription, "$this$resolveSubscription");
        kotlin.jvm.internal.h.f(deliveryMode, "deliveryMode");
        if (lifecycleOwner != null) {
            Boolean bool = s.f13861a;
            kotlin.jvm.internal.h.e(bool, "MavericksTestOverrides.F…_LIFECYCLE_AWARE_OBSERVER");
            if (!bool.booleanValue()) {
                if (deliveryMode instanceof e1) {
                    final e1 e1Var = (e1) deliveryMode;
                    Object obj = this.f13885e.get(e1Var.f13738a);
                    ?? r6 = new DefaultLifecycleObserver() { // from class: com.airbnb.mvrx.MavericksViewModel$assertOneActiveSubscription$observer$1
                        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                        public final void onCreate(LifecycleOwner owner) {
                            h.f(owner, "owner");
                            z zVar = this.f2697a;
                            Set<String> set = zVar.f;
                            e1 e1Var2 = e1Var;
                            if (!set.contains(e1Var2.f13738a)) {
                                zVar.f.add(e1Var2.f13738a);
                                return;
                            }
                            zVar.getClass();
                            throw new IllegalStateException(f.r("\n        Subscribing with a duplicate subscription id: " + e1Var2.f13738a + ".\n        If you have multiple uniqueOnly subscriptions in a MvRx view that listen to the same properties\n        you must use a custom subscription id. If you are using a custom MvRxView, make sure you are using the proper\n        lifecycle owner. See BaseMvRxFragment for an example.\n    ").toString());
                        }

                        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                        public final void onDestroy(LifecycleOwner owner) {
                            h.f(owner, "owner");
                            this.f2697a.f.remove(e1Var.f13738a);
                        }

                        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                        public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner2) {
                            b.c(this, lifecycleOwner2);
                        }

                        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                        public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner2) {
                            b.d(this, lifecycleOwner2);
                        }

                        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                        public final /* synthetic */ void onStart(LifecycleOwner lifecycleOwner2) {
                            b.e(this, lifecycleOwner2);
                        }

                        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                        public final /* synthetic */ void onStop(LifecycleOwner lifecycleOwner2) {
                            b.f(this, lifecycleOwner2);
                        }
                    };
                    lifecycleOwner.getLifecycle().addObserver(r6);
                    resolveSubscription = new kotlinx.coroutines.flow.u(b8.f.z(new kotlinx.coroutines.flow.y(new m(new kotlinx.coroutines.flow.q(new kotlinx.coroutines.flow.m(resolveSubscription, new a0(this, e1Var, lifecycleOwner, r6, null)), new f0(obj, null)), lifecycleOwner, null))), new g0(this, deliveryMode, null));
                } else {
                    resolveSubscription = new kotlinx.coroutines.flow.y(new m(resolveSubscription, lifecycleOwner, null));
                }
            }
        }
        if (lifecycleOwner == null || (lifecycleScope = LifecycleOwnerKt.getLifecycleScope(lifecycleOwner)) == null) {
            lifecycleScope = this.f13883c;
        }
        return c5.v.C(new kotlinx.coroutines.internal.f(lifecycleScope.getCoroutineContext().plus(this.f13881a.f13767e)), null, 4, new e0(resolveSubscription, pVar, null), 1);
    }

    public final void c(x9.l<? super S, ? extends S> reducer) {
        kotlin.jvm.internal.h.f(reducer, "reducer");
        boolean z10 = this.f13882b.f13751a;
        r<S> rVar = this.f13884d;
        if (z10) {
            rVar.b(new b(reducer));
        } else {
            rVar.b(reducer);
        }
    }

    public final String toString() {
        return getClass().getSimpleName() + ' ' + this.f13884d.c();
    }
}
