package xf;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class h extends LinearLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context) {
        super(context, null, 0);
        kotlin.jvm.internal.h.f(context, "context");
        View.inflate(context, R.layout.item_divider, this);
        setOrientation(1);
    }
}
