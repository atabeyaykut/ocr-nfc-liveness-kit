package u1;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import androidx.core.content.FileProvider;
import b8.f;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.h;
import mc.n;
import org.jmrtd.lds.ImageInfo;
import t1.v;
import x9.l;

/* loaded from: classes.dex */
public final class c implements a {

    /* renamed from: a, reason: collision with root package name */
    public String f17798a;

    /* renamed from: b, reason: collision with root package name */
    public String f17799b;

    @Override // u1.a
    public final Intent a(Context context, c6.a aVar) {
        File file;
        Uri uriForFile;
        h.f(context, "context");
        File file2 = null;
        this.f17798a = null;
        this.f17799b = null;
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        v savePath = aVar.n();
        h.f(savePath, "savePath");
        boolean z10 = savePath.f15555b;
        String str = savePath.f15554a;
        if (z10) {
            file = new File(Build.VERSION.SDK_INT >= 29 ? context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) : Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), str);
        } else {
            file = new File(str);
        }
        if (!file.exists() && !file.mkdirs()) {
            String strE = androidx.browser.browseractions.b.e("Oops! Failed create ", str);
            if (strE != null) {
                Log.d("ImagePicker", strE);
            }
            file = null;
        }
        if (file != null) {
            String str2 = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.getDefault()).format(new Date());
            File file3 = new File(file, androidx.browser.browseractions.a.a("IMG_", str2, ".jpg"));
            int r82 = 0;
            while (file3.exists()) {
                r82++;
                file3 = new File(file, "IMG_" + str2 + '(' + r82 + ").jpg");
            }
            file2 = file3;
        }
        if (aVar.p() && file2 != null) {
            Context appContext = context.getApplicationContext();
            h.e(appContext, "appContext");
            this.f17798a = "file:" + file2.getAbsolutePath();
            if (Build.VERSION.SDK_INT >= 29) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", file2.getName());
                contentValues.put("mime_type", ImageInfo.JPEG_MIME_TYPE);
                uriForFile = appContext.getContentResolver().insert(MediaStore.Images.Media.getContentUri("external_primary"), contentValues);
            } else {
                Context applicationContext = appContext.getApplicationContext();
                String str3 = String.format(Locale.ENGLISH, "%s%s", Arrays.copyOf(new Object[]{applicationContext.getPackageName(), ".imagepicker.provider"}, 2));
                h.e(str3, "format(locale, format, *args)");
                uriForFile = FileProvider.getUriForFile(applicationContext, str3, file2);
                h.e(uriForFile, "getUriForFile(appContext, providerName, file)");
            }
            intent.putExtra("output", uriForFile);
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            h.e(listQueryIntentActivities, "context.packageManager\n …nager.MATCH_DEFAULT_ONLY)");
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (it.hasNext()) {
                context.grantUriPermission(it.next().activityInfo.packageName, uriForFile, 3);
            }
            this.f17799b = String.valueOf(uriForFile);
        }
        return intent;
    }

    @Override // u1.a
    public final void b(Context context) {
        String str = this.f17798a;
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        try {
            String str2 = this.f17799b;
            Uri uri = str2 != null ? Uri.parse(str2) : null;
            if (uri == null) {
                return;
            }
            context.getApplicationContext().getContentResolver().delete(uri, null, null);
        } catch (Exception e10) {
            Log.e("ImagePicker", "Can't delete cancelled uri");
            e10.printStackTrace();
        }
    }

    @Override // u1.a
    public final void c(final Context context, final l lVar) {
        String str = this.f17798a;
        if (str == null) {
            Log.w("ImagePicker", "currentImagePath null. This happen if you haven't call #getCameraIntent() or the activity is being recreated");
            lVar.invoke(null);
        } else {
            final Uri uri = Uri.parse(str);
            if (uri != null) {
                MediaScannerConnection.scanFile(context.getApplicationContext(), new String[]{uri.getPath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: u1.b
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public final void onScanCompleted(String str2, Uri finalUri) {
                        String strSubstring;
                        c this$0 = this.f17794a;
                        h.f(this$0, "this$0");
                        l imageReadyListener = lVar;
                        h.f(imageReadyListener, "$imageReadyListener");
                        Context context2 = context;
                        h.f(context2, "$context");
                        String str3 = "File " + str2 + " was scanned successfully: " + finalUri;
                        if (str3 != null) {
                            Log.d("ImagePicker", str3);
                        }
                        if (str2 == null) {
                            Log.d("ImagePicker", "This should not happen, go back to Immediate implementation");
                        }
                        if (finalUri == null) {
                            Log.d("ImagePicker", "scanFile is failed. Uri is null");
                        }
                        if (str2 == null) {
                            str2 = this$0.f17798a;
                            h.c(str2);
                        }
                        if (finalUri == null) {
                            finalUri = Uri.parse(this$0.f17799b);
                        }
                        h.e(finalUri, "finalUri");
                        long id2 = ContentUris.parseId(finalUri);
                        String separator = File.separator;
                        h.e(separator, "separator");
                        if (n.G(str2, separator, false)) {
                            strSubstring = str2.substring(n.Q(str2, separator, 6) + 1);
                            h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
                        } else {
                            strSubstring = str2;
                        }
                        imageReadyListener.invoke(f.S(new d2.b(id2, strSubstring, str2)));
                        context2.revokeUriPermission(uri, 3);
                    }
                });
            }
        }
    }
}
