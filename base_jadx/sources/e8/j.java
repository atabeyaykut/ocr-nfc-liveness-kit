package e8;

import androidx.annotation.IdRes;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;

/* loaded from: classes2.dex */
public interface j<VH extends RecyclerView.ViewHolder> extends i {
    boolean a();

    void c(VH vh2);

    void d(RecyclerView.ViewHolder viewHolder);

    void e(boolean z10);

    void f(VH vh2);

    void g();

    @IdRes
    void getType();

    boolean h();

    boolean isEnabled();

    void j(VH vh2, List<? extends Object> list);

    void l(VH vh2);
}
