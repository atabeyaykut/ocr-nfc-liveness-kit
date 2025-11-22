package tg;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import java.util.Locale;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.g;
import l9.m;
import org.bouncycastle.i18n.MessageBundle;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.firm.FirmCategoryListFragment;
import x9.l;

/* loaded from: classes3.dex */
public final class a extends j implements l<c, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FirmCategoryListFragment f15716a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(FirmCategoryListFragment firmCategoryListFragment) {
        super(1);
        this.f15716a = firmCategoryListFragment;
    }

    @Override // x9.l
    public final m invoke(c cVar) {
        Bundle bundleBundleOf;
        NavController navControllerFindNavController;
        int r32;
        c selectedInstitution = cVar;
        h.e(selectedInstitution, "selectedInstitution");
        da.m<Object>[] mVarArr = FirmCategoryListFragment.f16890c;
        FirmCategoryListFragment firmCategoryListFragment = this.f15716a;
        firmCategoryListFragment.getClass();
        String string = firmCategoryListFragment.getString(selectedInstitution.f15719b);
        h.e(string, "getString(resourceId)");
        Locale localeForLanguageTag = Locale.forLanguageTag("tr-TR");
        h.e(localeForLanguageTag, "forLanguageTag(\"tr-TR\")");
        String strV = mc.j.v(string, localeForLanguageTag);
        int r22 = selectedInstitution.f15720c;
        if (r22 == 1 || r22 == 2 || r22 == 5 || r22 == 90) {
            bundleBundleOf = BundleKt.bundleOf(new g("categoryCode", Integer.valueOf(r22)), new g(MessageBundle.TITLE_ENTRY, strV));
            navControllerFindNavController = FragmentKt.findNavController(firmCategoryListFragment);
            r32 = R.id.institutionCityListFragment;
        } else {
            bundleBundleOf = BundleKt.bundleOf(new g("categoryCode", Integer.valueOf(r22)), new g(MessageBundle.TITLE_ENTRY, strV));
            navControllerFindNavController = FragmentKt.findNavController(firmCategoryListFragment);
            r32 = R.id.institutionListFragment;
        }
        navControllerFindNavController.navigate(r32, bundleBundleOf);
        firmCategoryListFragment.E(selectedInstitution);
        return m.f9594a;
    }
}
