package r5;

import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.KeyGenerator;
import n5.i;
import w5.a0;
import w5.v;

/* loaded from: classes2.dex */
public final class c implements i {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f14326b = 0;

    /* renamed from: a, reason: collision with root package name */
    public KeyStore f14327a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public KeyStore f14328a;

        public a() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
            this.f14328a = null;
            int r12 = c.f14326b;
            if (!(Build.VERSION.SDK_INT >= 23)) {
                throw new IllegalStateException("need Android Keystore on Android M or newer");
            }
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f14328a = keyStore;
                keyStore.load(null);
            } catch (IOException | GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public c() throws GeneralSecurityException {
        this(new a());
    }

    public c(a aVar) {
        this.f14327a = aVar.f14328a;
    }

    public static void c(String str) throws GeneralSecurityException {
        if (new c().d(str)) {
            throw new IllegalArgumentException(String.format("cannot generate a new key %s because it already exists; please delete it with deleteKey() and try again", str));
        }
        String strB = a0.b(str);
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(new KeyGenParameterSpec.Builder(strB, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
        keyGenerator.generateKey();
    }

    @Override // n5.i
    public final synchronized boolean a(String str) {
        return str.toLowerCase(Locale.US).startsWith("android-keystore://");
    }

    @Override // n5.i
    public final synchronized b b(String str) throws GeneralSecurityException {
        b bVar;
        bVar = new b(a0.b(str), this.f14327a);
        byte[] bArrA = v.a(10);
        byte[] bArr = new byte[0];
        if (!Arrays.equals(bArrA, bVar.b(bVar.a(bArrA, bArr), bArr))) {
            throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
        }
        return bVar;
    }

    public final synchronized boolean d(String str) throws GeneralSecurityException {
        String strB;
        strB = a0.b(str);
        try {
        } catch (NullPointerException unused) {
            Log.w("c", "Keystore is temporarily unavailable, wait 20ms, reinitialize Keystore and try again.");
            try {
                Thread.sleep(20L);
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f14327a = keyStore;
                keyStore.load(null);
            } catch (IOException e10) {
                throw new GeneralSecurityException(e10);
            } catch (InterruptedException unused2) {
            }
            return this.f14327a.containsAlias(strB);
        }
        return this.f14327a.containsAlias(strB);
    }
}
