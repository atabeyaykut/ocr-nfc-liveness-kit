package s1;

import android.content.Context;
import android.content.res.Resources;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.RecyclerView;
import c5.y;
import com.esafirm.imagepicker.databinding.EfImagepickerItemImageBinding;
import com.esafirm.imagepicker.view.SquareFrameLayout;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import l9.j;
import l9.m;
import m9.t;
import mc.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import x9.l;

/* loaded from: classes.dex */
public final class g extends s1.a<a> {

    /* renamed from: c, reason: collision with root package name */
    public final l<Boolean, Boolean> f14844c;

    /* renamed from: d, reason: collision with root package name */
    public final j f14845d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f14846e;
    public l<? super List<d2.b>, m> f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap<Long, String> f14847g;

    public static final class a extends RecyclerView.ViewHolder {

        /* renamed from: a, reason: collision with root package name */
        public final ImageView f14848a;

        /* renamed from: b, reason: collision with root package name */
        public final View f14849b;

        /* renamed from: c, reason: collision with root package name */
        public final TextView f14850c;

        /* renamed from: d, reason: collision with root package name */
        public final SquareFrameLayout f14851d;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(EfImagepickerItemImageBinding efImagepickerItemImageBinding) {
            SquareFrameLayout squareFrameLayout = efImagepickerItemImageBinding.f2856a;
            super(squareFrameLayout);
            ImageView imageView = efImagepickerItemImageBinding.f2858c;
            kotlin.jvm.internal.h.e(imageView, "binding.imageView");
            this.f14848a = imageView;
            View view = efImagepickerItemImageBinding.f2859d;
            kotlin.jvm.internal.h.e(view, "binding.viewAlpha");
            this.f14849b = view;
            TextView textView = efImagepickerItemImageBinding.f2857b;
            kotlin.jvm.internal.h.e(textView, "binding.efItemFileTypeIndicator");
            this.f14850c = textView;
            kotlin.jvm.internal.h.d(squareFrameLayout, "null cannot be cast to non-null type android.widget.FrameLayout");
            this.f14851d = squareFrameLayout;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, y1.b imageLoader, List list, t1.j jVar) {
        super(context, imageLoader);
        kotlin.jvm.internal.h.f(imageLoader, "imageLoader");
        this.f14844c = jVar;
        this.f14845d = y.w(new h(this));
        ArrayList arrayList = new ArrayList();
        this.f14846e = arrayList;
        this.f14847g = new HashMap<>();
        List list2 = list;
        if (!list2.isEmpty()) {
            arrayList.addAll(list2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return ((AsyncListDiffer) this.f14845d.getValue()).getCurrentList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int r21) throws Resources.NotFoundException, SecurityException, IOException, IllegalArgumentException {
        final boolean z10;
        String string;
        boolean z11;
        Context context;
        boolean z12;
        String str;
        String strExtractMetadata;
        Long lU;
        a viewHolder2 = (a) viewHolder;
        kotlin.jvm.internal.h.f(viewHolder2, "viewHolder");
        List currentList = ((AsyncListDiffer) this.f14845d.getValue()).getCurrentList();
        kotlin.jvm.internal.h.e(currentList, "listDiffer.currentList");
        final d2.b bVar = (d2.b) t.d1(r21, currentList);
        if (bVar == null) {
            return;
        }
        ArrayList arrayList = this.f14846e;
        boolean z13 = arrayList instanceof Collection;
        String path = bVar.f4651c;
        if (z13 && arrayList.isEmpty()) {
            z10 = false;
        } else {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (kotlin.jvm.internal.h.a(((d2.b) it.next()).f4651c, path)) {
                    z10 = true;
                    break;
                }
            }
            z10 = false;
        }
        this.f14825b.a(bVar, viewHolder2.f14848a, y1.c.GALLERY);
        kotlin.jvm.internal.h.f(path, "path");
        boolean zX = mc.j.x(a2.b.g(path), "gif");
        Context context2 = this.f14824a;
        if (zX) {
            string = context2.getResources().getString(R.string.ef_gif);
            z11 = true;
        } else {
            string = "";
            z11 = false;
        }
        if (a2.b.k(bVar)) {
            HashMap<Long, String> map = this.f14847g;
            long j10 = bVar.f4649a;
            if (map.containsKey(Long.valueOf(j10))) {
                context = context2;
                z12 = true;
            } else {
                Uri uri = Uri.withAppendedPath(MediaStore.Files.getContentUri("external"), "" + j10);
                Long lValueOf = Long.valueOf(j10);
                kotlin.jvm.internal.h.e(uri, "uri");
                try {
                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                    mediaMetadataRetriever.setDataSource(context2, uri);
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
                    mediaMetadataRetriever.release();
                } catch (Exception unused) {
                }
                if (strExtractMetadata == null || (lU = i.u(strExtractMetadata)) == null) {
                    context = context2;
                } else {
                    long jLongValue = lU.longValue();
                    context = context2;
                    long j11 = 60;
                    try {
                        long j12 = (jLongValue / 1000) % j11;
                        long j13 = (jLongValue / 60000) % j11;
                        long j14 = (jLongValue / 3600000) % 24;
                        if (j14 > 0) {
                            str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j14), Long.valueOf(j13), Long.valueOf(j12)}, 3));
                            z12 = true;
                        } else {
                            Object[] objArr = new Object[2];
                            try {
                                objArr[0] = Long.valueOf(j13);
                                Long lValueOf2 = Long.valueOf(j12);
                                z12 = true;
                                try {
                                    objArr[1] = lValueOf2;
                                    str = String.format("%02d:%02d", Arrays.copyOf(objArr, 2));
                                } catch (Exception unused2) {
                                }
                            } catch (Exception unused3) {
                            }
                        }
                        kotlin.jvm.internal.h.e(str, "format(format, *args)");
                    } catch (Exception unused4) {
                    }
                    map.put(lValueOf, str);
                }
                z12 = true;
                str = "00:00";
                map.put(lValueOf, str);
            }
            string = map.get(Long.valueOf(j10));
        } else {
            context = context2;
            z12 = z11;
        }
        TextView textView = viewHolder2.f14850c;
        textView.setText(string);
        textView.setVisibility(z12 ? 0 : 8);
        viewHolder2.f14849b.setAlpha(z10 ? 0.5f : 0.0f);
        viewHolder2.itemView.setOnClickListener(new View.OnClickListener() { // from class: s1.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final g this$0 = this.f14834a;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                final d2.b image = bVar;
                kotlin.jvm.internal.h.f(image, "$image");
                boolean z14 = z10;
                boolean zBooleanValue = this$0.f14844c.invoke(Boolean.valueOf(z14)).booleanValue();
                ArrayList arrayList2 = this$0.f14846e;
                final int r42 = r21;
                if (z14) {
                    new Runnable() { // from class: s1.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            g this$02 = this$0;
                            kotlin.jvm.internal.h.f(this$02, "this$0");
                            d2.b image2 = image;
                            kotlin.jvm.internal.h.f(image2, "$image");
                            this$02.f14846e.remove(image2);
                            this$02.notifyItemChanged(r42);
                        }
                    }.run();
                    l<? super List<d2.b>, m> lVar = this$0.f;
                    if (lVar != null) {
                        lVar.invoke(arrayList2);
                        return;
                    }
                    return;
                }
                if (zBooleanValue) {
                    new Runnable() { // from class: s1.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            g this$02 = this$0;
                            kotlin.jvm.internal.h.f(this$02, "this$0");
                            d2.b image2 = image;
                            kotlin.jvm.internal.h.f(image2, "$image");
                            this$02.f14846e.add(image2);
                            this$02.notifyItemChanged(r42);
                        }
                    }.run();
                    l<? super List<d2.b>, m> lVar2 = this$0.f;
                    if (lVar2 != null) {
                        lVar2.invoke(arrayList2);
                    }
                }
            }
        });
        viewHolder2.f14851d.setForeground(z10 ? ContextCompat.getDrawable(context, R.drawable.ef_ic_done_white) : null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int r42) {
        kotlin.jvm.internal.h.f(parent, "parent");
        EfImagepickerItemImageBinding efImagepickerItemImageBindingBind = EfImagepickerItemImageBinding.bind(LayoutInflater.from(parent.getContext()).inflate(R.layout.ef_imagepicker_item_image, parent, false));
        kotlin.jvm.internal.h.e(efImagepickerItemImageBindingBind, "inflate(\n            Lay…          false\n        )");
        return new a(efImagepickerItemImageBindingBind);
    }
}
