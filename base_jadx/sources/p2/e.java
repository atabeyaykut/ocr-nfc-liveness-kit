package p2;

import android.content.Intent;
import android.os.Bundle;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import java.io.File;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class e extends a {

    /* renamed from: b, reason: collision with root package name */
    public final int f12229b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12230c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f12231d;

    /* renamed from: e, reason: collision with root package name */
    public final float f12232e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public File f12233g;

    /* renamed from: h, reason: collision with root package name */
    public final File f12234h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ImagePickerActivity activity) {
        super(activity);
        h.f(activity, "activity");
        Intent intent = activity.getIntent();
        h.e(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        extras = extras == null ? new Bundle() : extras;
        this.f12229b = extras.getInt("extra.max_width", 0);
        this.f12230c = extras.getInt("extra.max_height", 0);
        this.f12231d = extras.getBoolean("extra.crop", false);
        this.f12232e = extras.getFloat("extra.crop_x", 0.0f);
        this.f = extras.getFloat("extra.crop_y", 0.0f);
        this.f12234h = a(extras.getString("extra.save_directory"));
    }

    @Override // p2.a
    public final void b() {
        File file = this.f12233g;
        if (file != null) {
            file.delete();
        }
        this.f12233g = null;
    }
}
