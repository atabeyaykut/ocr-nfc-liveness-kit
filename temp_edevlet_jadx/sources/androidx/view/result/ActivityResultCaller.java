package androidx.view.result;

import androidx.annotation.NonNull;
import androidx.view.result.contract.ActivityResultContract;

/* loaded from: classes.dex */
public interface ActivityResultCaller {
    @NonNull
    <I, O> ActivityResultLauncher<I> registerForActivityResult(@NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultCallback<O> activityResultCallback);

    @NonNull
    <I, O> ActivityResultLauncher<I> registerForActivityResult(@NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultRegistry activityResultRegistry, @NonNull ActivityResultCallback<O> activityResultCallback);
}
