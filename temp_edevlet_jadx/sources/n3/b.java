package n3;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class b extends Exception {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    @Deprecated
    public final Status f10545a;

    /* JADX WARN: Illegal instructions before constructor call */
    public b(@NonNull Status status) {
        int r02 = status.f2979b;
        String str = status.f2980c;
        super(r02 + ": " + (str == null ? "" : str));
        this.f10545a = status;
    }
}
