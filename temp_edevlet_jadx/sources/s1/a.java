package s1;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;

/* loaded from: classes.dex */
public abstract class a<T extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f14824a;

    /* renamed from: b, reason: collision with root package name */
    public final y1.b f14825b;

    public a(Context context, y1.b imageLoader) {
        kotlin.jvm.internal.h.f(imageLoader, "imageLoader");
        this.f14824a = context;
        this.f14825b = imageLoader;
        kotlin.jvm.internal.h.e(LayoutInflater.from(context), "from(context)");
    }
}
