package b0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import c8.a;
import com.google.android.gms.internal.clearcut.a0;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ConcurrentSkipListMap;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.internal.u;
import l7.j;
import s4.ca;
import s4.p9;
import v.e;
import va.p;

/* loaded from: classes.dex */
public final class a implements ca, a0, p, j {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ a f1002a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final u f1003b = new u("CONDITION_FALSE");

    /* renamed from: c, reason: collision with root package name */
    public static final u f1004c = new u("LIST_EMPTY");

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f1005d = {"android.permission.CAMERA"};

    public /* synthetic */ a() {
    }

    public static String d(Context context, String key) throws BadPaddingException, CharacterCodingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        h.f(context, "context");
        h.f(key, "key");
        String string = context.getSharedPreferences("settings", 0).getString("esk", null);
        if (string == null || string.length() == 0) {
            return null;
        }
        byte[] bArrA = je.a.a(string);
        byte[] bArr = new byte[16];
        System.arraycopy(bArrA, 0, bArr, 0, 16);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
        int length = bArrA.length - 16;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArrA, 16, bArr2, 0, length);
        byte[] bArr3 = new byte[16];
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        h.e(messageDigest, "getInstance(\"SHA-256\")");
        Charset charset = mc.a.f10357a;
        byte[] bytes = key.getBytes(charset);
        h.e(bytes, "this as java.lang.String).getBytes(charset)");
        messageDigest.update(bytes);
        System.arraycopy(messageDigest.digest(), 0, bArr3, 0, 16);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        h.e(cipher, "getInstance(\"AES/CBC/PKCS5Padding\")");
        cipher.init(2, secretKeySpec, ivParameterSpec);
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        h.e(bArrDoFinal, "cipherDecrypt.doFinal(encryptedBytes)");
        return new String(bArrDoFinal, charset);
    }

    public static Typeface e(e font, Integer num) throws Resources.NotFoundException {
        h.g(font, "$this$font");
        if (num == null) {
            throw new IllegalArgumentException("font".concat(": You must specify a resource ID or literal value"));
        }
        if (num == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        Context context = font.f18183l;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{num.intValue()});
        try {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            Typeface font2 = null;
            if (resourceId != 0) {
                try {
                    font2 = ResourcesCompat.getFont(context, resourceId);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            return font2;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.a0
    public byte[] a(byte[] bArr, int r42, int r52) {
        byte[] bArr2 = new byte[r52];
        System.arraycopy(bArr, r42, bArr2, 0, r52);
        return bArr2;
    }

    @Override // va.p
    public void b(lb.b bVar) {
    }

    @Override // s4.ca
    public Object c(Object obj) {
        return new a.b((p9) obj);
    }

    @Override // l7.j
    public Object h() {
        return new ConcurrentSkipListMap();
    }

    public /* synthetic */ a(int r12) {
    }
}
