package xf;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class x extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f19243a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f19244b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(Context context) {
        super(context, null, 0);
        kotlin.jvm.internal.h.f(context, "context");
        View.inflate(context, R.layout.item_name_surname_merge, this);
        setOrientation(0);
        View viewFindViewById = findViewById(R.id.title_name);
        kotlin.jvm.internal.h.e(viewFindViewById, "findViewById(R.id.title_name)");
        this.f19243a = (TextView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.content_name);
        kotlin.jvm.internal.h.e(viewFindViewById2, "findViewById(R.id.content_name)");
        this.f19244b = (TextView) viewFindViewById2;
    }

    public final void setContent(String str) {
        this.f19244b.setText(str);
    }

    public final void setTitle(int r22) {
        this.f19243a.setText(r22);
    }
}
