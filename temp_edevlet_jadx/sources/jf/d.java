package jf;

import com.google.android.gms.internal.clearcut.d0;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.jmrtd.PassportService;

/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final e f8505a = new e(30);

    public final String a(String str, Date date) throws kf.b {
        a aVar;
        String strReplace = str.replace('1', 'I').replace('0', 'O').replace('8', 'B').replace('9', 'Q');
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (date != null) {
            jCurrentTimeMillis = date.getTime();
        }
        long j10 = jCurrentTimeMillis / 1000;
        e eVar = this.f8505a;
        eVar.getClass();
        if (j10 < 0) {
            throw new IllegalArgumentException("Negative time: " + j10);
        }
        long j11 = j10 - 0;
        long j12 = eVar.f8506a;
        if (j11 < 0) {
            j11 -= j12 - 1;
        }
        long j13 = j11 / j12;
        if (strReplace != null) {
            try {
                if (strReplace.length() != 0) {
                    try {
                        byte[] bArrA = b.a(strReplace);
                        Mac mac = Mac.getInstance("HMACSHA1");
                        mac.init(new SecretKeySpec(bArrA, ""));
                        aVar = new a(mac);
                    } catch (InvalidKeyException | NoSuchAlgorithmException | kf.a e10) {
                        e10.printStackTrace(System.out);
                        aVar = null;
                    }
                    byte[] bArrDoFinal = aVar.f8499a.doFinal(ByteBuffer.allocate(8).putLong(j13).array());
                    int r82 = bArrDoFinal[bArrDoFinal.length - 1] & PassportService.SFI_DG15;
                    try {
                        String string = Integer.toString((new DataInputStream(new ByteArrayInputStream(bArrDoFinal, r82, bArrDoFinal.length - r82)).readInt() & Integer.MAX_VALUE) % d0.f3066a[6]);
                        for (int length = string.length(); length < 6; length++) {
                            string = "0" + string;
                        }
                        return string;
                    } catch (IOException e11) {
                        throw new IllegalStateException(e11);
                    }
                }
            } catch (GeneralSecurityException e12) {
                throw new kf.b(e12);
            }
        }
        throw new kf.b();
    }
}
