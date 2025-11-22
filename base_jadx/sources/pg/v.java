package pg;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class v {

    public static final class a extends kotlin.jvm.internal.j implements x9.l<v.e, l9.m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f13227b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Activity f13228c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Activity activity) {
            super(1);
            this.f13227b = str;
            this.f13228c = activity;
        }

        @Override // x9.l
        public final l9.m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            v.this.getClass();
            v.a(this.f13228c, this.f13227b);
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<v.e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f13229a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static void a(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addCategory("android.intent.category.BROWSABLE");
            activity.startActivity(intent);
        } catch (Exception unused) {
            v.e eVar = new v.e(activity);
            v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.dialog_no_activity_external_link, eVar, null, 6, R.string.dialog_no_activity_external_link_close_button), null, u.f13225a, 2);
            eVar.show();
        }
    }

    public static String b(Context context, String str) throws BadPaddingException, CharacterCodingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        kotlin.jvm.internal.h.f(context, "context");
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
        kotlin.jvm.internal.h.e(messageDigest, "getInstance(\"SHA-256\")");
        Charset charset = mc.a.f10357a;
        byte[] bytes = str.getBytes(charset);
        kotlin.jvm.internal.h.e(bytes, "this as java.lang.String).getBytes(charset)");
        messageDigest.update(bytes);
        System.arraycopy(messageDigest.digest(), 0, bArr3, 0, 16);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        kotlin.jvm.internal.h.e(cipher, "getInstance(\"AES/CBC/PKCS5Padding\")");
        cipher.init(2, secretKeySpec, ivParameterSpec);
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        kotlin.jvm.internal.h.e(bArrDoFinal, "cipherDecrypt.doFinal(encryptedBytes)");
        return new String(bArrDoFinal, charset);
    }

    public final void c(boolean z10, String str, String str2, Activity activity) {
        kotlin.jvm.internal.h.f(activity, "activity");
        if (!z10) {
            a(activity, str2);
            return;
        }
        if (str == null) {
            str = activity.getString(R.string.dialog_text_to_open_external_link);
        }
        v.e eVar = new v.e(activity);
        v.e.c(eVar, null, str, 5);
        v.e.e(eVar, Integer.valueOf(R.string.dialog_positive_button_text_to_open_external_link), null, new a(str2, activity), 2);
        v.e.d(eVar, Integer.valueOf(R.string.dialog_no_activity_external_link_close_button), b.f13229a);
        eVar.show();
    }
}
