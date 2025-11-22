package o5;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import n5.p;
import u5.p0;

/* loaded from: classes2.dex */
public final class a {
    static {
        new c();
        new f();
        new g();
        new e();
        new i();
        new k();
        new h();
        new l();
        int r02 = p0.CONFIG_NAME_FIELD_NUMBER;
        try {
            a();
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }

    public static void a() throws GeneralSecurityException {
        boolean z10;
        int r02 = s5.c.f15273a;
        p.e(new s5.b(), true);
        p.e(new s5.a(), true);
        p.f(new s5.d());
        p.e(new c(), true);
        p.e(new e(), true);
        p.e(new f(), true);
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            z10 = true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            z10 = false;
        }
        if (z10) {
            p.e(new g(), true);
        }
        p.e(new h(), true);
        p.e(new i(), true);
        p.e(new k(), true);
        p.e(new l(), true);
        p.f(new b());
    }
}
