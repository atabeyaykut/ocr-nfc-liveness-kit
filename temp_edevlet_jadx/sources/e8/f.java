package e8;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;

/* loaded from: classes2.dex */
public interface f<VH extends RecyclerView.ViewHolder> extends n<VH>, j<Object> {
    List<n<?>> b();

    boolean isExpanded();
}
