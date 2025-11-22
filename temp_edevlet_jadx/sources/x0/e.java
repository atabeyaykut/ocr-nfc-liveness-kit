package x0;

import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.util.List;
import x0.h;

/* loaded from: classes.dex */
public final class e implements h, d.a<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final List<v0.f> f18948a;

    /* renamed from: b, reason: collision with root package name */
    public final i<?> f18949b;

    /* renamed from: c, reason: collision with root package name */
    public final h.a f18950c;

    /* renamed from: d, reason: collision with root package name */
    public int f18951d = -1;

    /* renamed from: e, reason: collision with root package name */
    public v0.f f18952e;
    public List<b1.o<File, ?>> f;

    /* renamed from: g, reason: collision with root package name */
    public int f18953g;

    /* renamed from: h, reason: collision with root package name */
    public volatile o.a<?> f18954h;

    /* renamed from: j, reason: collision with root package name */
    public File f18955j;

    public e(List<v0.f> list, i<?> iVar, h.a aVar) {
        this.f18948a = list;
        this.f18949b = iVar;
        this.f18950c = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
    
        r8.f18954h = null;
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r0 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        if (r8.f18953g >= r8.f.size()) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0027, code lost:
    
        if (r3 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
    
        r3 = r8.f;
        r4 = r8.f18953g;
        r8.f18953g = r4 + 1;
        r3 = r3.get(r4);
        r4 = r8.f18955j;
        r5 = r8.f18949b;
        r8.f18954h = r3.b(r4, r5.f18965e, r5.f, r5.f18968i);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
    
        if (r8.f18954h == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
    
        if (r8.f18949b.c(r8.f18954h.f1051c.a()) == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        if (r3 == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        r8.f18954h.f1051c.e(r8.f18949b.f18974o, r8);
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006d, code lost:
    
        return r0;
     */
    @Override // x0.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            r8 = this;
        L0:
            java.util.List<b1.o<java.io.File, ?>> r0 = r8.f     // Catch: java.lang.Throwable -> Lb3
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L6e
            int r3 = r8.f18953g     // Catch: java.lang.Throwable -> Lb3
            int r0 = r0.size()     // Catch: java.lang.Throwable -> Lb3
            if (r3 >= r0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 != 0) goto L14
            goto L6e
        L14:
            r0 = 0
            r8.f18954h = r0     // Catch: java.lang.Throwable -> Lb3
            r0 = 0
        L18:
            if (r0 != 0) goto L6d
            int r3 = r8.f18953g     // Catch: java.lang.Throwable -> Lb3
            java.util.List<b1.o<java.io.File, ?>> r4 = r8.f     // Catch: java.lang.Throwable -> Lb3
            int r4 = r4.size()     // Catch: java.lang.Throwable -> Lb3
            if (r3 >= r4) goto L26
            r3 = 1
            goto L27
        L26:
            r3 = 0
        L27:
            if (r3 == 0) goto L6d
            java.util.List<b1.o<java.io.File, ?>> r3 = r8.f     // Catch: java.lang.Throwable -> Lb3
            int r4 = r8.f18953g     // Catch: java.lang.Throwable -> Lb3
            int r5 = r4 + 1
            r8.f18953g = r5     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r3 = r3.get(r4)     // Catch: java.lang.Throwable -> Lb3
            b1.o r3 = (b1.o) r3     // Catch: java.lang.Throwable -> Lb3
            java.io.File r4 = r8.f18955j     // Catch: java.lang.Throwable -> Lb3
            x0.i<?> r5 = r8.f18949b     // Catch: java.lang.Throwable -> Lb3
            int r6 = r5.f18965e     // Catch: java.lang.Throwable -> Lb3
            int r7 = r5.f     // Catch: java.lang.Throwable -> Lb3
            v0.h r5 = r5.f18968i     // Catch: java.lang.Throwable -> Lb3
            b1.o$a r3 = r3.b(r4, r6, r7, r5)     // Catch: java.lang.Throwable -> Lb3
            r8.f18954h = r3     // Catch: java.lang.Throwable -> Lb3
            b1.o$a<?> r3 = r8.f18954h     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto L18
            x0.i<?> r3 = r8.f18949b     // Catch: java.lang.Throwable -> Lb3
            b1.o$a<?> r4 = r8.f18954h     // Catch: java.lang.Throwable -> Lb3
            com.bumptech.glide.load.data.d<Data> r4 = r4.f1051c     // Catch: java.lang.Throwable -> Lb3
            java.lang.Class r4 = r4.a()     // Catch: java.lang.Throwable -> Lb3
            x0.u r3 = r3.c(r4)     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto L5d
            r3 = 1
            goto L5e
        L5d:
            r3 = 0
        L5e:
            if (r3 == 0) goto L18
            b1.o$a<?> r0 = r8.f18954h     // Catch: java.lang.Throwable -> Lb3
            com.bumptech.glide.load.data.d<Data> r0 = r0.f1051c     // Catch: java.lang.Throwable -> Lb3
            x0.i<?> r3 = r8.f18949b     // Catch: java.lang.Throwable -> Lb3
            com.bumptech.glide.j r3 = r3.f18974o     // Catch: java.lang.Throwable -> Lb3
            r0.e(r3, r8)     // Catch: java.lang.Throwable -> Lb3
            r0 = 1
            goto L18
        L6d:
            return r0
        L6e:
            int r0 = r8.f18951d     // Catch: java.lang.Throwable -> Lb3
            int r0 = r0 + r2
            r8.f18951d = r0     // Catch: java.lang.Throwable -> Lb3
            java.util.List<v0.f> r2 = r8.f18948a     // Catch: java.lang.Throwable -> Lb3
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Lb3
            if (r0 < r2) goto L7c
            return r1
        L7c:
            java.util.List<v0.f> r0 = r8.f18948a     // Catch: java.lang.Throwable -> Lb3
            int r2 = r8.f18951d     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> Lb3
            v0.f r0 = (v0.f) r0     // Catch: java.lang.Throwable -> Lb3
            x0.f r2 = new x0.f     // Catch: java.lang.Throwable -> Lb3
            x0.i<?> r3 = r8.f18949b     // Catch: java.lang.Throwable -> Lb3
            v0.f r4 = r3.f18973n     // Catch: java.lang.Throwable -> Lb3
            r2.<init>(r0, r4)     // Catch: java.lang.Throwable -> Lb3
            x0.j$d r3 = r3.f18967h     // Catch: java.lang.Throwable -> Lb3
            x0.m$c r3 = (x0.m.c) r3     // Catch: java.lang.Throwable -> Lb3
            z0.a r3 = r3.a()     // Catch: java.lang.Throwable -> Lb3
            java.io.File r2 = r3.g(r2)     // Catch: java.lang.Throwable -> Lb3
            r8.f18955j = r2     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L0
            r8.f18952e = r0     // Catch: java.lang.Throwable -> Lb3
            x0.i<?> r0 = r8.f18949b     // Catch: java.lang.Throwable -> Lb3
            com.bumptech.glide.h r0 = r0.f18963c     // Catch: java.lang.Throwable -> Lb3
            com.bumptech.glide.k r0 = r0.a()     // Catch: java.lang.Throwable -> Lb3
            java.util.List r0 = r0.g(r2)     // Catch: java.lang.Throwable -> Lb3
            r8.f = r0     // Catch: java.lang.Throwable -> Lb3
            r8.f18953g = r1     // Catch: java.lang.Throwable -> Lb3
            goto L0
        Lb3:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: x0.e.a():boolean");
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void c(@NonNull Exception exc) {
        this.f18950c.q(this.f18952e, exc, this.f18954h.f1051c, v0.a.DATA_DISK_CACHE);
    }

    @Override // x0.h
    public final void cancel() {
        o.a<?> aVar = this.f18954h;
        if (aVar != null) {
            aVar.f1051c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void f(Object obj) {
        this.f18950c.n(this.f18952e, obj, this.f18954h.f1051c, v0.a.DATA_DISK_CACHE, this.f18952e);
    }
}
