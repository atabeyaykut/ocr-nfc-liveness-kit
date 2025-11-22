package m3;

import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import org.bouncycastle.i18n.LocalizedMessage;
import r3.q1;
import r3.r1;

/* loaded from: classes.dex */
public abstract class u extends q1 {

    /* renamed from: b, reason: collision with root package name */
    public final int f9969b;

    public u(byte[] bArr) {
        r3.r.a(bArr.length == 25);
        this.f9969b = Arrays.hashCode(bArr);
    }

    public static byte[] x0(String str) {
        try {
            return str.getBytes(LocalizedMessage.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // r3.r1
    public final int c() {
        return this.f9969b;
    }

    @Override // r3.r1
    public final z3.b d() {
        return new z3.d(y0());
    }

    public final boolean equals(@Nullable Object obj) {
        z3.b bVarD;
        if (obj != null && (obj instanceof r1)) {
            try {
                r1 r1Var = (r1) obj;
                if (r1Var.c() == this.f9969b && (bVarD = r1Var.d()) != null) {
                    return Arrays.equals(y0(), (byte[]) z3.d.y0(bVarD));
                }
                return false;
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f9969b;
    }

    public abstract byte[] y0();
}
