package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.vision.g1;
import com.google.android.gms.internal.vision.r;
import com.google.android.gms.internal.vision.t0;
import com.google.android.gms.internal.vision.w0;
import java.io.IOException;
import java.util.logging.Logger;
import k3.a;
import k3.a.C0161a;

@Keep
/* loaded from: classes.dex */
public class VisionClearcutLogger {
    private final a zza;
    private boolean zzb = true;

    public VisionClearcutLogger(@RecentlyNonNull Context context) {
        this.zza = new a(context);
    }

    public final void zza(int r6, r rVar) {
        w0 w0VarA;
        rVar.getClass();
        try {
            int r02 = rVar.r();
            byte[] bArr = new byte[r02];
            Logger logger = t0.f4085b;
            t0.a aVar = new t0.a(bArr, r02);
            rVar.b(aVar);
            if (aVar.f() != 0) {
                throw new IllegalStateException("Did not write as much data as expected.");
            }
            if (r6 < 0 || r6 > 3) {
                Object[] objArr = {Integer.valueOf(r6)};
                if (Log.isLoggable("Vision", 4)) {
                    Log.i("Vision", String.format("Illegal event code: %d", objArr));
                    return;
                }
                return;
            }
            try {
                if (this.zzb) {
                    a aVar2 = this.zza;
                    aVar2.getClass();
                    a.C0161a c0161a = aVar2.new C0161a(bArr);
                    c0161a.f8711e.f = r6;
                    c0161a.a();
                    return;
                }
                r.a aVarP = r.p();
                try {
                    w0 w0Var = w0.f4111c;
                    if (w0Var == null) {
                        synchronized (w0.class) {
                            w0VarA = w0.f4111c;
                            if (w0VarA == null) {
                                w0VarA = g1.a();
                                w0.f4111c = w0VarA;
                            }
                        }
                        w0Var = w0VarA;
                    }
                    aVarP.c(bArr, r02, w0Var);
                    Object[] objArr2 = {aVarP.toString()};
                    if (Log.isLoggable("Vision", 6)) {
                        Log.e("Vision", String.format("Would have logged:\n%s", objArr2));
                    }
                } catch (Exception e10) {
                    i5.a.a(e10, "Parsing error", new Object[0]);
                }
            } catch (Exception e11) {
                com.google.android.gms.internal.vision.a.f3866a.c(e11);
                i5.a.a(e11, "Failed to log", new Object[0]);
            }
        } catch (IOException e12) {
            String name = r.class.getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 62 + 10);
            sb2.append("Serializing ");
            sb2.append(name);
            sb2.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb2.toString(), e12);
        }
    }
}
