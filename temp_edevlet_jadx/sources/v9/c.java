package v9;

import androidx.camera.core.impl.utils.f;
import j7.p;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;
import lc.h;

/* loaded from: classes2.dex */
public final class c implements h<File> {

    /* renamed from: a, reason: collision with root package name */
    public final File f18302a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18303b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18304c;

    public static abstract class a extends AbstractC0288c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File rootDir) {
            super(rootDir);
            kotlin.jvm.internal.h.f(rootDir, "rootDir");
        }
    }

    public final class b extends m9.b<File> {

        /* renamed from: c, reason: collision with root package name */
        public final ArrayDeque<AbstractC0288c> f18305c;

        public final class a extends a {

            /* renamed from: b, reason: collision with root package name */
            public boolean f18307b;

            /* renamed from: c, reason: collision with root package name */
            public File[] f18308c;

            /* renamed from: d, reason: collision with root package name */
            public int f18309d;

            /* renamed from: e, reason: collision with root package name */
            public boolean f18310e;
            public final /* synthetic */ b f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, File rootDir) {
                super(rootDir);
                kotlin.jvm.internal.h.f(rootDir, "rootDir");
                this.f = bVar;
            }

            @Override // v9.c.AbstractC0288c
            public final File a() {
                boolean z10 = this.f18310e;
                File file = this.f18316a;
                b bVar = this.f;
                if (!z10 && this.f18308c == null) {
                    c.this.getClass();
                    File[] fileArrListFiles = file.listFiles();
                    this.f18308c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        c.this.getClass();
                        this.f18310e = true;
                    }
                }
                File[] fileArr = this.f18308c;
                if (fileArr != null) {
                    int r42 = this.f18309d;
                    kotlin.jvm.internal.h.c(fileArr);
                    if (r42 < fileArr.length) {
                        File[] fileArr2 = this.f18308c;
                        kotlin.jvm.internal.h.c(fileArr2);
                        int r12 = this.f18309d;
                        this.f18309d = r12 + 1;
                        return fileArr2[r12];
                    }
                }
                if (this.f18307b) {
                    c.this.getClass();
                    return null;
                }
                this.f18307b = true;
                return file;
            }
        }

        /* renamed from: v9.c$b$b, reason: collision with other inner class name */
        public final class C0286b extends AbstractC0288c {

            /* renamed from: b, reason: collision with root package name */
            public boolean f18311b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0286b(File rootFile) {
                super(rootFile);
                kotlin.jvm.internal.h.f(rootFile, "rootFile");
            }

            @Override // v9.c.AbstractC0288c
            public final File a() {
                if (this.f18311b) {
                    return null;
                }
                this.f18311b = true;
                return this.f18316a;
            }
        }

        /* renamed from: v9.c$b$c, reason: collision with other inner class name */
        public final class C0287c extends a {

            /* renamed from: b, reason: collision with root package name */
            public boolean f18312b;

            /* renamed from: c, reason: collision with root package name */
            public File[] f18313c;

            /* renamed from: d, reason: collision with root package name */
            public int f18314d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ b f18315e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0287c(b bVar, File rootDir) {
                super(rootDir);
                kotlin.jvm.internal.h.f(rootDir, "rootDir");
                this.f18315e = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
            
                if (r0.length == 0) goto L22;
             */
            @Override // v9.c.AbstractC0288c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.io.File a() {
                /*
                    r5 = this;
                    boolean r0 = r5.f18312b
                    java.io.File r1 = r5.f18316a
                    v9.c$b r2 = r5.f18315e
                    if (r0 != 0) goto L11
                    v9.c r0 = v9.c.this
                    r0.getClass()
                    r0 = 1
                    r5.f18312b = r0
                    return r1
                L11:
                    java.io.File[] r0 = r5.f18313c
                    r3 = 0
                    if (r0 == 0) goto L25
                    int r4 = r5.f18314d
                    kotlin.jvm.internal.h.c(r0)
                    int r0 = r0.length
                    if (r4 >= r0) goto L1f
                    goto L25
                L1f:
                    v9.c r0 = v9.c.this
                    r0.getClass()
                    return r3
                L25:
                    java.io.File[] r0 = r5.f18313c
                    if (r0 != 0) goto L46
                    java.io.File[] r0 = r1.listFiles()
                    r5.f18313c = r0
                    if (r0 != 0) goto L36
                    v9.c r0 = v9.c.this
                    r0.getClass()
                L36:
                    java.io.File[] r0 = r5.f18313c
                    if (r0 == 0) goto L40
                    kotlin.jvm.internal.h.c(r0)
                    int r0 = r0.length
                    if (r0 != 0) goto L46
                L40:
                    v9.c r0 = v9.c.this
                    r0.getClass()
                    return r3
                L46:
                    java.io.File[] r0 = r5.f18313c
                    kotlin.jvm.internal.h.c(r0)
                    int r1 = r5.f18314d
                    int r2 = r1 + 1
                    r5.f18314d = r2
                    r0 = r0[r1]
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: v9.c.b.C0287c.a():java.io.File");
            }
        }

        public b() {
            ArrayDeque<AbstractC0288c> arrayDeque = new ArrayDeque<>();
            this.f18305c = arrayDeque;
            boolean zIsDirectory = c.this.f18302a.isDirectory();
            File file = c.this.f18302a;
            if (zIsDirectory) {
                arrayDeque.push(b(file));
            } else if (file.isFile()) {
                arrayDeque.push(new C0286b(file));
            } else {
                this.f10151a = 3;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // m9.b
        public final void a() {
            T t10;
            File fileA;
            while (true) {
                ArrayDeque<AbstractC0288c> arrayDeque = this.f18305c;
                AbstractC0288c abstractC0288cPeek = arrayDeque.peek();
                if (abstractC0288cPeek == null) {
                    t10 = 0;
                    break;
                }
                fileA = abstractC0288cPeek.a();
                if (fileA == null) {
                    arrayDeque.pop();
                } else if (kotlin.jvm.internal.h.a(fileA, abstractC0288cPeek.f18316a) || !fileA.isDirectory() || arrayDeque.size() >= c.this.f18304c) {
                    break;
                } else {
                    arrayDeque.push(b(fileA));
                }
            }
            t10 = fileA;
            if (t10 == 0) {
                this.f10151a = 3;
            } else {
                this.f10152b = t10;
                this.f10151a = 1;
            }
        }

        public final a b(File file) {
            int r02 = g.d.c(c.this.f18303b);
            if (r02 == 0) {
                return new C0287c(this, file);
            }
            if (r02 == 1) {
                return new a(this, file);
            }
            throw new p();
        }
    }

    /* renamed from: v9.c$c, reason: collision with other inner class name */
    public static abstract class AbstractC0288c {

        /* renamed from: a, reason: collision with root package name */
        public final File f18316a;

        public AbstractC0288c(File root) {
            kotlin.jvm.internal.h.f(root, "root");
            this.f18316a = root;
        }

        public abstract File a();
    }

    public c(File file) {
        f.j(2, "direction");
        this.f18302a = file;
        this.f18303b = 2;
        this.f18304c = Integer.MAX_VALUE;
    }

    @Override // lc.h
    public final Iterator<File> iterator() {
        return new b();
    }
}
