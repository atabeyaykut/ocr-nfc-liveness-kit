package bc;

import cc.h;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import mc.n;

/* loaded from: classes2.dex */
public class c implements bc.l {

    /* renamed from: d, reason: collision with root package name */
    public static final String f1190d = n.g0(c.class.getCanonicalName(), "");

    /* renamed from: e, reason: collision with root package name */
    public static final a f1191e = new a();

    /* renamed from: a, reason: collision with root package name */
    public final bc.k f1192a;

    /* renamed from: b, reason: collision with root package name */
    public final d f1193b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1194c;

    public static class a extends c {
        public a() {
            super("NO_LOCKS", x5.a.f19150b);
        }

        @Override // bc.c
        public final m k(Object obj, String str) {
            return new m(null, true);
        }
    }

    public static class b<K, V> extends C0046c<K, V> implements bc.a<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c cVar, ConcurrentHashMap concurrentHashMap) {
            super(cVar, concurrentHashMap);
            if (cVar != null) {
            } else {
                a(0);
                throw null;
            }
        }

        public static /* synthetic */ void a(int r82) {
            String str = r82 != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[r82 != 3 ? 3 : 2];
            if (r82 == 1) {
                objArr[0] = "map";
            } else if (r82 == 2) {
                objArr[0] = "computation";
            } else if (r82 != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            }
            if (r82 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            } else {
                objArr[1] = "computeIfAbsent";
            }
            if (r82 == 2) {
                objArr[2] = "computeIfAbsent";
            } else if (r82 != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r82 == 3) {
                throw new IllegalStateException(str2);
            }
        }

        public final V c(K k10, x9.a<? extends V> aVar) throws Throwable {
            V vInvoke = invoke(new e(k10, aVar));
            if (vInvoke != null) {
                return vInvoke;
            }
            a(3);
            throw null;
        }
    }

    /* renamed from: bc.c$c, reason: collision with other inner class name */
    public static class C0046c<K, V> extends j<e<K, V>, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0046c(c cVar, ConcurrentHashMap concurrentHashMap) {
            super(cVar, concurrentHashMap, new bc.f());
            if (cVar != null) {
            } else {
                a(0);
                throw null;
            }
        }

        public static /* synthetic */ void a(int r52) {
            Object[] objArr = new Object[3];
            if (r52 == 1) {
                objArr[0] = "map";
            } else if (r52 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computation";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction";
            if (r52 != 2) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "computeIfAbsent";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    public interface d {

        /* renamed from: a, reason: collision with root package name */
        public static final a f1195a = new a();

        public static class a implements d {
        }
    }

    public static class e<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final K f1196a;

        /* renamed from: b, reason: collision with root package name */
        public final x9.a<? extends V> f1197b;

        public e(K k10, x9.a<? extends V> aVar) {
            this.f1196a = k10;
            this.f1197b = aVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && e.class == obj.getClass() && this.f1196a.equals(((e) obj).f1196a);
        }

        public final int hashCode() {
            return this.f1196a.hashCode();
        }
    }

    public static class f<T> implements bc.j<T> {

        /* renamed from: a, reason: collision with root package name */
        public final c f1198a;

        /* renamed from: b, reason: collision with root package name */
        public final x9.a<? extends T> f1199b;

        /* renamed from: c, reason: collision with root package name */
        public volatile Object f1200c;

        public f(c cVar, x9.a<? extends T> aVar) {
            if (cVar == null) {
                a(0);
                throw null;
            }
            if (aVar == null) {
                a(1);
                throw null;
            }
            this.f1200c = l.NOT_COMPUTED;
            this.f1198a = cVar;
            this.f1199b = aVar;
        }

        public static /* synthetic */ void a(int r82) {
            String str = (r82 == 2 || r82 == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(r82 == 2 || r82 == 3) ? 2 : 3];
            if (r82 == 1) {
                objArr[0] = "computable";
            } else if (r82 == 2 || r82 == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (r82 == 2) {
                objArr[1] = "recursionDetected";
            } else if (r82 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (r82 != 2 && r82 != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r82 != 2 && r82 != 3) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public void b(T t10) {
        }

        public m<T> c(boolean z10) {
            m<T> mVarK = this.f1198a.k(null, "in a lazy value");
            if (mVarK != null) {
                return mVarK;
            }
            a(2);
            throw null;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003d A[Catch: all -> 0x0075, TRY_LEAVE, TryCatch #1 {all -> 0x0075, blocks: (B:7:0x0011, B:9:0x0017, B:13:0x0021, B:15:0x002c, B:17:0x0031, B:19:0x003a, B:20:0x003d, B:25:0x0053, B:27:0x0059, B:29:0x005d, B:30:0x0064, B:31:0x006d, B:32:0x006e, B:33:0x0074, B:21:0x003f), top: B:39:0x0011, inners: #0 }] */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public T invoke() throws java.lang.Throwable {
            /*
                r5 = this;
                java.lang.Object r0 = r5.f1200c
                boolean r1 = r0 instanceof bc.c.l
                if (r1 != 0) goto La
                kc.e.a(r0)
                return r0
            La:
                bc.c r0 = r5.f1198a
                bc.k r0 = r0.f1192a
                r0.lock()
                java.lang.Object r0 = r5.f1200c     // Catch: java.lang.Throwable -> L75
                boolean r1 = r0 instanceof bc.c.l     // Catch: java.lang.Throwable -> L75
                if (r1 != 0) goto L1b
                kc.e.a(r0)     // Catch: java.lang.Throwable -> L75
                goto L4a
            L1b:
                bc.c$l r1 = bc.c.l.COMPUTING
                bc.c$l r2 = bc.c.l.RECURSION_WAS_DETECTED
                if (r0 != r1) goto L2f
                r5.f1200c = r2     // Catch: java.lang.Throwable -> L75
                r3 = 1
                bc.c$m r3 = r5.c(r3)     // Catch: java.lang.Throwable -> L75
                boolean r4 = r3.f1210b     // Catch: java.lang.Throwable -> L75
                if (r4 != 0) goto L2f
                T r0 = r3.f1209a     // Catch: java.lang.Throwable -> L75
                goto L4a
            L2f:
                if (r0 != r2) goto L3d
                r0 = 0
                bc.c$m r0 = r5.c(r0)     // Catch: java.lang.Throwable -> L75
                boolean r2 = r0.f1210b     // Catch: java.lang.Throwable -> L75
                if (r2 != 0) goto L3d
                T r0 = r0.f1209a     // Catch: java.lang.Throwable -> L75
                goto L4a
            L3d:
                r5.f1200c = r1     // Catch: java.lang.Throwable -> L75
                x9.a<? extends T> r0 = r5.f1199b     // Catch: java.lang.Throwable -> L52
                java.lang.Object r0 = r0.invoke()     // Catch: java.lang.Throwable -> L52
                r5.b(r0)     // Catch: java.lang.Throwable -> L52
                r5.f1200c = r0     // Catch: java.lang.Throwable -> L52
            L4a:
                bc.c r1 = r5.f1198a
                bc.k r1 = r1.f1192a
                r1.unlock()
                return r0
            L52:
                r0 = move-exception
                boolean r2 = x5.a.n(r0)     // Catch: java.lang.Throwable -> L75
                if (r2 != 0) goto L6e
                java.lang.Object r2 = r5.f1200c     // Catch: java.lang.Throwable -> L75
                if (r2 != r1) goto L64
                kc.e$b r1 = new kc.e$b     // Catch: java.lang.Throwable -> L75
                r1.<init>(r0)     // Catch: java.lang.Throwable -> L75
                r5.f1200c = r1     // Catch: java.lang.Throwable -> L75
            L64:
                bc.c r1 = r5.f1198a     // Catch: java.lang.Throwable -> L75
                bc.c$d r1 = r1.f1193b     // Catch: java.lang.Throwable -> L75
                bc.c$d$a r1 = (bc.c.d.a) r1     // Catch: java.lang.Throwable -> L75
                r1.getClass()     // Catch: java.lang.Throwable -> L75
                throw r0     // Catch: java.lang.Throwable -> L75
            L6e:
                bc.c$l r1 = bc.c.l.NOT_COMPUTED     // Catch: java.lang.Throwable -> L75
                r5.f1200c = r1     // Catch: java.lang.Throwable -> L75
                java.lang.RuntimeException r0 = (java.lang.RuntimeException) r0     // Catch: java.lang.Throwable -> L75
                throw r0     // Catch: java.lang.Throwable -> L75
            L75:
                r0 = move-exception
                bc.c r1 = r5.f1198a
                bc.k r1 = r1.f1192a
                r1.unlock()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: bc.c.f.invoke():java.lang.Object");
        }
    }

    public static abstract class g<T> extends f<T> {

        /* renamed from: d, reason: collision with root package name */
        public volatile qd.f f1201d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(c cVar, h.b bVar) {
            super(cVar, bVar);
            if (cVar == null) {
                a(0);
                throw null;
            }
            this.f1201d = null;
        }

        public static /* synthetic */ void a(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computable";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // bc.c.f
        public final void b(T t10) {
            this.f1201d = new qd.f(t10);
            try {
                bc.e eVar = (bc.e) this;
                if (t10 != null) {
                    eVar.f.invoke(t10);
                } else {
                    bc.e.a(2);
                    throw null;
                }
            } finally {
                this.f1201d = null;
            }
        }

        @Override // bc.c.f, x9.a
        public T invoke() {
            qd.f fVar = this.f1201d;
            if (fVar != null) {
                if (((Thread) fVar.f13573a) == Thread.currentThread()) {
                    if (((Thread) fVar.f13573a) == Thread.currentThread()) {
                        return (T) fVar.f13574b;
                    }
                    throw new IllegalStateException("No value in this thread (hasValue should be checked before)");
                }
            }
            return (T) super.invoke();
        }
    }

    public static class h<T> extends f<T> implements bc.i<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(c cVar, x9.a<? extends T> aVar) {
            super(cVar, aVar);
            if (cVar == null) {
                a(0);
                throw null;
            }
            if (aVar != null) {
            } else {
                a(1);
                throw null;
            }
        }

        public static /* synthetic */ void a(int r72) {
            String str = r72 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[r72 != 2 ? 3 : 2];
            if (r72 == 1) {
                objArr[0] = "computable";
            } else if (r72 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            }
            if (r72 != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            } else {
                objArr[1] = "invoke";
            }
            if (r72 != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r72 == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // bc.c.f, x9.a
        public final T invoke() {
            T t10 = (T) super.invoke();
            if (t10 != null) {
                return t10;
            }
            a(2);
            throw null;
        }
    }

    public static abstract class i<T> extends g<T> implements bc.i<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(c cVar, h.b bVar) {
            super(cVar, bVar);
            if (cVar != null) {
            } else {
                a(0);
                throw null;
            }
        }

        public static /* synthetic */ void a(int r72) {
            String str = r72 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[r72 != 2 ? 3 : 2];
            if (r72 == 1) {
                objArr[0] = "computable";
            } else if (r72 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (r72 != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (r72 != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r72 == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // bc.c.g, bc.c.f, x9.a
        public final T invoke() {
            T t10 = (T) super.invoke();
            if (t10 != null) {
                return t10;
            }
            a(2);
            throw null;
        }
    }

    public static class j<K, V> implements bc.h<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final c f1202a;

        /* renamed from: b, reason: collision with root package name */
        public final ConcurrentMap<K, Object> f1203b;

        /* renamed from: c, reason: collision with root package name */
        public final x9.l<? super K, ? extends V> f1204c;

        public j(c cVar, ConcurrentHashMap concurrentHashMap, x9.l lVar) {
            if (cVar == null) {
                a(0);
                throw null;
            }
            this.f1202a = cVar;
            this.f1203b = concurrentHashMap;
            this.f1204c = lVar;
        }

        public static /* synthetic */ void a(int r92) {
            String str = (r92 == 3 || r92 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(r92 == 3 || r92 == 4) ? 2 : 3];
            if (r92 == 1) {
                objArr[0] = "map";
            } else if (r92 == 2) {
                objArr[0] = "compute";
            } else if (r92 == 3 || r92 == 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[0] = "storageManager";
            }
            if (r92 == 3) {
                objArr[1] = "recursionDetected";
            } else if (r92 != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[1] = "raceCondition";
            }
            if (r92 != 3 && r92 != 4) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r92 != 3 && r92 != 4) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public final AssertionError b(K k10, Object obj) {
            AssertionError assertionError = new AssertionError("Race condition detected on input " + k10 + ". Old value is " + obj + " under " + this.f1202a);
            c.l(assertionError);
            return assertionError;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x003f A[Catch: all -> 0x00a7, TryCatch #0 {all -> 0x00a7, blocks: (B:10:0x001f, B:13:0x002a, B:15:0x0030, B:17:0x0034, B:19:0x0039, B:20:0x003c, B:22:0x003f, B:24:0x0045, B:26:0x0049, B:27:0x004c, B:28:0x004f, B:30:0x0052, B:48:0x007b, B:52:0x0085, B:54:0x0090, B:55:0x0094, B:56:0x0095, B:57:0x009a, B:58:0x009b, B:59:0x00a0, B:60:0x00a1, B:61:0x00a6, B:37:0x005e, B:41:0x006b, B:45:0x0075, B:46:0x0079), top: B:65:0x001f, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0050  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public V invoke(K r12) throws java.lang.Throwable {
            /*
                r11 = this;
                java.util.concurrent.ConcurrentMap<K, java.lang.Object> r0 = r11.f1203b
                java.lang.Object r1 = r0.get(r12)
                bc.c$l r2 = bc.c.l.COMPUTING
                kc.e$a r3 = kc.e.f8844a
                r4 = 0
                if (r1 == 0) goto L16
                if (r1 == r2) goto L16
                kc.e.a(r1)
                if (r1 != r3) goto L15
                r1 = r4
            L15:
                return r1
            L16:
                bc.c r1 = r11.f1202a
                bc.k r5 = r1.f1192a
                bc.k r6 = r1.f1192a
                r5.lock()
                java.lang.Object r5 = r0.get(r12)     // Catch: java.lang.Throwable -> La7
                bc.c$l r7 = bc.c.l.RECURSION_WAS_DETECTED
                r8 = 3
                java.lang.String r9 = ""
                if (r5 != r2) goto L3d
                bc.c$m r5 = r1.k(r12, r9)     // Catch: java.lang.Throwable -> La7
                if (r5 == 0) goto L39
                boolean r10 = r5.f1210b     // Catch: java.lang.Throwable -> La7
                if (r10 != 0) goto L37
                T r12 = r5.f1209a     // Catch: java.lang.Throwable -> La7
                goto L5a
            L37:
                r5 = r7
                goto L3d
            L39:
                a(r8)     // Catch: java.lang.Throwable -> La7
                throw r4     // Catch: java.lang.Throwable -> La7
            L3d:
                if (r5 != r7) goto L50
                bc.c$m r7 = r1.k(r12, r9)     // Catch: java.lang.Throwable -> La7
                if (r7 == 0) goto L4c
                boolean r8 = r7.f1210b     // Catch: java.lang.Throwable -> La7
                if (r8 != 0) goto L50
                T r12 = r7.f1209a     // Catch: java.lang.Throwable -> La7
                goto L5a
            L4c:
                a(r8)     // Catch: java.lang.Throwable -> La7
                throw r4     // Catch: java.lang.Throwable -> La7
            L50:
                if (r5 == 0) goto L5e
                kc.e.a(r5)     // Catch: java.lang.Throwable -> La7
                if (r5 != r3) goto L58
                goto L59
            L58:
                r4 = r5
            L59:
                r12 = r4
            L5a:
                r6.unlock()
                return r12
            L5e:
                r0.put(r12, r2)     // Catch: java.lang.Throwable -> L7a
                x9.l<? super K, ? extends V> r5 = r11.f1204c     // Catch: java.lang.Throwable -> L7a
                java.lang.Object r5 = r5.invoke(r12)     // Catch: java.lang.Throwable -> L7a
                if (r5 != 0) goto L6a
                goto L6b
            L6a:
                r3 = r5
            L6b:
                java.lang.Object r3 = r0.put(r12, r3)     // Catch: java.lang.Throwable -> L7a
                if (r3 != r2) goto L75
                r6.unlock()
                return r5
            L75:
                java.lang.AssertionError r4 = r11.b(r12, r3)     // Catch: java.lang.Throwable -> L7a
                throw r4     // Catch: java.lang.Throwable -> L7a
            L7a:
                r3 = move-exception
                boolean r5 = x5.a.n(r3)     // Catch: java.lang.Throwable -> La7
                if (r5 != 0) goto La1
                bc.c$d r1 = r1.f1193b
                if (r3 == r4) goto L9b
                kc.e$b r4 = new kc.e$b     // Catch: java.lang.Throwable -> La7
                r4.<init>(r3)     // Catch: java.lang.Throwable -> La7
                java.lang.Object r0 = r0.put(r12, r4)     // Catch: java.lang.Throwable -> La7
                if (r0 == r2) goto L95
                java.lang.AssertionError r12 = r11.b(r12, r0)     // Catch: java.lang.Throwable -> La7
                throw r12     // Catch: java.lang.Throwable -> La7
            L95:
                bc.c$d$a r1 = (bc.c.d.a) r1     // Catch: java.lang.Throwable -> La7
                r1.getClass()     // Catch: java.lang.Throwable -> La7
                throw r3     // Catch: java.lang.Throwable -> La7
            L9b:
                bc.c$d$a r1 = (bc.c.d.a) r1     // Catch: java.lang.Throwable -> La7
                r1.getClass()     // Catch: java.lang.Throwable -> La7
                throw r3     // Catch: java.lang.Throwable -> La7
            La1:
                r0.remove(r12)     // Catch: java.lang.Throwable -> La7
                java.lang.RuntimeException r3 = (java.lang.RuntimeException) r3     // Catch: java.lang.Throwable -> La7
                throw r3     // Catch: java.lang.Throwable -> La7
            La7:
                r12 = move-exception
                r6.unlock()
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: bc.c.j.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static class k<K, V> extends j<K, V> implements bc.g<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(c cVar, ConcurrentHashMap concurrentHashMap, x9.l lVar) {
            super(cVar, concurrentHashMap, lVar);
            if (cVar != null) {
            } else {
                a(0);
                throw null;
            }
        }

        public static /* synthetic */ void a(int r82) {
            String str = r82 != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[r82 != 3 ? 3 : 2];
            if (r82 == 1) {
                objArr[0] = "map";
            } else if (r82 == 2) {
                objArr[0] = "compute";
            } else if (r82 != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            }
            if (r82 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            } else {
                objArr[1] = "invoke";
            }
            if (r82 != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r82 == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // bc.c.j, x9.l
        public final V invoke(K k10) {
            V v10 = (V) super.invoke(k10);
            if (v10 != null) {
                return v10;
            }
            a(3);
            throw null;
        }
    }

    public enum l {
        NOT_COMPUTED,
        COMPUTING,
        RECURSION_WAS_DETECTED
    }

    public static class m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final T f1209a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f1210b;

        public m(T t10, boolean z10) {
            this.f1209a = t10;
            this.f1210b = z10;
        }

        public final String toString() {
            return this.f1210b ? "FALL_THROUGH" : String.valueOf(this.f1209a);
        }
    }

    public c() {
        throw null;
    }

    public c(String str) {
        this(str, new bc.b(0));
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void i(int r13) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bc.c.i(int):void");
    }

    public static void l(AssertionError assertionError) {
        StackTraceElement[] stackTrace = assertionError.getStackTrace();
        int length = stackTrace.length;
        int r22 = 0;
        while (true) {
            if (r22 >= length) {
                r22 = -1;
                break;
            } else if (!stackTrace[r22].getClassName().startsWith(f1190d)) {
                break;
            } else {
                r22++;
            }
        }
        List listSubList = Arrays.asList(stackTrace).subList(r22, length);
        assertionError.setStackTrace((StackTraceElement[]) listSubList.toArray(new StackTraceElement[listSubList.size()]));
    }

    @Override // bc.l
    public final bc.e a(h.b bVar, h.c cVar, h.d dVar) {
        return new bc.e(this, bVar, cVar, dVar);
    }

    @Override // bc.l
    public final C0046c b() {
        return new C0046c(this, new ConcurrentHashMap(3, 1.0f, 2));
    }

    @Override // bc.l
    public final b c() {
        return new b(this, new ConcurrentHashMap(3, 1.0f, 2));
    }

    @Override // bc.l
    public final h d(x9.a aVar) {
        if (aVar != null) {
            return new h(this, aVar);
        }
        i(23);
        throw null;
    }

    @Override // bc.l
    public final j e(x9.l lVar) {
        return new j(this, new ConcurrentHashMap(3, 1.0f, 2), lVar);
    }

    @Override // bc.l
    public final f f(x9.a aVar) {
        return new f(this, aVar);
    }

    @Override // bc.l
    public final k g(x9.l lVar) {
        return new k(this, new ConcurrentHashMap(3, 1.0f, 2), lVar);
    }

    @Override // bc.l
    public final bc.d h(x9.a aVar) {
        return new bc.d(this, aVar);
    }

    public final Object j(ja.j jVar) {
        bc.k kVar = this.f1192a;
        kVar.lock();
        try {
            jVar.invoke();
            kVar.unlock();
            return null;
        } finally {
        }
    }

    public m k(Object obj, String str) {
        String str2;
        StringBuilder sb2 = new StringBuilder("Recursion detected ");
        sb2.append(str);
        if (obj == null) {
            str2 = "";
        } else {
            str2 = "on input: " + obj;
        }
        sb2.append(str2);
        sb2.append(" under ");
        sb2.append(this);
        AssertionError assertionError = new AssertionError(sb2.toString());
        l(assertionError);
        throw assertionError;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("@");
        sb2.append(Integer.toHexString(hashCode()));
        sb2.append(" (");
        return androidx.camera.camera2.internal.c.h(sb2, this.f1194c, ")");
    }

    public c(String str, bc.k kVar) {
        d.a aVar = d.f1195a;
        this.f1192a = kVar;
        this.f1193b = aVar;
        this.f1194c = str;
    }
}
