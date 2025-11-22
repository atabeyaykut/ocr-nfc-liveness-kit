package f3;

import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class b extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map f5513a;

    public b(HashMap map) {
        this.f5513a = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        String string;
        Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        Map map = this.f5513a;
        for (String str : map.keySet()) {
            builderBuildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        String string2 = builderBuildUpon.build().toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string2).openConnection();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(string2).length() + 65);
                    sb2.append("Received non-success response code ");
                    sb2.append(responseCode);
                    sb2.append(" from pinging URL: ");
                    sb2.append(string2);
                    Log.w("HttpUrlPinger", sb2.toString());
                }
                httpURLConnection.disconnect();
            } catch (Throwable th2) {
                httpURLConnection.disconnect();
                throw th2;
            }
        } catch (IOException e10) {
            e = e10;
            String message = e.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(string2).length() + 27 + String.valueOf(message).length());
            sb3.append("Error while pinging URL: ");
            sb3.append(string2);
            sb3.append(". ");
            sb3.append(message);
            string = sb3.toString();
            Log.w("HttpUrlPinger", string, e);
        } catch (IndexOutOfBoundsException e11) {
            e = e11;
            String message2 = e.getMessage();
            StringBuilder sb4 = new StringBuilder(String.valueOf(string2).length() + 32 + String.valueOf(message2).length());
            sb4.append("Error while parsing ping URL: ");
            sb4.append(string2);
            sb4.append(". ");
            sb4.append(message2);
            string = sb4.toString();
            Log.w("HttpUrlPinger", string, e);
        } catch (RuntimeException e12) {
            e = e12;
            String message3 = e.getMessage();
            StringBuilder sb32 = new StringBuilder(String.valueOf(string2).length() + 27 + String.valueOf(message3).length());
            sb32.append("Error while pinging URL: ");
            sb32.append(string2);
            sb32.append(". ");
            sb32.append(message3);
            string = sb32.toString();
            Log.w("HttpUrlPinger", string, e);
        }
    }
}
