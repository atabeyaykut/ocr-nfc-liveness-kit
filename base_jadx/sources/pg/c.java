package pg;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class c {

    public static final class a extends kotlin.jvm.internal.j implements x9.l<v.e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13202a = new a();

        public a() {
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

    public static void a(Context context, String str, String str2) {
        Intent intent;
        kotlin.jvm.internal.h.f(context, "context");
        File file = new File(context.getFilesDir(), str);
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                Uri uriForFile = FileProvider.getUriForFile(context, "tr.gov.turkiye.edevlet.kapisi.fileprovider", file);
                kotlin.jvm.internal.h.e(uriForFile, "getUriForFile(\n         …\", file\n                )");
                intent = new Intent("android.intent.action.VIEW");
                intent.setData(uriForFile);
                intent.setFlags(1);
            } else {
                intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.fromFile(file), str2);
            }
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            if (!kotlin.jvm.internal.h.a(str2, "application/pdf")) {
                v.e eVar = new v.e(context);
                v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.external_no_app_excel_content, eVar, null, 6, R.string.external_no_app_excel_content_close), null, pg.a.f13200a, 2);
                eVar.show();
            } else {
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

    public static void b(u8.a context, File file, String str) {
        kotlin.jvm.internal.h.f(context, "context");
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                Uri uriForFile = FileProvider.getUriForFile(context, "tr.gov.turkiye.edevlet.kapisi.fileprovider", file);
                kotlin.jvm.internal.h.e(uriForFile, "getUriForFile(\n         …\", file\n                )");
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uriForFile);
                intent.setFlags(1);
                context.startActivity(intent);
            } else {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setDataAndType(Uri.fromFile(file), str);
                context.startActivity(intent2);
            }
        } catch (ActivityNotFoundException unused) {
            if (!kotlin.jvm.internal.h.a(str, "application/pdf")) {
                v.e eVar = new v.e(context);
                v.e.c(eVar, null, context.getString(R.string.external_no_app_common_content, str), 5);
                v.e.e(eVar, Integer.valueOf(R.string.external_no_app_common_content_close), null, b.f13201a, 2);
                eVar.show();
                return;
            }
            String name = file.getName();
            kotlin.jvm.internal.h.e(name, "file.name");
            Intent intent3 = new Intent("action.pdfpage.open");
            intent3.putExtra("isNativeData", false);
            intent3.putExtra("fileName", name);
            if (Build.VERSION.SDK_INT >= 34) {
                intent3.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            context.startActivity(intent3);
        } catch (Exception unused2) {
        }
    }

    public static void c(Context context, String pdfUrl) {
        kotlin.jvm.internal.h.f(context, "context");
        kotlin.jvm.internal.h.f(pdfUrl, "pdfUrl");
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(pdfUrl));
            intent.addCategory("android.intent.category.BROWSABLE");
            context.startActivity(intent);
        } catch (Exception unused) {
            v.e eVar = new v.e(context);
            v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.dialog_no_activity_external_link, eVar, null, 6, R.string.dialog_no_activity_external_link_close_button), null, a.f13202a, 2);
            eVar.show();
        }
    }
}
