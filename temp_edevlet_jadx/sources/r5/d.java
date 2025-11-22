package r5;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import b8.f;
import java.io.CharConversionException;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f14329a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14330b;

    public d(Context context, String str, String str2) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("keysetName cannot be null");
        }
        this.f14330b = str;
        Context applicationContext = context.getApplicationContext();
        this.f14329a = str2 == null ? PreferenceManager.getDefaultSharedPreferences(applicationContext) : applicationContext.getSharedPreferences(str2, 0);
    }

    public final byte[] a() throws IOException {
        String str = this.f14330b;
        try {
            String string = this.f14329a.getString(str, null);
            if (string != null) {
                return f.w(string);
            }
            throw new FileNotFoundException(String.format("can't read keyset; the pref value %s does not exist", str));
        } catch (ClassCastException | IllegalArgumentException unused) {
            throw new CharConversionException(String.format("can't read keyset; the pref value %s is not a valid hex string", str));
        }
    }
}
