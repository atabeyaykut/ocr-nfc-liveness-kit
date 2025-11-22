package he;

import android.view.ViewParent;
import androidx.viewbinding.ViewBinding;
import com.airbnb.epoxy.v;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public abstract class a<T extends ViewBinding> extends v<c> {
    public abstract void bind(T t10);

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void bind(c holder) {
        h.f(holder, "holder");
        ViewBinding viewBinding = holder.f7107c;
        if (viewBinding != null) {
            bind((a<T>) viewBinding);
        } else {
            h.n("viewBinding");
            throw null;
        }
    }

    @Override // com.airbnb.epoxy.v
    public c createNewHolder(ViewParent parent) {
        h.f(parent, "parent");
        return new c(getClass());
    }
}
