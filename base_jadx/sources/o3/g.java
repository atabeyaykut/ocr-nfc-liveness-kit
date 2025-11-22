package o3;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* loaded from: classes.dex */
public interface g {
    void g(@NonNull LifecycleCallback lifecycleCallback);

    @Nullable
    LifecycleCallback h();

    @Nullable
    Activity k();

    void startActivityForResult(@NonNull Intent intent, int r22);
}
