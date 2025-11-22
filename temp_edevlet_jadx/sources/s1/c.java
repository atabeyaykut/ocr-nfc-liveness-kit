package s1;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.esafirm.imagepicker.databinding.EfImagepickerItemFolderBinding;
import java.util.ArrayList;
import l9.m;
import m9.t;
import tr.gov.turkiye.edevlet.kapisi.R;
import x9.l;

/* loaded from: classes.dex */
public final class c extends s1.a<a> {

    /* renamed from: c, reason: collision with root package name */
    public final l<d2.a, m> f14829c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f14830d;

    public static final class a extends RecyclerView.ViewHolder {

        /* renamed from: a, reason: collision with root package name */
        public final ImageView f14831a;

        /* renamed from: b, reason: collision with root package name */
        public final TextView f14832b;

        /* renamed from: c, reason: collision with root package name */
        public final TextView f14833c;

        public a(EfImagepickerItemFolderBinding efImagepickerItemFolderBinding) {
            super(efImagepickerItemFolderBinding.f2852a);
            ImageView imageView = efImagepickerItemFolderBinding.f2853b;
            kotlin.jvm.internal.h.e(imageView, "binding.image");
            this.f14831a = imageView;
            TextView textView = efImagepickerItemFolderBinding.f2854c;
            kotlin.jvm.internal.h.e(textView, "binding.tvName");
            this.f14832b = textView;
            TextView textView2 = efImagepickerItemFolderBinding.f2855d;
            kotlin.jvm.internal.h.e(textView2, "binding.tvNumber");
            this.f14833c = textView2;
        }
    }

    public c(Context context, y1.b bVar, z1.a aVar) {
        super(context, bVar);
        this.f14829c = aVar;
        this.f14830d = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f14830d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int r72) {
        a holder = (a) viewHolder;
        kotlin.jvm.internal.h.f(holder, "holder");
        d2.a aVar = (d2.a) t.d1(r72, this.f14830d);
        if (aVar == null) {
            return;
        }
        ArrayList arrayList = aVar.f4648b;
        this.f14825b.a((d2.b) t.a1(arrayList), holder.f14831a, y1.c.FOLDER);
        holder.f14832b.setText(aVar.f4647a);
        holder.f14833c.setText(String.valueOf(arrayList.size()));
        holder.itemView.setOnClickListener(new b(0, this, aVar));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int r42) {
        kotlin.jvm.internal.h.f(parent, "parent");
        EfImagepickerItemFolderBinding efImagepickerItemFolderBindingBind = EfImagepickerItemFolderBinding.bind(LayoutInflater.from(parent.getContext()).inflate(R.layout.ef_imagepicker_item_folder, parent, false));
        kotlin.jvm.internal.h.e(efImagepickerItemFolderBindingBind, "inflate(\n            Lay…          false\n        )");
        return new a(efImagepickerItemFolderBindingBind);
    }
}
