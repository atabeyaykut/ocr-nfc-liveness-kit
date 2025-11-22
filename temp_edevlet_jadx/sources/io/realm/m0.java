package io.realm;

import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Util;
import io.realm.internal.objectstore.OsKeyPathMapping;
import io.realm.n;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class m0 {

    /* renamed from: e, reason: collision with root package name */
    public static final ArrayList f7711e = new ArrayList();
    public static final ConcurrentLinkedQueue f = new ConcurrentLinkedQueue();

    /* renamed from: b, reason: collision with root package name */
    public final String f7713b;

    /* renamed from: c, reason: collision with root package name */
    public o0 f7714c;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7712a = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f7715d = new AtomicBoolean(false);

    public static class a extends c {

        /* renamed from: c, reason: collision with root package name */
        public io.realm.a f7716c;

        public a(int r12) {
        }

        @Override // io.realm.m0.c
        public final void a() {
            String str = this.f7716c.f7455c.f7746c;
            this.f7720a.set(null);
            this.f7716c = null;
            if (this.f7721b.decrementAndGet() < 0) {
                throw new IllegalStateException(androidx.browser.browseractions.a.a("Global reference counter of Realm", str, " not be negative."));
            }
        }

        @Override // io.realm.m0.c
        public final io.realm.a b() {
            return this.f7716c;
        }

        @Override // io.realm.m0.c
        public final int c() {
            return this.f7721b.get();
        }

        @Override // io.realm.m0.c
        public final boolean d() {
            return this.f7716c != null;
        }

        @Override // io.realm.m0.c
        public final void e(io.realm.a aVar) {
            this.f7716c = aVar;
            this.f7720a.set(0);
            this.f7721b.incrementAndGet();
        }
    }

    public enum b {
        TYPED_REALM,
        DYNAMIC_REALM
    }

    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public final ThreadLocal<Integer> f7720a = new ThreadLocal<>();

        /* renamed from: b, reason: collision with root package name */
        public final AtomicInteger f7721b = new AtomicInteger(0);

        public abstract void a();

        public abstract io.realm.a b();

        public abstract int c();

        public abstract boolean d();

        public abstract void e(io.realm.a aVar);
    }

    public static class d extends c {

        /* renamed from: c, reason: collision with root package name */
        public final ThreadLocal<io.realm.a> f7722c = new ThreadLocal<>();

        @Override // io.realm.m0.c
        public final void a() {
            ThreadLocal<io.realm.a> threadLocal = this.f7722c;
            String str = threadLocal.get().f7455c.f7746c;
            this.f7720a.set(null);
            threadLocal.set(null);
            if (this.f7721b.decrementAndGet() < 0) {
                throw new IllegalStateException(androidx.browser.browseractions.a.a("Global reference counter of Realm", str, " can not be negative."));
            }
        }

        @Override // io.realm.m0.c
        public final io.realm.a b() {
            return this.f7722c.get();
        }

        @Override // io.realm.m0.c
        public final int c() {
            Integer num = this.f7720a.get();
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        @Override // io.realm.m0.c
        public final boolean d() {
            return this.f7722c.get() != null;
        }

        @Override // io.realm.m0.c
        public final void e(io.realm.a aVar) {
            this.f7722c.set(aVar);
            this.f7720a.set(0);
            this.f7721b.incrementAndGet();
        }
    }

    public m0(String str) {
        new HashSet();
        this.f7713b = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.io.File r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "Invalid input stream to the asset file: "
            boolean r1 = r6.exists()
            if (r1 == 0) goto L9
            goto L3a
        L9:
            r1 = 0
            android.content.Context r2 = io.realm.a.f7451g     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L62
            android.content.res.AssetManager r2 = r2.getAssets()     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L62
            java.io.InputStream r2 = r2.open(r7)     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L62
            if (r2 == 0) goto L49
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            r0.<init>(r6)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            r6 = 4096(0x1000, float:5.74E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L46
        L1f:
            int r3 = r2.read(r6)     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L46
            r4 = -1
            if (r3 <= r4) goto L2b
            r4 = 0
            r0.write(r6, r4, r3)     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L46
            goto L1f
        L2b:
            r2.close()     // Catch: java.io.IOException -> L2f
            goto L30
        L2f:
            r1 = move-exception
        L30:
            r0.close()     // Catch: java.io.IOException -> L34
            goto L38
        L34:
            r6 = move-exception
            if (r1 != 0) goto L38
            r1 = r6
        L38:
            if (r1 != 0) goto L3b
        L3a:
            return
        L3b:
            io.realm.exceptions.RealmFileException r6 = new io.realm.exceptions.RealmFileException
            io.realm.exceptions.RealmFileException$Kind r7 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR
            r6.<init>(r7, r1)
            throw r6
        L43:
            r6 = move-exception
            r1 = r0
            goto L7e
        L46:
            r6 = move-exception
            r1 = r0
            goto L64
        L49:
            io.realm.exceptions.RealmFileException r6 = new io.realm.exceptions.RealmFileException     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            io.realm.exceptions.RealmFileException$Kind r3 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            r4.<init>(r0)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            r4.append(r7)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            java.lang.String r0 = r4.toString()     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            r6.<init>(r3, r0)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
            throw r6     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L7d
        L5d:
            r6 = move-exception
            goto L64
        L5f:
            r6 = move-exception
            r7 = r1
            goto L80
        L62:
            r6 = move-exception
            r2 = r1
        L64:
            io.realm.exceptions.RealmFileException r0 = new io.realm.exceptions.RealmFileException     // Catch: java.lang.Throwable -> L7d
            io.realm.exceptions.RealmFileException$Kind r3 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR     // Catch: java.lang.Throwable -> L7d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7d
            r4.<init>()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r5 = "Could not resolve the path to the asset file: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d
            r4.append(r7)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L7d
            r0.<init>(r3, r7, r6)     // Catch: java.lang.Throwable -> L7d
            throw r0     // Catch: java.lang.Throwable -> L7d
        L7d:
            r6 = move-exception
        L7e:
            r7 = r1
            r1 = r2
        L80:
            if (r1 == 0) goto L87
            r1.close()     // Catch: java.io.IOException -> L86
            goto L87
        L86:
        L87:
            if (r7 == 0) goto L8c
            r7.close()     // Catch: java.io.IOException -> L8c
        L8c:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.m0.a(java.io.File, java.lang.String):void");
    }

    public static m0 d(String str, boolean z10) {
        m0 m0Var;
        ArrayList arrayList = f7711e;
        synchronized (arrayList) {
            Iterator it = arrayList.iterator();
            m0Var = null;
            while (it.hasNext()) {
                m0 m0Var2 = (m0) ((WeakReference) it.next()).get();
                if (m0Var2 == null) {
                    it.remove();
                } else if (m0Var2.f7713b.equals(str)) {
                    m0Var = m0Var2;
                }
            }
            if (m0Var == null && z10) {
                m0Var = new m0(str);
                f7711e.add(new WeakReference(m0Var));
            }
        }
        return m0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized <E extends io.realm.a> E b(o0 o0Var, Class<E> cls, OsSharedRealm.a aVar) {
        E e10;
        n nVar;
        c cVarE = e(cls, aVar);
        boolean z10 = f() == 0;
        if (z10) {
            File file = Util.c(o0Var.f7747d) ^ true ? new File(o0Var.f7744a, o0Var.f7745b) : null;
            io.realm.internal.j.f7665a.getClass();
            boolean z11 = !Util.c(null);
            if (file != null || z11) {
                OsObjectStore.a(o0Var, new l0(file, o0Var, z11));
            }
            new File(o0Var.f7746c).exists();
            this.f7714c = o0Var;
        } else {
            g(o0Var);
        }
        if (!cVarE.d()) {
            if (cls == g0.class) {
                g0 g0Var = new g0(this, aVar);
                u uVar = g0Var.f7539j;
                uVar.getClass();
                uVar.f7912e = new OsKeyPathMapping(uVar.f.f7457e.getNativePtr());
                nVar = g0Var;
            } else {
                if (cls != n.class) {
                    throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
                }
                nVar = new n(this, aVar);
            }
            cVarE.e(nVar);
        }
        ThreadLocal<Integer> threadLocal = cVarE.f7720a;
        Integer num = threadLocal.get();
        threadLocal.set(Integer.valueOf(num != null ? 1 + num.intValue() : 1));
        e10 = (E) cVarE.b();
        if (z10) {
            io.realm.internal.j jVar = io.realm.internal.j.f7666b;
            if (jVar == null) {
                jVar = io.realm.internal.j.f7665a;
            }
            new g0(e10.f7457e);
            jVar.getClass();
            if (!o0Var.f7754l) {
                e10.m();
            }
        }
        return e10;
    }

    public final synchronized void c(n.a aVar) {
        aVar.a(f());
    }

    public final <E extends io.realm.a> c e(Class<E> cls, OsSharedRealm.a aVar) {
        b bVar;
        if (cls == g0.class) {
            bVar = b.TYPED_REALM;
        } else {
            if (cls != n.class) {
                throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
            }
            bVar = b.DYNAMIC_REALM;
        }
        i9.a aVar2 = new i9.a(bVar, aVar);
        HashMap map = this.f7712a;
        c cVar = (c) map.get(aVar2);
        if (cVar != null) {
            return cVar;
        }
        c dVar = aVar.equals(OsSharedRealm.a.f7624c) ? new d() : new a(0);
        map.put(aVar2, dVar);
        return dVar;
    }

    public final int f() {
        Iterator it = this.f7712a.values().iterator();
        int r12 = 0;
        while (it.hasNext()) {
            r12 += ((c) it.next()).f7721b.get();
        }
        return r12;
    }

    public final void g(o0 o0Var) {
        if (this.f7714c.equals(o0Var)) {
            return;
        }
        byte[] bArr = this.f7714c.f7748e;
        byte[] bArrCopyOf = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        byte[] bArr2 = o0Var.f7748e;
        if (!Arrays.equals(bArrCopyOf, bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : null)) {
            throw new IllegalArgumentException("Wrong key used to decrypt Realm.");
        }
        this.f7714c.getClass();
        throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.f7714c + "\n\nNew configuration: \n" + o0Var);
    }
}
