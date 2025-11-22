package tr.gov.turkiye.edevlet.kapisi.data.service;

import io.realm.internal.n;
import io.realm.s0;
import io.realm.x2;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;", "Lio/realm/s0;", "", "serviceCode", "Ljava/lang/Integer;", "getServiceCode", "()Ljava/lang/Integer;", "setServiceCode", "(Ljava/lang/Integer;)V", "serviceInsertion", "getServiceInsertion", "setServiceInsertion", "", "question", "Ljava/lang/String;", "getQuestion", "()Ljava/lang/String;", "setQuestion", "(Ljava/lang/String;)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class WonderServiceModelRealm implements s0, x2 {
    private String question;
    private Integer serviceCode;
    private Integer serviceInsertion;

    /* JADX WARN: Multi-variable type inference failed */
    public WonderServiceModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$question("");
    }

    public final String getQuestion() {
        return getQuestion();
    }

    public final Integer getServiceCode() {
        return getServiceCode();
    }

    public final Integer getServiceInsertion() {
        return getServiceInsertion();
    }

    /* renamed from: realmGet$question, reason: from getter */
    public String getQuestion() {
        return this.question;
    }

    /* renamed from: realmGet$serviceCode, reason: from getter */
    public Integer getServiceCode() {
        return this.serviceCode;
    }

    /* renamed from: realmGet$serviceInsertion, reason: from getter */
    public Integer getServiceInsertion() {
        return this.serviceInsertion;
    }

    public void realmSet$question(String str) {
        this.question = str;
    }

    public void realmSet$serviceCode(Integer num) {
        this.serviceCode = num;
    }

    public void realmSet$serviceInsertion(Integer num) {
        this.serviceInsertion = num;
    }

    public final void setQuestion(String str) {
        h.f(str, "<set-?>");
        realmSet$question(str);
    }

    public final void setServiceCode(Integer num) {
        realmSet$serviceCode(num);
    }

    public final void setServiceInsertion(Integer num) {
        realmSet$serviceInsertion(num);
    }
}
