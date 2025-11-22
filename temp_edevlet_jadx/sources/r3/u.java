package r3;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f14049a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14050b;

    public u(@NonNull Context context) {
        r.i(context);
        Resources resources = context.getResources();
        this.f14049a = resources;
        this.f14050b = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    @Nullable
    public final String a(@NonNull String str) {
        Resources resources = this.f14049a;
        int identifier = resources.getIdentifier(str, TypedValues.Custom.S_STRING, this.f14050b);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }
}
