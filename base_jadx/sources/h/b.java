package h;

import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import ed.b0;
import ed.t;
import ed.v;
import ed.z;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.h;
import l9.m;
import mc.j;
import mc.n;
import nc.a0;
import r9.i;
import x9.p;

/* loaded from: classes.dex */
public final class b implements Closeable, Flushable {

    /* renamed from: s, reason: collision with root package name */
    public static final mc.d f6738s = new mc.d("[a-z0-9_-]{1,120}");

    /* renamed from: a, reason: collision with root package name */
    public final z f6739a;

    /* renamed from: b, reason: collision with root package name */
    public final long f6740b;

    /* renamed from: c, reason: collision with root package name */
    public final z f6741c;

    /* renamed from: d, reason: collision with root package name */
    public final z f6742d;

    /* renamed from: e, reason: collision with root package name */
    public final z f6743e;
    public final LinkedHashMap<String, C0117b> f;

    /* renamed from: g, reason: collision with root package name */
    public final kotlinx.coroutines.internal.f f6744g;

    /* renamed from: h, reason: collision with root package name */
    public long f6745h;

    /* renamed from: j, reason: collision with root package name */
    public int f6746j;

    /* renamed from: k, reason: collision with root package name */
    public ed.f f6747k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6748l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6749m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f6750n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f6751p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f6752q;

    /* renamed from: r, reason: collision with root package name */
    public final h.c f6753r;

    public final class a {

        /* renamed from: a, reason: collision with root package name */
        public final C0117b f6754a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f6755b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean[] f6756c;

        public a(C0117b c0117b) {
            this.f6754a = c0117b;
            b.this.getClass();
            this.f6756c = new boolean[2];
        }

        public final void a(boolean z10) {
            b bVar = b.this;
            synchronized (bVar) {
                if (!(!this.f6755b)) {
                    throw new IllegalStateException("editor is closed".toString());
                }
                if (h.a(this.f6754a.f6763g, this)) {
                    b.a(bVar, this, z10);
                }
                this.f6755b = true;
                m mVar = m.f9594a;
            }
        }

        public final z b(int r52) {
            z zVar;
            b bVar = b.this;
            synchronized (bVar) {
                if (!(!this.f6755b)) {
                    throw new IllegalStateException("editor is closed".toString());
                }
                this.f6756c[r52] = true;
                z zVar2 = this.f6754a.f6761d.get(r52);
                h.c cVar = bVar.f6753r;
                z zVar3 = zVar2;
                if (!cVar.f(zVar3)) {
                    u.c.a(cVar.k(zVar3));
                }
                zVar = zVar2;
            }
            return zVar;
        }
    }

    /* renamed from: h.b$b, reason: collision with other inner class name */
    public final class C0117b {

        /* renamed from: a, reason: collision with root package name */
        public final String f6758a;

        /* renamed from: b, reason: collision with root package name */
        public final long[] f6759b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList<z> f6760c;

        /* renamed from: d, reason: collision with root package name */
        public final ArrayList<z> f6761d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f6762e;
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public a f6763g;

        /* renamed from: h, reason: collision with root package name */
        public int f6764h;

        public C0117b(String str) {
            this.f6758a = str;
            b.this.getClass();
            this.f6759b = new long[2];
            b.this.getClass();
            this.f6760c = new ArrayList<>(2);
            b.this.getClass();
            this.f6761d = new ArrayList<>(2);
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            b.this.getClass();
            for (int r6 = 0; r6 < 2; r6++) {
                sb2.append(r6);
                this.f6760c.add(b.this.f6739a.q(sb2.toString()));
                sb2.append(".tmp");
                this.f6761d.add(b.this.f6739a.q(sb2.toString()));
                sb2.setLength(length);
            }
        }

        public final c a() {
            if (!this.f6762e || this.f6763g != null || this.f) {
                return null;
            }
            ArrayList<z> arrayList = this.f6760c;
            int size = arrayList.size();
            int r32 = 0;
            while (true) {
                b bVar = b.this;
                if (r32 >= size) {
                    this.f6764h++;
                    return bVar.new c(this);
                }
                int r52 = r32 + 1;
                if (!bVar.f6753r.f(arrayList.get(r32))) {
                    try {
                        bVar.m(this);
                    } catch (IOException unused) {
                    }
                    return null;
                }
                r32 = r52;
            }
        }
    }

    public final class c implements Closeable {

        /* renamed from: a, reason: collision with root package name */
        public final C0117b f6766a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f6767b;

        public c(C0117b c0117b) {
            this.f6766a = c0117b;
        }

        public final z a(int r22) {
            if (!this.f6767b) {
                return this.f6766a.f6760c.get(r22);
            }
            throw new IllegalStateException("snapshot is closed".toString());
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f6767b) {
                return;
            }
            this.f6767b = true;
            b bVar = b.this;
            synchronized (bVar) {
                C0117b c0117b = this.f6766a;
                int r22 = c0117b.f6764h - 1;
                c0117b.f6764h = r22;
                if (r22 == 0 && c0117b.f) {
                    mc.d dVar = b.f6738s;
                    bVar.m(c0117b);
                }
                m mVar = m.f9594a;
            }
        }
    }

    @r9.e(c = "coil.disk.DiskLruCache$launchCleanup$1", f = "DiskLruCache.kt", l = {}, m = "invokeSuspend")
    public static final class d extends i implements p<a0, p9.d<? super m>, Object> {
        public d(p9.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return b.this.new d(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((d) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            b bVar = b.this;
            synchronized (bVar) {
                if (!bVar.f6749m || bVar.f6750n) {
                    return m.f9594a;
                }
                try {
                    bVar.n();
                } catch (IOException unused) {
                    bVar.f6751p = true;
                }
                try {
                    if (bVar.f6746j >= 2000) {
                        bVar.p();
                    }
                } catch (IOException unused2) {
                    bVar.f6752q = true;
                    bVar.f6747k = v.a(new ed.d());
                }
                return m.f9594a;
            }
        }
    }

    public b(t tVar, z zVar, kotlinx.coroutines.scheduling.b bVar, long j10) {
        this.f6739a = zVar;
        this.f6740b = j10;
        if (!(j10 > 0)) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        this.f6741c = zVar.q("journal");
        this.f6742d = zVar.q("journal.tmp");
        this.f6743e = zVar.q("journal.bkp");
        this.f = new LinkedHashMap<>(0, 0.75f, true);
        this.f6744g = b8.f.f(d0.a().plus(bVar.limitedParallelism(1)));
        this.f6753r = new h.c(tVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0112 A[Catch: all -> 0x0123, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x000f, B:11:0x0016, B:13:0x001e, B:15:0x002e, B:19:0x0038, B:21:0x0052, B:25:0x006f, B:29:0x0084, B:28:0x0080, B:22:0x0058, B:24:0x0068, B:33:0x00a4, B:35:0x00ab, B:36:0x00af, B:38:0x00be, B:41:0x00c3, B:45:0x00f9, B:47:0x0109, B:51:0x0112, B:42:0x00d8, B:44:0x00ed, B:32:0x0093, B:54:0x0117, B:55:0x0122), top: B:59:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(h.b r10, h.b.a r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h.b.a(h.b, h.b$a, boolean):void");
    }

    public static void o(String str) {
        if (f6738s.a(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    public final void b() {
        if (!(!this.f6750n)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    public final synchronized a c(String str) {
        b();
        o(str);
        e();
        C0117b c0117b = this.f.get(str);
        if ((c0117b == null ? null : c0117b.f6763g) != null) {
            return null;
        }
        if (c0117b != null && c0117b.f6764h != 0) {
            return null;
        }
        if (!this.f6751p && !this.f6752q) {
            ed.f fVar = this.f6747k;
            h.c(fVar);
            fVar.S("DIRTY");
            fVar.writeByte(32);
            fVar.S(str);
            fVar.writeByte(10);
            fVar.flush();
            if (this.f6748l) {
                return null;
            }
            if (c0117b == null) {
                c0117b = new C0117b(str);
                this.f.put(str, c0117b);
            }
            a aVar = new a(c0117b);
            c0117b.f6763g = aVar;
            return aVar;
        }
        f();
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f6749m && !this.f6750n) {
            int r22 = 0;
            Object[] array = this.f.values().toArray(new C0117b[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            C0117b[] c0117bArr = (C0117b[]) array;
            int length = c0117bArr.length;
            while (r22 < length) {
                C0117b c0117b = c0117bArr[r22];
                r22++;
                a aVar = c0117b.f6763g;
                if (aVar != null) {
                    C0117b c0117b2 = aVar.f6754a;
                    if (h.a(c0117b2.f6763g, aVar)) {
                        c0117b2.f = true;
                    }
                }
            }
            n();
            b8.f.m(this.f6744g);
            ed.f fVar = this.f6747k;
            h.c(fVar);
            fVar.close();
            this.f6747k = null;
            this.f6750n = true;
            return;
        }
        this.f6750n = true;
    }

    public final synchronized c d(String str) {
        b();
        o(str);
        e();
        C0117b c0117b = this.f.get(str);
        c cVarA = c0117b == null ? null : c0117b.a();
        if (cVarA == null) {
            return null;
        }
        boolean z10 = true;
        this.f6746j++;
        ed.f fVar = this.f6747k;
        h.c(fVar);
        fVar.S("READ");
        fVar.writeByte(32);
        fVar.S(str);
        fVar.writeByte(10);
        if (this.f6746j < 2000) {
            z10 = false;
        }
        if (z10) {
            f();
        }
        return cVarA;
    }

    public final synchronized void e() {
        if (this.f6749m) {
            return;
        }
        this.f6753r.e(this.f6742d);
        if (this.f6753r.f(this.f6743e)) {
            if (this.f6753r.f(this.f6741c)) {
                this.f6753r.e(this.f6743e);
            } else {
                this.f6753r.b(this.f6743e, this.f6741c);
            }
        }
        if (this.f6753r.f(this.f6741c)) {
            try {
                j();
                i();
                this.f6749m = true;
                return;
            } catch (IOException unused) {
                try {
                    close();
                    b8.f.y(this.f6753r, this.f6739a);
                    this.f6750n = false;
                } catch (Throwable th2) {
                    this.f6750n = false;
                    throw th2;
                }
            }
        }
        p();
        this.f6749m = true;
    }

    public final void f() {
        c5.v.C(this.f6744g, null, 0, new d(null), 3);
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.f6749m) {
            b();
            n();
            ed.f fVar = this.f6747k;
            h.c(fVar);
            fVar.flush();
        }
    }

    public final b0 g() {
        h.c cVar = this.f6753r;
        cVar.getClass();
        z file = this.f6741c;
        h.f(file, "file");
        return v.a(new e(cVar.f5337b.a(file), new h.d(this)));
    }

    public final void i() throws IOException {
        Iterator<C0117b> it = this.f.values().iterator();
        long j10 = 0;
        while (it.hasNext()) {
            C0117b next = it.next();
            int r6 = 0;
            if (next.f6763g == null) {
                while (r6 < 2) {
                    j10 += next.f6759b[r6];
                    r6++;
                }
            } else {
                next.f6763g = null;
                while (r6 < 2) {
                    z zVar = next.f6760c.get(r6);
                    h.c cVar = this.f6753r;
                    cVar.e(zVar);
                    cVar.e(next.f6761d.get(r6));
                    r6++;
                }
                it.remove();
            }
        }
        this.f6745h = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j() throws java.lang.Throwable {
        /*
            r13 = this;
            java.lang.String r0 = ", "
            java.lang.String r1 = "unexpected journal header: ["
            h.c r2 = r13.f6753r
            ed.z r3 = r13.f6741c
            ed.j0 r2 = r2.l(r3)
            ed.d0 r2 = ed.v.b(r2)
            r3 = 0
            java.lang.String r4 = r2.a0()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r5 = r2.a0()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r6 = r2.a0()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = r2.a0()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r8 = r2.a0()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r9 = "libcore.io.DiskLruCache"
            boolean r9 = kotlin.jvm.internal.h.a(r9, r4)     // Catch: java.lang.Throwable -> Lab
            if (r9 == 0) goto L7c
            java.lang.String r9 = "1"
            boolean r9 = kotlin.jvm.internal.h.a(r9, r5)     // Catch: java.lang.Throwable -> Lab
            if (r9 == 0) goto L7c
            r9 = 1
            java.lang.String r10 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> Lab
            boolean r10 = kotlin.jvm.internal.h.a(r10, r6)     // Catch: java.lang.Throwable -> Lab
            if (r10 == 0) goto L7c
            r10 = 2
            java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> Lab
            boolean r10 = kotlin.jvm.internal.h.a(r10, r7)     // Catch: java.lang.Throwable -> Lab
            if (r10 == 0) goto L7c
            int r10 = r8.length()     // Catch: java.lang.Throwable -> Lab
            r11 = 0
            if (r10 <= 0) goto L53
            goto L54
        L53:
            r9 = 0
        L54:
            if (r9 != 0) goto L7c
        L56:
            java.lang.String r0 = r2.a0()     // Catch: java.io.EOFException -> L60 java.lang.Throwable -> Lab
            r13.k(r0)     // Catch: java.io.EOFException -> L60 java.lang.Throwable -> Lab
            int r11 = r11 + 1
            goto L56
        L60:
            java.util.LinkedHashMap<java.lang.String, h.b$b> r0 = r13.f     // Catch: java.lang.Throwable -> Lab
            int r0 = r0.size()     // Catch: java.lang.Throwable -> Lab
            int r11 = r11 - r0
            r13.f6746j = r11     // Catch: java.lang.Throwable -> Lab
            boolean r0 = r2.I()     // Catch: java.lang.Throwable -> Lab
            if (r0 != 0) goto L73
            r13.p()     // Catch: java.lang.Throwable -> Lab
            goto L79
        L73:
            ed.b0 r0 = r13.g()     // Catch: java.lang.Throwable -> Lab
            r13.f6747k = r0     // Catch: java.lang.Throwable -> Lab
        L79:
            l9.m r0 = l9.m.f9594a     // Catch: java.lang.Throwable -> Lab
            goto Laf
        L7c:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> Lab
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lab
            r10.<init>(r1)     // Catch: java.lang.Throwable -> Lab
            r10.append(r4)     // Catch: java.lang.Throwable -> Lab
            r10.append(r0)     // Catch: java.lang.Throwable -> Lab
            r10.append(r5)     // Catch: java.lang.Throwable -> Lab
            r10.append(r0)     // Catch: java.lang.Throwable -> Lab
            r10.append(r6)     // Catch: java.lang.Throwable -> Lab
            r10.append(r0)     // Catch: java.lang.Throwable -> Lab
            r10.append(r7)     // Catch: java.lang.Throwable -> Lab
            r10.append(r0)     // Catch: java.lang.Throwable -> Lab
            r10.append(r8)     // Catch: java.lang.Throwable -> Lab
            r0 = 93
            r10.append(r0)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r0 = r10.toString()     // Catch: java.lang.Throwable -> Lab
            r9.<init>(r0)     // Catch: java.lang.Throwable -> Lab
            throw r9     // Catch: java.lang.Throwable -> Lab
        Lab:
            r0 = move-exception
            r12 = r3
            r3 = r0
            r0 = r12
        Laf:
            r2.close()     // Catch: java.lang.Throwable -> Lb3
            goto Lbb
        Lb3:
            r1 = move-exception
            if (r3 != 0) goto Lb8
            r3 = r1
            goto Lbb
        Lb8:
            b8.f.k(r3, r1)
        Lbb:
            if (r3 != 0) goto Lc1
            kotlin.jvm.internal.h.c(r0)
            return
        Lc1:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: h.b.j():void");
    }

    public final void k(String str) throws IOException {
        String strSubstring;
        int r12 = 0;
        int r32 = n.M(str, ' ', 0, false, 6);
        if (r32 == -1) {
            throw new IOException(h.k(str, "unexpected journal line: "));
        }
        int r6 = r32 + 1;
        int r82 = n.M(str, ' ', r6, false, 4);
        LinkedHashMap<String, C0117b> linkedHashMap = this.f;
        if (r82 == -1) {
            strSubstring = str.substring(r6);
            h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
            if (r32 == 6 && j.D(str, "REMOVE", false)) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(r6, r82);
            h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        C0117b c0117b = linkedHashMap.get(strSubstring);
        if (c0117b == null) {
            c0117b = new C0117b(strSubstring);
            linkedHashMap.put(strSubstring, c0117b);
        }
        C0117b c0117b2 = c0117b;
        if (r82 == -1 || r32 != 5 || !j.D(str, "CLEAN", false)) {
            if (r82 == -1 && r32 == 5 && j.D(str, "DIRTY", false)) {
                c0117b2.f6763g = new a(c0117b2);
                return;
            } else {
                if (r82 != -1 || r32 != 4 || !j.D(str, "READ", false)) {
                    throw new IOException(h.k(str, "unexpected journal line: "));
                }
                return;
            }
        }
        String strSubstring2 = str.substring(r82 + 1);
        h.e(strSubstring2, "this as java.lang.String).substring(startIndex)");
        List listX = n.X(strSubstring2, new char[]{' '});
        c0117b2.f6762e = true;
        c0117b2.f6763g = null;
        int size = listX.size();
        b.this.getClass();
        if (size != 2) {
            throw new IOException(h.k(listX, "unexpected journal line: "));
        }
        try {
            int size2 = listX.size();
            while (r12 < size2) {
                int r33 = r12 + 1;
                c0117b2.f6759b[r12] = Long.parseLong((String) listX.get(r12));
                r12 = r33;
            }
        } catch (NumberFormatException unused) {
            throw new IOException(h.k(listX, "unexpected journal line: "));
        }
    }

    public final void m(C0117b c0117b) throws IOException {
        a aVar;
        ed.f fVar;
        int r02 = c0117b.f6764h;
        String str = c0117b.f6758a;
        if (r02 > 0 && (fVar = this.f6747k) != null) {
            fVar.S("DIRTY");
            fVar.writeByte(32);
            fVar.S(str);
            fVar.writeByte(10);
            fVar.flush();
        }
        if (c0117b.f6764h > 0 || (aVar = c0117b.f6763g) != null) {
            c0117b.f = true;
            return;
        }
        if (aVar != null) {
            C0117b c0117b2 = aVar.f6754a;
            if (h.a(c0117b2.f6763g, aVar)) {
                c0117b2.f = true;
            }
        }
        for (int r52 = 0; r52 < 2; r52++) {
            this.f6753r.e(c0117b.f6760c.get(r52));
            long j10 = this.f6745h;
            long[] jArr = c0117b.f6759b;
            this.f6745h = j10 - jArr[r52];
            jArr[r52] = 0;
        }
        this.f6746j++;
        ed.f fVar2 = this.f6747k;
        if (fVar2 != null) {
            fVar2.S("REMOVE");
            fVar2.writeByte(32);
            fVar2.S(str);
            fVar2.writeByte(10);
        }
        this.f.remove(str);
        if (this.f6746j >= 2000) {
            f();
        }
    }

    public final void n() throws IOException {
        boolean z10;
        do {
            z10 = false;
            if (this.f6745h <= this.f6740b) {
                this.f6751p = false;
                return;
            }
            Iterator<C0117b> it = this.f.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C0117b next = it.next();
                if (!next.f) {
                    m(next);
                    z10 = true;
                    break;
                }
            }
        } while (z10);
    }

    public final synchronized void p() {
        m mVar;
        ed.f fVar = this.f6747k;
        if (fVar != null) {
            fVar.close();
        }
        b0 b0VarA = v.a(this.f6753r.k(this.f6742d));
        Throwable th2 = null;
        try {
            b0VarA.S("libcore.io.DiskLruCache");
            b0VarA.writeByte(10);
            b0VarA.S("1");
            b0VarA.writeByte(10);
            b0VarA.m0(1);
            b0VarA.writeByte(10);
            b0VarA.m0(2);
            b0VarA.writeByte(10);
            b0VarA.writeByte(10);
            for (C0117b c0117b : this.f.values()) {
                if (c0117b.f6763g != null) {
                    b0VarA.S("DIRTY");
                    b0VarA.writeByte(32);
                    b0VarA.S(c0117b.f6758a);
                } else {
                    b0VarA.S("CLEAN");
                    b0VarA.writeByte(32);
                    b0VarA.S(c0117b.f6758a);
                    long[] jArr = c0117b.f6759b;
                    int length = jArr.length;
                    int r82 = 0;
                    while (r82 < length) {
                        long j10 = jArr[r82];
                        r82++;
                        b0VarA.writeByte(32);
                        b0VarA.m0(j10);
                    }
                }
                b0VarA.writeByte(10);
            }
            mVar = m.f9594a;
        } catch (Throwable th3) {
            mVar = null;
            th2 = th3;
        }
        try {
            b0VarA.close();
        } catch (Throwable th4) {
            if (th2 == null) {
                th2 = th4;
            } else {
                b8.f.k(th2, th4);
            }
        }
        if (th2 != null) {
            throw th2;
        }
        h.c(mVar);
        if (this.f6753r.f(this.f6741c)) {
            this.f6753r.b(this.f6741c, this.f6743e);
            this.f6753r.b(this.f6742d, this.f6741c);
            this.f6753r.e(this.f6743e);
        } else {
            this.f6753r.b(this.f6742d, this.f6741c);
        }
        this.f6747k = g();
        this.f6746j = 0;
        this.f6748l = false;
        this.f6752q = false;
    }
}
