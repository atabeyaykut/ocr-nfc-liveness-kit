package e8;

import androidx.recyclerview.widget.RecyclerView;
import e8.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public interface k<Item extends j<? extends RecyclerView.ViewHolder>> {
    void a(List list, int r22);

    void b(int r12, ArrayList arrayList);

    List<Item> c();

    Item get(int r12);

    int size();
}
