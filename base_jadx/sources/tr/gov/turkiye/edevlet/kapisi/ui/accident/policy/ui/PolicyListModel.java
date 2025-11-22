package tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.ui;

import ge.f;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemPolicyBinding;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;", "policyItem", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;", "getPolicyItem", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;", "setPolicyItem", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;)V", "", "isDivider", "Ljava/lang/String;", "()Ljava/lang/String;", "setDivider", "(Ljava/lang/String;)V", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class PolicyListModel extends a<ItemPolicyBinding> {
    public String isDivider;
    public AccidentReportPolicy policyItem;

    @Override // he.a
    public void bind(ItemPolicyBinding itemPolicyBinding) {
        h.f(itemPolicyBinding, "<this>");
        itemPolicyBinding.f17223e.setText(getPolicyItem().getProductCode());
        itemPolicyBinding.f17222d.setText(getPolicyItem().getCompanyName());
        String endDate = getPolicyItem().getEndDate();
        itemPolicyBinding.f17221c.setText(endDate != null ? f.b(endDate) : null);
        if (h.a(isDivider(), "HIDE")) {
            itemPolicyBinding.f17220b.setVisibility(8);
        }
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_policy;
    }

    public final AccidentReportPolicy getPolicyItem() {
        AccidentReportPolicy accidentReportPolicy = this.policyItem;
        if (accidentReportPolicy != null) {
            return accidentReportPolicy;
        }
        h.n("policyItem");
        throw null;
    }

    public final String isDivider() {
        String str = this.isDivider;
        if (str != null) {
            return str;
        }
        h.n("isDivider");
        throw null;
    }

    public final void setDivider(String str) {
        h.f(str, "<set-?>");
        this.isDivider = str;
    }

    public final void setPolicyItem(AccidentReportPolicy accidentReportPolicy) {
        h.f(accidentReportPolicy, "<set-?>");
        this.policyItem = accidentReportPolicy;
    }
}
