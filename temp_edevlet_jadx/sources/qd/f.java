package qd;

import android.app.AlertDialog;
import android.os.RemoteException;
import android.util.Log;
import c5.w;
import com.google.android.gms.internal.measurement.d0;
import com.google.android.gms.internal.measurement.o;
import com.google.android.gms.internal.measurement.p;
import com.google.android.gms.internal.measurement.q7;
import com.google.android.gms.internal.measurement.s3;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;
import m4.q;
import o3.h;
import o3.z0;

/* loaded from: classes2.dex */
public final class f implements h5.h, d0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f13573a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13574b;

    public /* synthetic */ f() {
        this.f13573a = new TreeMap();
        this.f13574b = new TreeMap();
    }

    public /* synthetic */ f(Object obj) {
        this.f13574b = obj;
        this.f13573a = Thread.currentThread();
    }

    public /* synthetic */ f(Object obj, Object obj2) {
        this.f13573a = obj;
        this.f13574b = obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static qd.f c(android.content.Context r5) throws java.io.IOException {
        /*
            java.lang.String r0 = "generatefid.lock"
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.nio.channels.OverlappingFileLockException -> L2f java.lang.Error -> L31 java.io.IOException -> L33
            java.io.File r5 = r5.getFilesDir()     // Catch: java.nio.channels.OverlappingFileLockException -> L2f java.lang.Error -> L31 java.io.IOException -> L33
            r2.<init>(r5, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L2f java.lang.Error -> L31 java.io.IOException -> L33
            java.io.RandomAccessFile r5 = new java.io.RandomAccessFile     // Catch: java.nio.channels.OverlappingFileLockException -> L2f java.lang.Error -> L31 java.io.IOException -> L33
            java.lang.String r0 = "rw"
            r5.<init>(r2, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L2f java.lang.Error -> L31 java.io.IOException -> L33
            java.nio.channels.FileChannel r5 = r5.getChannel()     // Catch: java.nio.channels.OverlappingFileLockException -> L2f java.lang.Error -> L31 java.io.IOException -> L33
            java.nio.channels.FileLock r0 = r5.lock()     // Catch: java.nio.channels.OverlappingFileLockException -> L27 java.lang.Error -> L29 java.io.IOException -> L2b
            qd.f r2 = new qd.f     // Catch: java.nio.channels.OverlappingFileLockException -> L21 java.lang.Error -> L23 java.io.IOException -> L25
            r2.<init>(r5, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L21 java.lang.Error -> L23 java.io.IOException -> L25
            return r2
        L21:
            r2 = move-exception
            goto L37
        L23:
            r2 = move-exception
            goto L37
        L25:
            r2 = move-exception
            goto L37
        L27:
            r0 = move-exception
            goto L2c
        L29:
            r0 = move-exception
            goto L2c
        L2b:
            r0 = move-exception
        L2c:
            r2 = r0
            r0 = r1
            goto L37
        L2f:
            r5 = move-exception
            goto L34
        L31:
            r5 = move-exception
            goto L34
        L33:
            r5 = move-exception
        L34:
            r2 = r5
            r5 = r1
            r0 = r5
        L37:
            java.lang.String r3 = "CrossProcessLock"
            java.lang.String r4 = "encountered error while creating and acquiring the lock, ignoring"
            android.util.Log.e(r3, r4, r2)
            if (r0 == 0) goto L45
            r0.release()     // Catch: java.io.IOException -> L44
            goto L45
        L44:
        L45:
            if (r5 == 0) goto L4a
            r5.close()     // Catch: java.io.IOException -> L4a
        L4a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: qd.f.c(android.content.Context):qd.f");
    }

    @Override // h5.h
    public final void a() {
        try {
            ((q) this.f13573a).E((h.a) this.f13574b, true, new h5.l());
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.internal.measurement.d0
    public final s3 b(p pVar) {
        Object obj = this.f13573a;
        ((s3) obj).e((String) this.f13574b, pVar);
        return (s3) obj;
    }

    public final void d() throws IOException {
        try {
            ((FileLock) this.f13574b).release();
            ((FileChannel) this.f13573a).close();
        } catch (IOException e10) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e10);
        }
    }

    public final void e(s3 s3Var, com.google.android.gms.internal.measurement.c cVar) {
        q7 q7Var = new q7(cVar);
        TreeMap treeMap = (TreeMap) this.f13573a;
        for (Integer num : treeMap.keySet()) {
            com.google.android.gms.internal.measurement.b bVarClone = cVar.f3405b.clone();
            p pVarA = ((o) treeMap.get(num)).a(s3Var, Collections.singletonList(q7Var));
            int r32 = pVarA instanceof com.google.android.gms.internal.measurement.i ? w.Q(pVarA.i().doubleValue()) : -1;
            if (r32 == 2 || r32 == -1) {
                cVar.f3405b = bVarClone;
            }
        }
        TreeMap treeMap2 = (TreeMap) this.f13574b;
        Iterator it = treeMap2.keySet().iterator();
        while (it.hasNext()) {
            p pVarA2 = ((o) treeMap2.get((Integer) it.next())).a(s3Var, Collections.singletonList(q7Var));
            if (pVarA2 instanceof com.google.android.gms.internal.measurement.i) {
                w.Q(pVarA2.i().doubleValue());
            }
        }
    }

    public f(z0 z0Var, AlertDialog alertDialog) {
        this.f13574b = z0Var;
        this.f13573a = alertDialog;
    }
}
