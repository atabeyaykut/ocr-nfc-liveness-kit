package p2;

import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Environment;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import java.io.File;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public abstract class a extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final ImagePickerActivity f12220a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ImagePickerActivity activity) {
        super(activity);
        h.f(activity, "activity");
        this.f12220a = activity;
    }

    public final File a(String str) {
        if (str != null) {
            return new File(str);
        }
        File externalFilesDir = getExternalFilesDir(Environment.DIRECTORY_DCIM);
        if (externalFilesDir == null) {
            externalFilesDir = this.f12220a.getFilesDir();
        }
        File file = externalFilesDir;
        h.e(file, "getExternalFilesDir(Envi…CIM) ?: activity.filesDir");
        return file;
    }

    public void b() {
    }

    public final void c(int r42) {
        String string = getString(r42);
        h.e(string, "getString(errorRes)");
        b();
        ImagePickerActivity imagePickerActivity = this.f12220a;
        imagePickerActivity.getClass();
        Intent intent = new Intent();
        intent.putExtra("extra.error", string);
        imagePickerActivity.setResult(64, intent);
        imagePickerActivity.finish();
    }
}
