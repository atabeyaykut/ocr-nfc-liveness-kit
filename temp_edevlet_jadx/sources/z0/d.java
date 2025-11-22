package z0;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import t0.a;
import z0.b;

/* loaded from: classes.dex */
public final class d implements a {

    /* renamed from: b, reason: collision with root package name */
    public final File f19740b;

    /* renamed from: c, reason: collision with root package name */
    public final long f19741c;

    /* renamed from: e, reason: collision with root package name */
    public t0.a f19743e;

    /* renamed from: d, reason: collision with root package name */
    public final b f19742d = new b();

    /* renamed from: a, reason: collision with root package name */
    public final j f19739a = new j();

    @Deprecated
    public d(File file, long j10) {
        this.f19740b = file;
        this.f19741c = j10;
    }

    public final synchronized t0.a a() throws IOException {
        if (this.f19743e == null) {
            this.f19743e = t0.a.i(this.f19740b, this.f19741c);
        }
        return this.f19743e;
    }

    @Override // z0.a
    public final void f(v0.f fVar, x0.g gVar) {
        b.a aVarA;
        boolean z10;
        String strB = this.f19739a.b(fVar);
        b bVar = this.f19742d;
        synchronized (bVar) {
            aVarA = (b.a) bVar.f19732a.get(strB);
            if (aVarA == null) {
                aVarA = bVar.f19733b.a();
                bVar.f19732a.put(strB, aVarA);
            }
            aVarA.f19735b++;
        }
        aVarA.f19734a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strB + " for for Key: " + fVar);
            }
            try {
                t0.a aVarA2 = a();
                if (aVarA2.f(strB) == null) {
                    a.c cVarD = aVarA2.d(strB);
                    if (cVarD == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(strB));
                    }
                    try {
                        if (gVar.f18958a.b(gVar.f18959b, cVarD.b(), gVar.f18960c)) {
                            t0.a.a(t0.a.this, cVarD, true);
                            cVarD.f15477c = true;
                        }
                        if (!z10) {
                            try {
                                cVarD.a();
                            } catch (IOException unused) {
                            }
                        }
                    } finally {
                        if (!cVarD.f15477c) {
                            try {
                                cVarD.a();
                            } catch (IOException unused2) {
                            }
                        }
                    }
                }
            } catch (IOException e10) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e10);
                }
            }
        } finally {
            this.f19742d.a(strB);
        }
    }

    @Override // z0.a
    public final File g(v0.f fVar) {
        String strB = this.f19739a.b(fVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strB + " for for Key: " + fVar);
        }
        try {
            a.e eVarF = a().f(strB);
            if (eVarF != null) {
                return eVarF.f15485a[0];
            }
            return null;
        } catch (IOException e10) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e10);
            return null;
        }
    }
}
