package androidx.work;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.OneTimeWorkRequest;
import com.google.android.gms.internal.clearcut.d0;
import da.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0015\u0010\u0003\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\u0086\b\u001a\u001f\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\u0010\b\u0001\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004H\u0086\b¨\u0006\b"}, d2 = {"Landroidx/work/ListenableWorker;", ExifInterface.LONGITUDE_WEST, "Landroidx/work/OneTimeWorkRequest$Builder;", "OneTimeWorkRequestBuilder", "Lda/d;", "Landroidx/work/InputMerger;", "inputMerger", "setInputMerger", "work-runtime-ktx_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class OneTimeWorkRequestKt {
    public static final <W extends ListenableWorker> OneTimeWorkRequest.Builder OneTimeWorkRequestBuilder() {
        h.m();
        throw null;
    }

    public static final OneTimeWorkRequest.Builder setInputMerger(OneTimeWorkRequest.Builder builder, @NonNull d<? extends InputMerger> inputMerger) {
        h.f(builder, "<this>");
        h.f(inputMerger, "inputMerger");
        OneTimeWorkRequest.Builder inputMerger2 = builder.setInputMerger(d0.q(inputMerger));
        h.e(inputMerger2, "setInputMerger(inputMerger.java)");
        return inputMerger2;
    }
}
