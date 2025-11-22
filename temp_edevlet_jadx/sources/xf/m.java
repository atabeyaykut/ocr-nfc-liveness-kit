package xf;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public final class m extends com.airbnb.epoxy.g {
    public m(Context context) {
        super(context);
    }

    @Override // com.airbnb.epoxy.EpoxyRecyclerView
    public final RecyclerView.LayoutManager b() {
        return new GridLayoutManager(getContext(), 2, 0, false);
    }
}
