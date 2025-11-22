package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArray;", "", "questionMap", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;)V", "getQuestionMap", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class QuestionArray {

    @k(name = "map")
    private final Question questionMap;

    public QuestionArray(Question questionMap) {
        h.f(questionMap, "questionMap");
        this.questionMap = questionMap;
    }

    public static /* synthetic */ QuestionArray copy$default(QuestionArray questionArray, Question question, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            question = questionArray.questionMap;
        }
        return questionArray.copy(question);
    }

    /* renamed from: component1, reason: from getter */
    public final Question getQuestionMap() {
        return this.questionMap;
    }

    public final QuestionArray copy(Question questionMap) {
        h.f(questionMap, "questionMap");
        return new QuestionArray(questionMap);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof QuestionArray) && h.a(this.questionMap, ((QuestionArray) other).questionMap);
    }

    public final Question getQuestionMap() {
        return this.questionMap;
    }

    public int hashCode() {
        return this.questionMap.hashCode();
    }

    public String toString() {
        return "QuestionArray(questionMap=" + this.questionMap + ')';
    }
}
