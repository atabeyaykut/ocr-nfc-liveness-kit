package tr.gov.turkiye.edevlet.kapisi.data.service;

import io.realm.internal.n;
import io.realm.s0;
import io.realm.t2;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;", "Lio/realm/s0;", "", "serviceCode", "Ljava/lang/Integer;", "getServiceCode", "()Ljava/lang/Integer;", "setServiceCode", "(Ljava/lang/Integer;)V", "serviceInsertion", "getServiceInsertion", "setServiceInsertion", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class NewestServiceModelRealm implements s0, t2 {
    private Integer serviceCode;
    private Integer serviceInsertion;

    /* JADX WARN: Multi-variable type inference failed */
    public NewestServiceModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final Integer getServiceCode() {
        return getServiceCode();
    }

    public final Integer getServiceInsertion() {
        return getServiceInsertion();
    }

    /* renamed from: realmGet$serviceCode, reason: from getter */
    public Integer getServiceCode() {
        return this.serviceCode;
    }

    /* renamed from: realmGet$serviceInsertion, reason: from getter */
    public Integer getServiceInsertion() {
        return this.serviceInsertion;
    }

    public void realmSet$serviceCode(Integer num) {
        this.serviceCode = num;
    }

    public void realmSet$serviceInsertion(Integer num) {
        this.serviceInsertion = num;
    }

    public final void setServiceCode(Integer num) {
        realmSet$serviceCode(num);
    }

    public final void setServiceInsertion(Integer num) {
        realmSet$serviceInsertion(num);
    }
}
