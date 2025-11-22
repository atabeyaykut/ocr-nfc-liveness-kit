package n3;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c5.v;
import com.google.android.gms.common.api.internal.BasePendingResult;
import n3.a;
import n3.a.c;
import o3.e0;
import o3.l0;
import o3.t0;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes.dex */
public abstract class c<O extends a.c> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10546a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f10547b;

    /* renamed from: c, reason: collision with root package name */
    public final n3.a f10548c;

    /* renamed from: d, reason: collision with root package name */
    public final a.c f10549d;

    /* renamed from: e, reason: collision with root package name */
    public final o3.a f10550e;
    public final Looper f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10551g;

    /* renamed from: h, reason: collision with root package name */
    @NotOnlyInitialized
    public final e0 f10552h;

    /* renamed from: i, reason: collision with root package name */
    public final v f10553i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final o3.d f10554j;

    public static class a {

        /* renamed from: c, reason: collision with root package name */
        @NonNull
        public static final a f10555c = new a(new v(), Looper.getMainLooper());

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final v f10556a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final Looper f10557b;

        public a(v vVar, Looper looper) {
            this.f10556a = vVar;
            this.f10557b = looper;
        }
    }

    @Deprecated
    public c() {
        throw null;
    }

    @MainThread
    public c(@NonNull Activity activity, @NonNull n3.a aVar, @NonNull a.c.C0198c c0198c, @NonNull a aVar2) {
        this(activity, activity, aVar, c0198c, aVar2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(@androidx.annotation.NonNull android.content.Context r5, @androidx.annotation.Nullable android.app.Activity r6, n3.a r7, n3.a.c r8, n3.c.a r9) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n3.c.<init>(android.content.Context, android.app.Activity, n3.a, n3.a$c, n3.c$a):void");
    }

    public c(@NonNull Context context, @NonNull n3.a<O> aVar, @NonNull O o10, @NonNull a aVar2) {
        this(context, null, aVar, o10, aVar2);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final r3.e.a a() {
        /*
            r6 = this;
            r3.e$a r0 = new r3.e$a
            r0.<init>()
            n3.a$c r1 = r6.f10549d
            boolean r2 = r1 instanceof n3.a.c.b
            if (r2 == 0) goto L21
            r3 = r1
            n3.a$c$b r3 = (n3.a.c.b) r3
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r3 = r3.m()
            if (r3 == 0) goto L21
            java.lang.String r3 = r3.f2936d
            if (r3 != 0) goto L19
            goto L2d
        L19:
            android.accounts.Account r4 = new android.accounts.Account
            java.lang.String r5 = "com.google"
            r4.<init>(r3, r5)
            goto L2e
        L21:
            boolean r3 = r1 instanceof n3.a.c.InterfaceC0197a
            if (r3 == 0) goto L2d
            r3 = r1
            n3.a$c$a r3 = (n3.a.c.InterfaceC0197a) r3
            android.accounts.Account r4 = r3.o()
            goto L2e
        L2d:
            r4 = 0
        L2e:
            r0.f13951a = r4
            if (r2 == 0) goto L40
            n3.a$c$b r1 = (n3.a.c.b) r1
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r1 = r1.m()
            if (r1 != 0) goto L3b
            goto L40
        L3b:
            java.util.HashSet r1 = r1.E()
            goto L44
        L40:
            java.util.Set r1 = java.util.Collections.emptySet()
        L44:
            androidx.collection.ArraySet r2 = r0.f13952b
            if (r2 != 0) goto L4f
            androidx.collection.ArraySet r2 = new androidx.collection.ArraySet
            r2.<init>()
            r0.f13952b = r2
        L4f:
            androidx.collection.ArraySet r2 = r0.f13952b
            r2.addAll(r1)
            android.content.Context r1 = r6.f10546a
            java.lang.Class r2 = r1.getClass()
            java.lang.String r2 = r2.getName()
            r0.f13954d = r2
            java.lang.String r1 = r1.getPackageName()
            r0.f13953c = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n3.c.a():r3.e$a");
    }

    public final void b(int r32, @NonNull com.google.android.gms.common.api.internal.a aVar) {
        aVar.f2991i = aVar.f2991i || ((Boolean) BasePendingResult.f2983j.get()).booleanValue();
        o3.d dVar = this.f10554j;
        dVar.getClass();
        t0 t0Var = new t0(r32, aVar);
        h4.i iVar = dVar.f11113n;
        iVar.sendMessage(iVar.obtainMessage(4, new l0(t0Var, dVar.f11108i.get(), this)));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final h5.z c(int r18, @androidx.annotation.NonNull o3.m r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r19
            h5.l r2 = new h5.l
            r2.<init>()
            o3.d r11 = r0.f10554j
            r11.getClass()
            int r5 = r1.f11164c
            h4.i r12 = r11.f11113n
            h5.z r13 = r2.f6841a
            if (r5 == 0) goto L8a
            o3.a r6 = r0.f10550e
            boolean r3 = r11.a()
            if (r3 != 0) goto L1f
            goto L55
        L1f:
            r3.s r3 = r3.s.a()
            r3.t r3 = r3.f14040a
            r4 = 1
            if (r3 == 0) goto L61
            boolean r7 = r3.f14042b
            if (r7 != 0) goto L2d
            goto L55
        L2d:
            java.util.concurrent.ConcurrentHashMap r7 = r11.f11109j
            java.lang.Object r7 = r7.get(r6)
            o3.a0 r7 = (o3.a0) r7
            if (r7 == 0) goto L5f
            n3.a$e r8 = r7.f11072b
            boolean r9 = r8 instanceof r3.c
            if (r9 != 0) goto L3e
            goto L55
        L3e:
            r3.c r8 = (r3.c) r8
            r3.b1 r9 = r8.f13938v
            if (r9 == 0) goto L46
            r9 = 1
            goto L47
        L46:
            r9 = 0
        L47:
            if (r9 == 0) goto L5f
            boolean r9 = r8.e()
            if (r9 != 0) goto L5f
            r3.f r3 = o3.i0.a(r7, r8, r5)
            if (r3 != 0) goto L57
        L55:
            r3 = 0
            goto L7d
        L57:
            int r8 = r7.f11081l
            int r8 = r8 + r4
            r7.f11081l = r8
            boolean r4 = r3.f13958c
            goto L61
        L5f:
            boolean r4 = r3.f14043c
        L61:
            o3.i0 r14 = new o3.i0
            r7 = 0
            if (r4 == 0) goto L6c
            long r9 = java.lang.System.currentTimeMillis()
            goto L6d
        L6c:
            r9 = r7
        L6d:
            if (r4 == 0) goto L75
            long r3 = android.os.SystemClock.elapsedRealtime()
            r15 = r3
            goto L76
        L75:
            r15 = r7
        L76:
            r3 = r14
            r4 = r11
            r7 = r9
            r9 = r15
            r3.<init>(r4, r5, r6, r7, r9)
        L7d:
            if (r3 == 0) goto L8a
            r12.getClass()
            o3.u r4 = new o3.u
            r4.<init>()
            r13.o(r4, r3)
        L8a:
            o3.u0 r3 = new o3.u0
            c5.v r4 = r0.f10553i
            r5 = r18
            r3.<init>(r5, r1, r2, r4)
            o3.l0 r1 = new o3.l0
            java.util.concurrent.atomic.AtomicInteger r2 = r11.f11108i
            int r2 = r2.get()
            r1.<init>(r3, r2, r0)
            r2 = 4
            android.os.Message r1 = r12.obtainMessage(r2, r1)
            r12.sendMessage(r1)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: n3.c.c(int, o3.m):h5.z");
    }

    @Deprecated
    public c(@NonNull Context context, @NonNull n3.a<O> aVar, @NonNull O o10, @NonNull v vVar) {
        this(context, aVar, o10, new a(vVar, Looper.getMainLooper()));
    }
}
