package kg;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.epoxy.g;

/* loaded from: classes3.dex */
public final class a extends g {
    public a(Context context) {
        super(context);
    }

    @Override // com.airbnb.epoxy.EpoxyRecyclerView
    public final RecyclerView.LayoutManager b() {
        return new GridLayoutManager(getContext(), 2, 1, false);
    }
}
