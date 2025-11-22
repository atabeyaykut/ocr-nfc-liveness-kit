package p2;

import android.content.Intent;
import android.os.Bundle;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class f extends a {

    /* renamed from: b, reason: collision with root package name */
    public final String[] f12235b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ImagePickerActivity activity) {
        super(activity);
        h.f(activity, "activity");
        Intent intent = activity.getIntent();
        h.e(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        String[] stringArray = (extras == null ? new Bundle() : extras).getStringArray("extra.mime_types");
        this.f12235b = stringArray == null ? new String[0] : stringArray;
    }
}
