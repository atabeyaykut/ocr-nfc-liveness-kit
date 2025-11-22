package gh;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class a {
    public static void a(Context context, String str) {
        Intent intent;
        File file = new File(context.getFilesDir(), str);
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                Uri uriForFile = FileProvider.getUriForFile(context, "tr.gov.turkiye.edevlet.kapisi.fileprovider", file);
                h.e(uriForFile, "getUriForFile(\n         …\", file\n                )");
                intent = new Intent("android.intent.action.VIEW");
                intent.setData(uriForFile);
                intent.setFlags(1);
            } else {
                intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.fromFile(file), "application/pdf");
            }
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            if (h.a("application/pdf", "application/pdf")) {
                Intent intent2 = new Intent("action.pdfpage.open");
                intent2.putExtra("isNativeData", true);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                context.startActivity(intent2);
            }
        } catch (Exception unused2) {
        }
    }
}
