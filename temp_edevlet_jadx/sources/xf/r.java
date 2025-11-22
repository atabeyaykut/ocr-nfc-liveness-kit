package xf;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class r extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f19241a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Context context) {
        super(context, null, 0);
        kotlin.jvm.internal.h.f(context, "context");
        View.inflate(context, R.layout.item_title, this);
        setOrientation(0);
        View viewFindViewById = findViewById(R.id.header_title);
        kotlin.jvm.internal.h.e(viewFindViewById, "findViewById(R.id.header_title)");
        this.f19241a = (TextView) viewFindViewById;
    }

    public final void setTitle(int r22) {
        this.f19241a.setText(r22);
    }
}
