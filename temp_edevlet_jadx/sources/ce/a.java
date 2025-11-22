package ce;

import android.text.Editable;
import android.view.View;
import androidx.camera.core.Camera;
import da.m;
import java.util.List;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.barcode.qr.BarcodeScanningActivity;
import tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.search.databinding.FragmentSearchBinding;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2382a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2383b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2384c;

    public /* synthetic */ a(int r12, Object obj, Object obj2) {
        this.f2382a = r12;
        this.f2383b = obj;
        this.f2384c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int r52 = this.f2382a;
        Object obj = this.f2384c;
        Object obj2 = this.f2383b;
        switch (r52) {
            case 0:
                int r53 = BarcodeScanningActivity.f15835j;
                h.f((BarcodeScanningActivity) obj, "this$0");
                ((Camera) obj2).getCameraControl().enableTorch(!r1.f15839d);
                return;
            case 1:
                View.OnClickListener onClickListener = (View.OnClickListener) obj2;
                CustomSnackbarView customView = (CustomSnackbarView) obj;
                h.f(customView, "$customView");
                if (onClickListener != null) {
                    onClickListener.onClick(customView.getTvAction());
                    return;
                }
                return;
            default:
                SearchFragment this$0 = (SearchFragment) obj2;
                List<? extends ServiceModelRealm> editorChoice = (List) obj;
                m<Object>[] mVarArr = SearchFragment.f16707s;
                h.f(this$0, "this$0");
                h.f(editorChoice, "$editorChoice");
                FragmentSearchBinding fragmentSearchBinding = this$0.f16713g;
                if (fragmentSearchBinding == null) {
                    h.n("mSearchFragmentBinding");
                    throw null;
                }
                Editable text = fragmentSearchBinding.f.f15877c.getText();
                if (text != null) {
                    text.clear();
                }
                FragmentSearchBinding fragmentSearchBinding2 = this$0.f16713g;
                if (fragmentSearchBinding2 == null) {
                    h.n("mSearchFragmentBinding");
                    throw null;
                }
                fragmentSearchBinding2.f.f15877c.clearFocus();
                this$0.H();
                this$0.G(editorChoice);
                return;
        }
    }
}
