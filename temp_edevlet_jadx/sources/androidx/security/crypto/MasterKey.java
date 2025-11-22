package androidx.security.crypto;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

/* loaded from: classes.dex */
public final class MasterKey {
    public static final int DEFAULT_AES_GCM_MASTER_KEY_SIZE = 256;
    private static final int DEFAULT_AUTHENTICATION_VALIDITY_DURATION_SECONDS = 300;
    public static final String DEFAULT_MASTER_KEY_ALIAS = "_androidx_security_master_key_";
    static final String KEYSTORE_PATH_URI = "android-keystore://";

    @NonNull
    private final String mKeyAlias;

    @Nullable
    private final KeyGenParameterSpec mKeyGenParameterSpec;

    /* renamed from: androidx.security.crypto.MasterKey$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$security$crypto$MasterKey$KeyScheme;

        static {
            int[] r02 = new int[KeyScheme.values().length];
            $SwitchMap$androidx$security$crypto$MasterKey$KeyScheme = r02;
            try {
                r02[KeyScheme.AES256_GCM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static final class Builder {
        private boolean mAuthenticationRequired;
        private final Context mContext;

        @NonNull
        private final String mKeyAlias;

        @Nullable
        private KeyGenParameterSpec mKeyGenParameterSpec;

        @Nullable
        private KeyScheme mKeyScheme;
        private boolean mRequestStrongBoxBacked;
        private int mUserAuthenticationValidityDurationSeconds;

        public Builder(@NonNull Context context) {
            this(context, MasterKey.DEFAULT_MASTER_KEY_ALIAS);
        }

        public Builder(@NonNull Context context, @NonNull String str) {
            this.mContext = context.getApplicationContext();
            this.mKeyAlias = str;
        }

        @RequiresApi(23)
        private MasterKey buildOnM() throws GeneralSecurityException, IOException {
            KeyScheme keyScheme = this.mKeyScheme;
            if (keyScheme == null && this.mKeyGenParameterSpec == null) {
                throw new IllegalArgumentException("build() called before setKeyGenParameterSpec or setKeyScheme.");
            }
            if (keyScheme == KeyScheme.AES256_GCM) {
                KeyGenParameterSpec.Builder keySize = new KeyGenParameterSpec.Builder(this.mKeyAlias, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256);
                if (this.mAuthenticationRequired) {
                    keySize.setUserAuthenticationRequired(true).setUserAuthenticationValidityDurationSeconds(this.mUserAuthenticationValidityDurationSeconds);
                }
                if (Build.VERSION.SDK_INT >= 28 && this.mRequestStrongBoxBacked && this.mContext.getPackageManager().hasSystemFeature("android.hardware.strongbox_keystore")) {
                    keySize.setIsStrongBoxBacked(true);
                }
                this.mKeyGenParameterSpec = keySize.build();
            }
            KeyGenParameterSpec keyGenParameterSpec = this.mKeyGenParameterSpec;
            if (keyGenParameterSpec != null) {
                return new MasterKey(MasterKeys.getOrCreate(keyGenParameterSpec), this.mKeyGenParameterSpec);
            }
            throw new NullPointerException("KeyGenParameterSpec was null after build() check");
        }

        @NonNull
        public MasterKey build() throws GeneralSecurityException, IOException {
            return Build.VERSION.SDK_INT >= 23 ? buildOnM() : new MasterKey(this.mKeyAlias, null);
        }

        @NonNull
        @RequiresApi(23)
        public Builder setKeyGenParameterSpec(@NonNull KeyGenParameterSpec keyGenParameterSpec) {
            if (this.mKeyScheme != null) {
                throw new IllegalArgumentException("KeyGenParamSpec set after setting a KeyScheme");
            }
            if (this.mKeyAlias.equals(keyGenParameterSpec.getKeystoreAlias())) {
                this.mKeyGenParameterSpec = keyGenParameterSpec;
                return this;
            }
            throw new IllegalArgumentException("KeyGenParamSpec's key alias does not match provided alias (" + this.mKeyAlias + " vs " + keyGenParameterSpec.getKeystoreAlias());
        }

        @NonNull
        public Builder setKeyScheme(@NonNull KeyScheme keyScheme) {
            if (AnonymousClass1.$SwitchMap$androidx$security$crypto$MasterKey$KeyScheme[keyScheme.ordinal()] != 1) {
                throw new IllegalArgumentException("Unsupported scheme: " + keyScheme);
            }
            if (Build.VERSION.SDK_INT >= 23 && this.mKeyGenParameterSpec != null) {
                throw new IllegalArgumentException("KeyScheme set after setting a KeyGenParamSpec");
            }
            this.mKeyScheme = keyScheme;
            return this;
        }

        @NonNull
        public Builder setRequestStrongBoxBacked(boolean z10) {
            this.mRequestStrongBoxBacked = z10;
            return this;
        }

        @NonNull
        public Builder setUserAuthenticationRequired(boolean z10) {
            return setUserAuthenticationRequired(z10, MasterKey.getDefaultAuthenticationValidityDurationSeconds());
        }

        @NonNull
        public Builder setUserAuthenticationRequired(boolean z10, @IntRange(from = 1) int r22) {
            this.mAuthenticationRequired = z10;
            this.mUserAuthenticationValidityDurationSeconds = r22;
            return this;
        }
    }

    public enum KeyScheme {
        AES256_GCM
    }

    public MasterKey(@NonNull String str, @Nullable Object obj) {
        this.mKeyAlias = str;
        if (Build.VERSION.SDK_INT >= 23) {
            this.mKeyGenParameterSpec = (KeyGenParameterSpec) obj;
        } else {
            this.mKeyGenParameterSpec = null;
        }
    }

    @SuppressLint({"MethodNameUnits"})
    public static int getDefaultAuthenticationValidityDurationSeconds() {
        return DEFAULT_AUTHENTICATION_VALIDITY_DURATION_SECONDS;
    }

    @NonNull
    public String getKeyAlias() {
        return this.mKeyAlias;
    }

    @SuppressLint({"MethodNameUnits"})
    public int getUserAuthenticationValidityDurationSeconds() {
        KeyGenParameterSpec keyGenParameterSpec;
        if (Build.VERSION.SDK_INT >= 23 && (keyGenParameterSpec = this.mKeyGenParameterSpec) != null) {
            return keyGenParameterSpec.getUserAuthenticationValidityDurationSeconds();
        }
        return 0;
    }

    public boolean isKeyStoreBacked() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return keyStore.containsAlias(this.mKeyAlias);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException unused) {
            return false;
        }
    }

    public boolean isStrongBoxBacked() {
        KeyGenParameterSpec keyGenParameterSpec;
        if (Build.VERSION.SDK_INT < 28 || (keyGenParameterSpec = this.mKeyGenParameterSpec) == null) {
            return false;
        }
        return keyGenParameterSpec.isStrongBoxBacked();
    }

    public boolean isUserAuthenticationRequired() {
        KeyGenParameterSpec keyGenParameterSpec;
        return Build.VERSION.SDK_INT >= 23 && (keyGenParameterSpec = this.mKeyGenParameterSpec) != null && keyGenParameterSpec.isUserAuthenticationRequired();
    }

    @NonNull
    public String toString() {
        return "MasterKey{keyAlias=" + this.mKeyAlias + ", isKeyStoreBacked=" + isKeyStoreBacked() + "}";
    }
}
