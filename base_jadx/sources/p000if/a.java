package p000if;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static a f7437d;

    /* renamed from: a, reason: collision with root package name */
    public final Cipher f7438a;

    /* renamed from: b, reason: collision with root package name */
    public final Cipher f7439b;

    /* renamed from: c, reason: collision with root package name */
    public final Cipher f7440c;

    /* renamed from: if.a$a, reason: collision with other inner class name */
    public static class C0130a extends RuntimeException {
        public C0130a(Exception exc) {
            super(exc);
        }
    }

    public a() throws C0130a {
        try {
            this.f7438a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f7439b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f7440c = Cipher.getInstance("AES/ECB/PKCS5Padding");
            a();
        } catch (UnsupportedEncodingException | GeneralSecurityException e10) {
            throw new C0130a(e10);
        }
    }

    public final void a() throws NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        Cipher cipher = this.f7438a;
        byte[] bArr = new byte[cipher.getBlockSize()];
        System.arraycopy("fldsjfodasjifudslfjdsaofshaufihadsf".getBytes(), 0, bArr, 0, cipher.getBlockSize());
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.reset();
        new SecretKeySpec(messageDigest.digest("any!!24111".getBytes("UTF-8")), "AES/CBC/PKCS5Padding");
        MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-256");
        messageDigest2.reset();
        SecretKeySpec secretKeySpec = new SecretKeySpec(messageDigest2.digest("wr2YNr4gcuZPJTVsAdwtWQ==".getBytes("UTF-8")), "AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, ivParameterSpec);
        this.f7439b.init(2, secretKeySpec, ivParameterSpec);
        this.f7440c.init(1, secretKeySpec);
    }
}
