package t0;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class a implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f15461a;

    /* renamed from: b, reason: collision with root package name */
    public final File f15462b;

    /* renamed from: c, reason: collision with root package name */
    public final File f15463c;

    /* renamed from: d, reason: collision with root package name */
    public final File f15464d;
    public final long f;

    /* renamed from: j, reason: collision with root package name */
    public BufferedWriter f15468j;

    /* renamed from: l, reason: collision with root package name */
    public int f15470l;

    /* renamed from: h, reason: collision with root package name */
    public long f15467h = 0;

    /* renamed from: k, reason: collision with root package name */
    public final LinkedHashMap<String, d> f15469k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: m, reason: collision with root package name */
    public long f15471m = 0;

    /* renamed from: n, reason: collision with root package name */
    public final ThreadPoolExecutor f15472n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b());

    /* renamed from: p, reason: collision with root package name */
    public final CallableC0250a f15473p = new CallableC0250a();

    /* renamed from: e, reason: collision with root package name */
    public final int f15465e = 1;

    /* renamed from: g, reason: collision with root package name */
    public final int f15466g = 1;

    /* renamed from: t0.a$a, reason: collision with other inner class name */
    public class CallableC0250a implements Callable<Void> {
        public CallableC0250a() {
        }

        @Override // java.util.concurrent.Callable
        public final Void call() throws Exception {
            synchronized (a.this) {
                a aVar = a.this;
                if (aVar.f15468j != null) {
                    aVar.p();
                    if (a.this.g()) {
                        a.this.n();
                        a.this.f15470l = 0;
                    }
                }
            }
            return null;
        }
    }

    public static final class b implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class c {

        /* renamed from: a, reason: collision with root package name */
        public final d f15475a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean[] f15476b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f15477c;

        public c(d dVar) {
            this.f15475a = dVar;
            this.f15476b = dVar.f15483e ? null : new boolean[a.this.f15466g];
        }

        public final void a() throws IOException {
            a.a(a.this, this, false);
        }

        public final File b() throws IOException {
            File file;
            synchronized (a.this) {
                d dVar = this.f15475a;
                if (dVar.f != this) {
                    throw new IllegalStateException();
                }
                if (!dVar.f15483e) {
                    this.f15476b[0] = true;
                }
                file = dVar.f15482d[0];
                a.this.f15461a.mkdirs();
            }
            return file;
        }
    }

    public final class d {

        /* renamed from: a, reason: collision with root package name */
        public final String f15479a;

        /* renamed from: b, reason: collision with root package name */
        public final long[] f15480b;

        /* renamed from: c, reason: collision with root package name */
        public final File[] f15481c;

        /* renamed from: d, reason: collision with root package name */
        public final File[] f15482d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f15483e;
        public c f;

        public d(String str) {
            this.f15479a = str;
            int r02 = a.this.f15466g;
            this.f15480b = new long[r02];
            this.f15481c = new File[r02];
            this.f15482d = new File[r02];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int r12 = 0; r12 < a.this.f15466g; r12++) {
                sb2.append(r12);
                File[] fileArr = this.f15481c;
                String string = sb2.toString();
                File file = a.this.f15461a;
                fileArr[r12] = new File(file, string);
                sb2.append(".tmp");
                this.f15482d[r12] = new File(file, sb2.toString());
                sb2.setLength(length);
            }
        }

        public final String a() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.f15480b) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }
    }

    public final class e {

        /* renamed from: a, reason: collision with root package name */
        public final File[] f15485a;

        public e(File[] fileArr) {
            this.f15485a = fileArr;
        }
    }

    public a(File file, long j10) {
        this.f15461a = file;
        this.f15462b = new File(file, "journal");
        this.f15463c = new File(file, "journal.tmp");
        this.f15464d = new File(file, "journal.bkp");
        this.f = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0049 A[Catch: all -> 0x00f8, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x000a, B:10:0x000f, B:12:0x0013, B:14:0x0019, B:16:0x0023, B:17:0x0028, B:18:0x002b, B:19:0x0044, B:20:0x0045, B:22:0x0049, B:24:0x004f, B:26:0x0055, B:28:0x0072, B:27:0x006f, B:29:0x0075, B:31:0x0087, B:33:0x00ac, B:35:0x00d6, B:37:0x00e3, B:39:0x00e9, B:34:0x00b7, B:42:0x00f2, B:43:0x00f7), top: B:47:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0087 A[Catch: all -> 0x00f8, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x000a, B:10:0x000f, B:12:0x0013, B:14:0x0019, B:16:0x0023, B:17:0x0028, B:18:0x002b, B:19:0x0044, B:20:0x0045, B:22:0x0049, B:24:0x004f, B:26:0x0055, B:28:0x0072, B:27:0x006f, B:29:0x0075, B:31:0x0087, B:33:0x00ac, B:35:0x00d6, B:37:0x00e3, B:39:0x00e9, B:34:0x00b7, B:42:0x00f2, B:43:0x00f7), top: B:47:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b7 A[Catch: all -> 0x00f8, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x000a, B:10:0x000f, B:12:0x0013, B:14:0x0019, B:16:0x0023, B:17:0x0028, B:18:0x002b, B:19:0x0044, B:20:0x0045, B:22:0x0049, B:24:0x004f, B:26:0x0055, B:28:0x0072, B:27:0x006f, B:29:0x0075, B:31:0x0087, B:33:0x00ac, B:35:0x00d6, B:37:0x00e3, B:39:0x00e9, B:34:0x00b7, B:42:0x00f2, B:43:0x00f7), top: B:47:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e9 A[Catch: all -> 0x00f8, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x000a, B:10:0x000f, B:12:0x0013, B:14:0x0019, B:16:0x0023, B:17:0x0028, B:18:0x002b, B:19:0x0044, B:20:0x0045, B:22:0x0049, B:24:0x004f, B:26:0x0055, B:28:0x0072, B:27:0x006f, B:29:0x0075, B:31:0x0087, B:33:0x00ac, B:35:0x00d6, B:37:0x00e3, B:39:0x00e9, B:34:0x00b7, B:42:0x00f2, B:43:0x00f7), top: B:47:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(t0.a r9, t0.a.c r10, boolean r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t0.a.a(t0.a, t0.a$c, boolean):void");
    }

    @TargetApi(26)
    public static void b(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void c(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    public static void e(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static a i(File file, long j10) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                o(file2, file3, false);
            }
        }
        a aVar = new a(file, j10);
        if (aVar.f15462b.exists()) {
            try {
                aVar.k();
                aVar.j();
                return aVar;
            } catch (IOException e10) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                aVar.close();
                t0.c.a(aVar.f15461a);
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, j10);
        aVar2.n();
        return aVar2;
    }

    public static void o(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            c(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.f15468j == null) {
            return;
        }
        Iterator it = new ArrayList(this.f15469k.values()).iterator();
        while (it.hasNext()) {
            c cVar = ((d) it.next()).f;
            if (cVar != null) {
                cVar.a();
            }
        }
        p();
        b(this.f15468j);
        this.f15468j = null;
    }

    public final c d(String str) throws IOException {
        synchronized (this) {
            if (this.f15468j == null) {
                throw new IllegalStateException("cache is closed");
            }
            d dVar = this.f15469k.get(str);
            if (dVar == null) {
                dVar = new d(str);
                this.f15469k.put(str, dVar);
            } else if (dVar.f != null) {
                return null;
            }
            c cVar = new c(dVar);
            dVar.f = cVar;
            this.f15468j.append((CharSequence) "DIRTY");
            this.f15468j.append(' ');
            this.f15468j.append((CharSequence) str);
            this.f15468j.append('\n');
            e(this.f15468j);
            return cVar;
        }
    }

    public final synchronized e f(String str) throws IOException {
        if (this.f15468j == null) {
            throw new IllegalStateException("cache is closed");
        }
        d dVar = this.f15469k.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f15483e) {
            return null;
        }
        for (File file : dVar.f15481c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f15470l++;
        this.f15468j.append((CharSequence) "READ");
        this.f15468j.append(' ');
        this.f15468j.append((CharSequence) str);
        this.f15468j.append('\n');
        if (g()) {
            this.f15472n.submit(this.f15473p);
        }
        return new e(dVar.f15481c);
    }

    public final boolean g() {
        int r02 = this.f15470l;
        return r02 >= 2000 && r02 >= this.f15469k.size();
    }

    public final void j() throws IOException {
        c(this.f15463c);
        Iterator<d> it = this.f15469k.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            c cVar = next.f;
            int r32 = this.f15466g;
            int r42 = 0;
            if (cVar == null) {
                while (r42 < r32) {
                    this.f15467h += next.f15480b[r42];
                    r42++;
                }
            } else {
                next.f = null;
                while (r42 < r32) {
                    c(next.f15481c[r42]);
                    c(next.f15482d[r42]);
                    r42++;
                }
                it.remove();
            }
        }
    }

    public final void k() throws IOException {
        File file = this.f15462b;
        t0.b bVar = new t0.b(new FileInputStream(file), t0.c.f15492a);
        try {
            String strA = bVar.a();
            String strA2 = bVar.a();
            String strA3 = bVar.a();
            String strA4 = bVar.a();
            String strA5 = bVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.f15465e).equals(strA3) || !Integer.toString(this.f15466g).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int r12 = 0;
            while (true) {
                try {
                    m(bVar.a());
                    r12++;
                } catch (EOFException unused) {
                    this.f15470l = r12 - this.f15469k.size();
                    if (bVar.f15490e == -1) {
                        n();
                    } else {
                        this.f15468j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), t0.c.f15492a));
                    }
                    try {
                        bVar.close();
                        return;
                    } catch (RuntimeException e10) {
                        throw e10;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused3) {
            }
            throw th2;
        }
    }

    public final void m(String str) throws IOException {
        String strSubstring;
        int r12 = str.indexOf(32);
        if (r12 == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int r42 = r12 + 1;
        int r02 = str.indexOf(32, r42);
        LinkedHashMap<String, d> linkedHashMap = this.f15469k;
        if (r02 == -1) {
            strSubstring = str.substring(r42);
            if (r12 == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(r42, r02);
        }
        d dVar = linkedHashMap.get(strSubstring);
        if (dVar == null) {
            dVar = new d(strSubstring);
            linkedHashMap.put(strSubstring, dVar);
        }
        if (r02 == -1 || r12 != 5 || !str.startsWith("CLEAN")) {
            if (r02 == -1 && r12 == 5 && str.startsWith("DIRTY")) {
                dVar.f = new c(dVar);
                return;
            } else {
                if (r02 != -1 || r12 != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(r02 + 1).split(" ");
        dVar.f15483e = true;
        dVar.f = null;
        if (strArrSplit.length != a.this.f15466g) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
        }
        for (int r03 = 0; r03 < strArrSplit.length; r03++) {
            try {
                dVar.f15480b[r03] = Long.parseLong(strArrSplit[r03]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
            }
        }
    }

    public final synchronized void n() throws IOException {
        StringBuilder sb2;
        BufferedWriter bufferedWriter = this.f15468j;
        if (bufferedWriter != null) {
            b(bufferedWriter);
        }
        BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f15463c), t0.c.f15492a));
        try {
            bufferedWriter2.write("libcore.io.DiskLruCache");
            bufferedWriter2.write("\n");
            bufferedWriter2.write("1");
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f15465e));
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f15466g));
            bufferedWriter2.write("\n");
            bufferedWriter2.write("\n");
            for (d dVar : this.f15469k.values()) {
                if (dVar.f != null) {
                    sb2 = new StringBuilder();
                    sb2.append("DIRTY ");
                    sb2.append(dVar.f15479a);
                    sb2.append('\n');
                } else {
                    sb2 = new StringBuilder();
                    sb2.append("CLEAN ");
                    sb2.append(dVar.f15479a);
                    sb2.append(dVar.a());
                    sb2.append('\n');
                }
                bufferedWriter2.write(sb2.toString());
            }
            b(bufferedWriter2);
            if (this.f15462b.exists()) {
                o(this.f15462b, this.f15464d, true);
            }
            o(this.f15463c, this.f15462b, false);
            this.f15464d.delete();
            this.f15468j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f15462b, true), t0.c.f15492a));
        } catch (Throwable th2) {
            b(bufferedWriter2);
            throw th2;
        }
    }

    public final void p() throws IOException {
        while (this.f15467h > this.f) {
            String key = this.f15469k.entrySet().iterator().next().getKey();
            synchronized (this) {
                if (this.f15468j == null) {
                    throw new IllegalStateException("cache is closed");
                }
                d dVar = this.f15469k.get(key);
                if (dVar != null && dVar.f == null) {
                    for (int r22 = 0; r22 < this.f15466g; r22++) {
                        File file = dVar.f15481c[r22];
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        long j10 = this.f15467h;
                        long[] jArr = dVar.f15480b;
                        this.f15467h = j10 - jArr[r22];
                        jArr[r22] = 0;
                    }
                    this.f15470l++;
                    this.f15468j.append((CharSequence) "REMOVE");
                    this.f15468j.append(' ');
                    this.f15468j.append((CharSequence) key);
                    this.f15468j.append('\n');
                    this.f15469k.remove(key);
                    if (g()) {
                        this.f15472n.submit(this.f15473p);
                    }
                }
            }
        }
    }
}
