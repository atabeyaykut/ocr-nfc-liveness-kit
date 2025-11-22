package cg;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.widget.Toast;
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
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;
import x9.l;

/* loaded from: classes3.dex */
public final class j {

    public static final class a extends kotlin.jvm.internal.j implements l<v.e, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2406b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Activity f2407c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Activity activity) {
            super(1);
            this.f2406b = str;
            this.f2407c = activity;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            j.this.getClass();
            j.b(this.f2407c, this.f2406b);
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f2408a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements l<v.e, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f2410b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(1);
            this.f2410b = context;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            j.a(j.this, this.f2410b);
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements l<v.e, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f2412b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
            super(1);
            this.f2412b = context;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            j.a(j.this, this.f2412b);
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ SharedPreferences.Editor f2413a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(SharedPreferences.Editor editor) {
            super(1);
            this.f2413a = editor;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            long jCurrentTimeMillis = System.currentTimeMillis();
            SharedPreferences.Editor editor = this.f2413a;
            editor.putLong("lastTimeActionDone", jCurrentTimeMillis);
            editor.apply();
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final void a(j jVar, Context context) {
        jVar.getClass();
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName())));
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, R.string.toast_market_not_found, 1).show();
        }
    }

    public static void b(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addCategory("android.intent.category.BROWSABLE");
            activity.startActivity(intent);
        } catch (Exception unused) {
            v.e eVar = new v.e(activity);
            v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.dialog_no_activity_external_link, eVar, null, 6, R.string.dialog_no_activity_external_link_close_button), null, g.f2402a, 2);
            eVar.show();
        }
    }

    public static String c(Context context, String key) throws BadPaddingException, CharacterCodingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        kotlin.jvm.internal.h.f(context, "context");
        kotlin.jvm.internal.h.f(key, "key");
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
        byte[] bytes = key.getBytes(charset);
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

    public static boolean d(Uri uri, LoginActivity activity) {
        kotlin.jvm.internal.h.f(activity, "activity");
        if (mc.j.x(uri.toString(), "tel:160")) {
            v.e eVar = new v.e(activity);
            v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.popup_title_160, eVar, null, 6, R.string.popup_positive_160), null, new h(activity), 2);
            v.e.d(eVar, Integer.valueOf(R.string.popup_negative_160), i.f2404a);
            eVar.show();
            return true;
        }
        if (!kotlin.jvm.internal.h.a(uri.getScheme(), "market")) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            activity.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(activity, activity.getString(R.string.toast_market_not_found), 1).show();
            return false;
        }
    }

    public final void e(boolean z10, String str, String str2, Activity activity) {
        kotlin.jvm.internal.h.f(activity, "activity");
        if (!z10) {
            b(activity, str2);
            return;
        }
        if (str == null) {
            str = activity.getString(R.string.dialog_text_to_open_external_link);
        }
        v.e eVar = new v.e(activity);
        v.e.c(eVar, null, str, 5);
        v.e.e(eVar, Integer.valueOf(R.string.dialog_positive_button_text_to_open_external_link), null, new a(str2, activity), 2);
        v.e.d(eVar, Integer.valueOf(R.string.dialog_no_activity_external_link_close_button), b.f2408a);
        eVar.show();
    }

    public final void f(Context context, String str, String str2, String str3, SharedPreferences.Editor editor, SharedPreferences sharedPreferences) {
        v.e eVar;
        kotlin.jvm.internal.h.f(context, "context");
        if (str2 != null) {
            if (!(sharedPreferences.contains("lastTimeActionDone") && System.currentTimeMillis() - sharedPreferences.getLong("lastTimeActionDone", 0L) < 86400000) || kotlin.jvm.internal.h.a(str2, "required")) {
                if (kotlin.jvm.internal.h.a(str2, "required")) {
                    eVar = new v.e(context);
                    v.e.f(eVar, null, str, 1);
                    eVar.b(false);
                    v.e.c(eVar, null, str3, 5);
                    v.e.e(eVar, Integer.valueOf(R.string.force_update_dialog_update), null, new c(context), 2);
                } else {
                    eVar = new v.e(context);
                    v.e.f(eVar, null, str, 1);
                    v.e.c(eVar, null, str3, 5);
                    eVar.a();
                    eVar.b(true);
                    v.e.e(eVar, Integer.valueOf(R.string.force_update_dialog_update), null, new d(context), 2);
                    v.e.d(eVar, Integer.valueOf(R.string.force_update_dialog_update_later), new e(editor));
                }
                eVar.show();
            }
        }
    }
}
