package ed;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class t extends k {
    @Override // ed.k
    public final h0 a(z zVar) {
        File file = zVar.toFile();
        Logger logger = w.f5358a;
        return new y(new FileOutputStream(file, true), new k0());
    }

    @Override // ed.k
    public void b(z source, z target) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        kotlin.jvm.internal.h.f(target, "target");
        if (source.toFile().renameTo(target.toFile())) {
            return;
        }
        throw new IOException("failed to move " + source + " to " + target);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    @Override // ed.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(ed.z r3) throws java.io.IOException {
        /*
            r2 = this;
            java.io.File r0 = r3.toFile()
            boolean r0 = r0.mkdir()
            if (r0 != 0) goto L27
            ed.j r0 = r2.i(r3)
            if (r0 != 0) goto L11
            goto L17
        L11:
            boolean r0 = r0.f5326b
            r1 = 1
            if (r0 != r1) goto L17
            goto L18
        L17:
            r1 = 0
        L18:
            if (r1 == 0) goto L1b
            return
        L1b:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "failed to create directory: "
            java.lang.String r3 = kotlin.jvm.internal.h.k(r3, r1)
            r0.<init>(r3)
            throw r0
        L27:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.t.c(ed.z):void");
    }

    @Override // ed.k
    public final void d(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        File file = path.toFile();
        if (!file.delete() && file.exists()) {
            throw new IOException(kotlin.jvm.internal.h.k(path, "failed to delete "));
        }
    }

    @Override // ed.k
    public final List<z> g(z dir) throws IOException {
        kotlin.jvm.internal.h.f(dir, "dir");
        File file = dir.toFile();
        String[] list = file.list();
        if (list == null) {
            if (file.exists()) {
                throw new IOException(kotlin.jvm.internal.h.k(dir, "failed to list "));
            }
            throw new FileNotFoundException(kotlin.jvm.internal.h.k(dir, "no such file: "));
        }
        ArrayList arrayList = new ArrayList();
        for (String it : list) {
            kotlin.jvm.internal.h.e(it, "it");
            arrayList.add(dir.q(it));
        }
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    @Override // ed.k
    public j i(z path) {
        kotlin.jvm.internal.h.f(path, "path");
        File file = path.toFile();
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        long jLastModified = file.lastModified();
        long length = file.length();
        if (zIsFile || zIsDirectory || jLastModified != 0 || length != 0 || file.exists()) {
            return new j(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null);
        }
        return null;
    }

    @Override // ed.k
    public final i j(z file) {
        kotlin.jvm.internal.h.f(file, "file");
        return new s(new RandomAccessFile(file.toFile(), "r"));
    }

    @Override // ed.k
    public final h0 k(z file) {
        kotlin.jvm.internal.h.f(file, "file");
        File file2 = file.toFile();
        Logger logger = w.f5358a;
        return new y(new FileOutputStream(file2, false), new k0());
    }

    @Override // ed.k
    public final j0 l(z file) {
        kotlin.jvm.internal.h.f(file, "file");
        File file2 = file.toFile();
        Logger logger = w.f5358a;
        return new r(new FileInputStream(file2), k0.f5333d);
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
