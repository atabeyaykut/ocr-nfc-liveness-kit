package k8;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import e8.b;
import e8.j;
import java.util.Iterator;
import java.util.List;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes2.dex */
public final class f {

    public static final class a implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i8.c f8777a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.ViewHolder f8778b;

        public a(i8.c cVar, RecyclerView.ViewHolder viewHolder) {
            this.f8777a = cVar;
            this.f8778b = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View v10) {
            RecyclerView.ViewHolder viewHolder = this.f8778b;
            Object tag = viewHolder.itemView.getTag(R.id.fastadapter_item_adapter);
            if (!(tag instanceof e8.b)) {
                tag = null;
            }
            e8.b bVar = (e8.b) tag;
            if (bVar != null) {
                b.a aVar = e8.b.f5142o;
                int adapterPosition = viewHolder.getAdapterPosition();
                if (adapterPosition != -1) {
                    e8.b.f5142o.getClass();
                    j jVarA = b.a.a(viewHolder);
                    if (jVarA != null) {
                        i8.c cVar = this.f8777a;
                        if (cVar == null) {
                            throw new NullPointerException("null cannot be cast to non-null type com.mikepenz.fastadapter.listeners.ClickEventHook<Item>");
                        }
                        kotlin.jvm.internal.h.e(v10, "v");
                        ((i8.a) cVar).c(v10, adapterPosition, bVar, jVarA);
                    }
                }
            }
        }
    }

    public static final class b implements View.OnLongClickListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i8.c f8779a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.ViewHolder f8780b;

        public b(i8.c cVar, RecyclerView.ViewHolder viewHolder) {
            this.f8779a = cVar;
            this.f8780b = viewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View v10) {
            RecyclerView.ViewHolder viewHolder = this.f8780b;
            Object tag = viewHolder.itemView.getTag(R.id.fastadapter_item_adapter);
            if (!(tag instanceof e8.b)) {
                tag = null;
            }
            e8.b bVar = (e8.b) tag;
            if (bVar == null) {
                return false;
            }
            b.a aVar = e8.b.f5142o;
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == -1) {
                return false;
            }
            e8.b.f5142o.getClass();
            j jVarA = b.a.a(viewHolder);
            if (jVarA == null) {
                return false;
            }
            i8.c cVar = this.f8779a;
            if (cVar == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.mikepenz.fastadapter.listeners.LongClickEventHook<Item>");
            }
            kotlin.jvm.internal.h.e(v10, "v");
            return ((i8.e) cVar).c(v10, adapterPosition, bVar, jVarA);
        }
    }

    public static final class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i8.c f8781a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.ViewHolder f8782b;

        public c(i8.c cVar, RecyclerView.ViewHolder viewHolder) {
            this.f8781a = cVar;
            this.f8782b = viewHolder;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View v10, MotionEvent e10) {
            RecyclerView.ViewHolder viewHolder = this.f8782b;
            Object tag = viewHolder.itemView.getTag(R.id.fastadapter_item_adapter);
            if (!(tag instanceof e8.b)) {
                tag = null;
            }
            e8.b bVar = (e8.b) tag;
            if (bVar == null) {
                return false;
            }
            b.a aVar = e8.b.f5142o;
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == -1) {
                return false;
            }
            e8.b.f5142o.getClass();
            j jVarA = b.a.a(viewHolder);
            if (jVarA == null) {
                return false;
            }
            i8.c cVar = this.f8781a;
            if (cVar == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.mikepenz.fastadapter.listeners.TouchEventHook<Item>");
            }
            kotlin.jvm.internal.h.e(v10, "v");
            kotlin.jvm.internal.h.e(e10, "e");
            return ((i8.f) cVar).c(v10, e10, adapterPosition, bVar, jVarA);
        }
    }

    public static final <Item extends j<? extends RecyclerView.ViewHolder>> void a(i8.c<Item> attachToView, RecyclerView.ViewHolder viewHolder, View view) {
        kotlin.jvm.internal.h.f(attachToView, "$this$attachToView");
        kotlin.jvm.internal.h.f(view, "view");
        if (attachToView instanceof i8.a) {
            view.setOnClickListener(new a(attachToView, viewHolder));
            return;
        }
        if (attachToView instanceof i8.e) {
            view.setOnLongClickListener(new b(attachToView, viewHolder));
        } else if (attachToView instanceof i8.f) {
            view.setOnTouchListener(new c(attachToView, viewHolder));
        } else if (attachToView instanceof i8.b) {
            ((i8.b) attachToView).c();
        }
    }

    public static final void b(RecyclerView.ViewHolder viewHolder, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i8.c cVar = (i8.c) it.next();
            View viewA = cVar.a(viewHolder);
            if (viewA != null) {
                a(cVar, viewHolder, viewA);
            }
            cVar.b(viewHolder);
        }
    }
}
