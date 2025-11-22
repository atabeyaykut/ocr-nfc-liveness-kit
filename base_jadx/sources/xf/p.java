package xf;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class p extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f19235a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f19236b;

    /* renamed from: c, reason: collision with root package name */
    public View.OnClickListener f19237c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Context context) {
        super(context, null, 0);
        kotlin.jvm.internal.h.f(context, "context");
        View.inflate(context, R.layout.item_grid_title, this);
        setOrientation(0);
        View viewFindViewById = findViewById(R.id.header_title);
        kotlin.jvm.internal.h.e(viewFindViewById, "findViewById(R.id.header_title)");
        this.f19235a = (TextView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.header_more);
        kotlin.jvm.internal.h.e(viewFindViewById2, "findViewById(R.id.header_more)");
        this.f19236b = (TextView) viewFindViewById2;
    }

    public final View.OnClickListener getAllListener() {
        return this.f19237c;
    }

    public final void setAllListener(View.OnClickListener onClickListener) {
        this.f19237c = onClickListener;
    }

    public final void setShowAllTitle(int r22) {
        this.f19236b.setText(r22);
    }

    public final void setTitle(int r22) {
        this.f19235a.setText(r22);
    }
}
