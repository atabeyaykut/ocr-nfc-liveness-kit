package tr.gov.turkiye.edevlet.kapisi.services.epoxy;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import he.a;
import ke.b;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.ItemContactBinding;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionContactListItemModel;
import x9.l;
import x9.q;
import xf.d;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R@\u0010\u0017\u001a \u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00050\u00168\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR.\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015¨\u0006\""}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;", "institutionContact", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;", "getInstitutionContact", "()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;", "setInstitutionContact", "(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;)V", "Lkotlin/Function1;", "", "phoneListener", "Lx9/l;", "getPhoneListener", "()Lx9/l;", "setPhoneListener", "(Lx9/l;)V", "Lkotlin/Function3;", "addressListener", "Lx9/q;", "getAddressListener", "()Lx9/q;", "setAddressListener", "(Lx9/q;)V", "websiteListener", "getWebsiteListener", "setWebsiteListener", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class InstitutionContactListItemModel extends a<ItemContactBinding> {
    public q<? super String, ? super String, ? super String, m> addressListener;
    public InstitutionContactModelRealm institutionContact;
    public l<? super String, m> phoneListener;
    public l<? super String, m> websiteListener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(InstitutionContactListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getPhoneListener().invoke("-");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$1(InstitutionContactListItemModel this$0, String str, View view) {
        h.f(this$0, "this$0");
        this$0.getPhoneListener().invoke(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$2(InstitutionContactListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getWebsiteListener().invoke("-");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$3(InstitutionContactListItemModel this$0, String str, View view) {
        h.f(this$0, "this$0");
        this$0.getWebsiteListener().invoke(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$4(InstitutionContactListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getAddressListener().i("-", "-", "-");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$5(InstitutionContactListItemModel this$0, String str, String str2, String str3, View view) {
        h.f(this$0, "this$0");
        this$0.getAddressListener().i(str, str2, str3);
    }

    @Override // he.a
    public void bind(ItemContactBinding itemContactBinding) {
        View.OnClickListener bVar;
        View.OnClickListener dVar;
        h.f(itemContactBinding, "<this>");
        String contactPhone = getInstitutionContact().getContactPhone();
        String contactWebsite = getInstitutionContact().getContactWebsite();
        final String contactLatitude = getInstitutionContact().getContactLatitude();
        final String contactLongitude = getInstitutionContact().getContactLongitude();
        String contactAddress = getInstitutionContact().getContactAddress();
        final String contactName = getInstitutionContact().getContactName();
        boolean z10 = contactPhone == null || contactPhone.length() == 0;
        int r92 = 8;
        LinearLayout linearLayout = itemContactBinding.f16870e;
        AppCompatTextView appCompatTextView = itemContactBinding.f16869d;
        if (z10) {
            appCompatTextView.setText("-");
            linearLayout.setOnClickListener(new d(r92, this));
        } else {
            appCompatTextView.setText(contactPhone);
            linearLayout.setOnClickListener(new ke.a(3, this, contactPhone));
        }
        boolean z11 = contactWebsite == null || contactWebsite.length() == 0;
        LinearLayout linearLayout2 = itemContactBinding.f16871g;
        AppCompatTextView appCompatTextView2 = itemContactBinding.f;
        if (z11) {
            appCompatTextView2.setText("-");
            bVar = new nf.a(r92, this);
        } else {
            appCompatTextView2.setText(contactWebsite);
            bVar = new b(2, this, contactWebsite);
        }
        linearLayout2.setOnClickListener(bVar);
        boolean z12 = contactAddress == null || contactAddress.length() == 0;
        LinearLayout linearLayout3 = itemContactBinding.f16868c;
        AppCompatTextView appCompatTextView3 = itemContactBinding.f16867b;
        if (z12) {
            appCompatTextView3.setText("-");
            dVar = new zd.d(14, this);
        } else {
            appCompatTextView3.setText(contactAddress);
            dVar = new View.OnClickListener() { // from class: sg.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InstitutionContactListItemModel.bind$lambda$5(this.f15448a, contactLatitude, contactLongitude, contactName, view);
                }
            };
        }
        linearLayout3.setOnClickListener(dVar);
    }

    public final q<String, String, String, m> getAddressListener() {
        q qVar = this.addressListener;
        if (qVar != null) {
            return qVar;
        }
        h.n("addressListener");
        throw null;
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_contact;
    }

    public final InstitutionContactModelRealm getInstitutionContact() {
        InstitutionContactModelRealm institutionContactModelRealm = this.institutionContact;
        if (institutionContactModelRealm != null) {
            return institutionContactModelRealm;
        }
        h.n("institutionContact");
        throw null;
    }

    public final l<String, m> getPhoneListener() {
        l lVar = this.phoneListener;
        if (lVar != null) {
            return lVar;
        }
        h.n("phoneListener");
        throw null;
    }

    public final l<String, m> getWebsiteListener() {
        l lVar = this.websiteListener;
        if (lVar != null) {
            return lVar;
        }
        h.n("websiteListener");
        throw null;
    }

    public final void setAddressListener(q<? super String, ? super String, ? super String, m> qVar) {
        h.f(qVar, "<set-?>");
        this.addressListener = qVar;
    }

    public final void setInstitutionContact(InstitutionContactModelRealm institutionContactModelRealm) {
        h.f(institutionContactModelRealm, "<set-?>");
        this.institutionContact = institutionContactModelRealm;
    }

    public final void setPhoneListener(l<? super String, m> lVar) {
        h.f(lVar, "<set-?>");
        this.phoneListener = lVar;
    }

    public final void setWebsiteListener(l<? super String, m> lVar) {
        h.f(lVar, "<set-?>");
        this.websiteListener = lVar;
    }
}
