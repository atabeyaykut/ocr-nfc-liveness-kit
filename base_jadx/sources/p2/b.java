package p2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import c5.w;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f12221d = {"android.permission.CAMERA"};

    /* renamed from: b, reason: collision with root package name */
    public File f12222b;

    /* renamed from: c, reason: collision with root package name */
    public final File f12223c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ImagePickerActivity activity) {
        super(activity);
        h.f(activity, "activity");
        Intent intent = activity.getIntent();
        h.e(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        this.f12223c = a((extras == null ? new Bundle() : extras).getString("extra.save_directory"));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] d(android.content.Context r7) {
        /*
            java.lang.String[] r0 = p2.b.f12221d
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            r0 = r0[r2]
            java.lang.String r3 = "context"
            kotlin.jvm.internal.h.f(r7, r3)
            java.lang.String r3 = "permission"
            kotlin.jvm.internal.h.f(r0, r3)
            android.content.pm.PackageManager r3 = r7.getPackageManager()
            java.lang.String r7 = r7.getPackageName()
            r4 = 4096(0x1000, float:5.74E-42)
            android.content.pm.PackageInfo r7 = r3.getPackageInfo(r7, r4)
            java.lang.String[] r7 = r7.requestedPermissions
            r3 = 1
            if (r7 == 0) goto L32
            int r4 = r7.length
            if (r4 != 0) goto L2c
            r4 = 1
            goto L2d
        L2c:
            r4 = 0
        L2d:
            if (r4 == 0) goto L30
            goto L32
        L30:
            r4 = 0
            goto L33
        L32:
            r4 = 1
        L33:
            if (r4 == 0) goto L36
            goto L46
        L36:
            int r4 = r7.length
            r5 = 0
        L38:
            if (r5 >= r4) goto L46
            r6 = r7[r5]
            boolean r6 = kotlin.jvm.internal.h.a(r6, r0)
            if (r6 == 0) goto L43
            goto L47
        L43:
            int r5 = r5 + 1
            goto L38
        L46:
            r3 = 0
        L47:
            if (r3 == 0) goto L4c
            r1.add(r0)
        L4c:
            java.lang.String[] r7 = new java.lang.String[r2]
            java.lang.Object[] r7 = r1.toArray(r7)
            if (r7 == 0) goto L57
            java.lang.String[] r7 = (java.lang.String[]) r7
            return r7
        L57:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "null cannot be cast to non-null type kotlin.Array<T>"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p2.b.d(android.content.Context):java.lang.String[]");
    }

    public static boolean e(Context context) {
        for (String permission : d(context)) {
            h.f(permission, "permission");
            if (true ^ (ContextCompat.checkSelfPermission(context, permission) == 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // p2.a
    public final void b() {
        File file = this.f12222b;
        if (file != null) {
            file.delete();
        }
        this.f12222b = null;
    }

    public final void f() throws IOException {
        Uri uriFromFile;
        if (!(new Intent("android.media.action.IMAGE_CAPTURE").resolveActivity(getPackageManager()) != null)) {
            c(R.string.error_camera_app_not_found);
            return;
        }
        boolean zE = e(this);
        ImagePickerActivity imagePickerActivity = this.f12220a;
        if (!zE) {
            ActivityCompat.requestPermissions(imagePickerActivity, d(imagePickerActivity), 4282);
            return;
        }
        File fileR = w.r(this.f12223c, null);
        this.f12222b = fileR;
        if (fileR == null || !fileR.exists()) {
            c(R.string.error_failed_to_create_camera_image_file);
            return;
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (Build.VERSION.SDK_INT >= 24) {
            uriFromFile = FileProvider.getUriForFile(this, getPackageName() + getString(R.string.image_picker_provider_authority_suffix), fileR);
        } else {
            uriFromFile = Uri.fromFile(fileR);
        }
        intent.putExtra("output", uriFromFile);
        imagePickerActivity.startActivityForResult(intent, 4281);
    }
}
