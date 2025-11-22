package t1;

import android.content.Intent;
import android.widget.Toast;
import com.esafirm.imagepicker.databinding.EfFragmentImagePickerBinding;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class k extends kotlin.jvm.internal.j implements x9.l<w, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f15537a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(g gVar) {
        super(1);
        this.f15537a = gVar;
    }

    @Override // x9.l
    public final l9.m invoke(w wVar) {
        Throwable th2;
        Boolean bool;
        List<d2.b> list;
        w state = wVar;
        kotlin.jvm.internal.h.f(state, "state");
        g gVar = this.f15537a;
        EfFragmentImagePickerBinding efFragmentImagePickerBinding = gVar.f15521a;
        boolean z10 = state.f15559d;
        if (efFragmentImagePickerBinding != null) {
            efFragmentImagePickerBinding.f2849c.setVisibility(z10 ? 0 : 8);
            efFragmentImagePickerBinding.f2850d.setVisibility(z10 ? 8 : 0);
            efFragmentImagePickerBinding.f2851e.setVisibility(8);
        }
        l9.m mVar = null;
        c2.c<Throwable> cVar = state.f15560e;
        if (cVar == null || cVar.f1373b) {
            th2 = null;
        } else {
            cVar.f1373b = true;
            th2 = cVar.f1372a;
        }
        if (th2 != null) {
            Toast.makeText(gVar.getActivity(), th2 instanceof NullPointerException ? "Images do not exist" : "Unknown Error", 0).show();
        }
        List<d2.b> list2 = state.f15556a;
        if (!list2.isEmpty() || z10) {
            c2.c<Boolean> cVar2 = state.f15558c;
            if (cVar2 == null || cVar2.f1373b) {
                bool = null;
            } else {
                cVar2.f1373b = true;
                bool = cVar2.f1372a;
            }
            if (bool != null) {
                if (bool.booleanValue()) {
                    z1.b bVar = gVar.f15522b;
                    if (bVar == null) {
                        kotlin.jvm.internal.h.n("recyclerViewManager");
                        throw null;
                    }
                    bVar.e(state.f15557b);
                    gVar.E();
                } else {
                    z1.b bVar2 = gVar.f15522b;
                    if (bVar2 == null) {
                        kotlin.jvm.internal.h.n("recyclerViewManager");
                        throw null;
                    }
                    bVar2.f(list2);
                    gVar.E();
                }
            }
            c2.c<List<d2.b>> cVar3 = state.f;
            if (cVar3 == null || cVar3.f1373b) {
                list = null;
            } else {
                cVar3.f1373b = true;
                list = cVar3.f1372a;
            }
            if (list != null) {
                List<d2.b> list3 = list;
                l lVar = gVar.f15527h;
                if (lVar == null) {
                    kotlin.jvm.internal.h.n("interactionListener");
                    throw null;
                }
                Intent intent = new Intent();
                intent.putParcelableArrayListExtra("selectedImages", new ArrayList<>(list3));
                lVar.k(intent);
            }
            c2.c<l9.m> cVar4 = state.f15561g;
            if (cVar4 != null && !cVar4.f1373b) {
                cVar4.f1373b = true;
                mVar = cVar4.f1372a;
            }
            if (mVar != null) {
                gVar.C();
            }
        } else {
            EfFragmentImagePickerBinding efFragmentImagePickerBinding2 = gVar.f15521a;
            if (efFragmentImagePickerBinding2 != null) {
                efFragmentImagePickerBinding2.f2849c.setVisibility(8);
                efFragmentImagePickerBinding2.f2850d.setVisibility(8);
                efFragmentImagePickerBinding2.f2851e.setVisibility(0);
            }
        }
        return l9.m.f9594a;
    }
}
