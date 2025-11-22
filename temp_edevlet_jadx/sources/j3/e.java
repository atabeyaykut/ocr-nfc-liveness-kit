package j3;

import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public static final u3.a f7985c = new u3.a("RevokeAccessOperation", new String[0]);

    /* renamed from: a, reason: collision with root package name */
    public final String f7986a;

    /* renamed from: b, reason: collision with root package name */
    public final o3.l f7987b;

    public e(String str) {
        r3.r.f(str);
        this.f7986a = str;
        this.f7987b = new o3.l(null);
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        String strConcat;
        u3.a aVar = f7985c;
        Status status = Status.f2975h;
        try {
            String strValueOf = String.valueOf(this.f7986a);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strValueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(strValueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f;
            } else {
                aVar.getClass();
                Log.e(aVar.f17871a, aVar.f17872b.concat("Unable to revoke access!"));
            }
            StringBuilder sb2 = new StringBuilder(26);
            sb2.append("Response Code: ");
            sb2.append(responseCode);
            aVar.a(sb2.toString(), new Object[0]);
        } catch (IOException e10) {
            String strValueOf2 = String.valueOf(e10.toString());
            strConcat = strValueOf2.length() != 0 ? "IOException when revoking access: ".concat(strValueOf2) : new String("IOException when revoking access: ");
            aVar.getClass();
            Log.e(aVar.f17871a, aVar.f17872b.concat(strConcat));
            this.f7987b.e(status);
        } catch (Exception e11) {
            String strValueOf3 = String.valueOf(e11.toString());
            strConcat = strValueOf3.length() != 0 ? "Exception when revoking access: ".concat(strValueOf3) : new String("Exception when revoking access: ");
            aVar.getClass();
            Log.e(aVar.f17871a, aVar.f17872b.concat(strConcat));
            this.f7987b.e(status);
        }
        this.f7987b.e(status);
    }
}
