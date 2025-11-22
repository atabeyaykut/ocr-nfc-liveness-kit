package androidx.constraintlayout.core.parser;

import android.support.v4.media.a;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CLContainer extends CLElement {
    ArrayList<CLElement> mElements;

    public CLContainer(char[] cArr) {
        super(cArr);
        this.mElements = new ArrayList<>();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLContainer(cArr);
    }

    public void add(CLElement cLElement) {
        this.mElements.add(cLElement);
        if (CLParser.DEBUG) {
            System.out.println("added element " + cLElement + " to " + this);
        }
    }

    public CLElement get(int r32) throws CLParsingException {
        if (r32 < 0 || r32 >= this.mElements.size()) {
            throw new CLParsingException(a.d("no element at index ", r32), this);
        }
        return this.mElements.get(r32);
    }

    public CLArray getArray(int r32) throws CLParsingException {
        CLElement cLElement = get(r32);
        if (cLElement instanceof CLArray) {
            return (CLArray) cLElement;
        }
        throw new CLParsingException(a.d("no array at index ", r32), this);
    }

    public CLArray getArrayOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLArray) {
            return (CLArray) orNull;
        }
        return null;
    }

    public boolean getBoolean(int r32) throws CLParsingException {
        CLElement cLElement = get(r32);
        if (cLElement instanceof CLToken) {
            return ((CLToken) cLElement).getBoolean();
        }
        throw new CLParsingException(a.d("no boolean at index ", r32), this);
    }

    public float getFloat(int r32) throws CLParsingException {
        CLElement cLElement = get(r32);
        if (cLElement != null) {
            return cLElement.getFloat();
        }
        throw new CLParsingException(a.d("no float at index ", r32), this);
    }

    public float getFloatOrNaN(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLNumber) {
            return orNull.getFloat();
        }
        return Float.NaN;
    }

    public int getInt(int r32) throws CLParsingException {
        CLElement cLElement = get(r32);
        if (cLElement != null) {
            return cLElement.getInt();
        }
        throw new CLParsingException(a.d("no int at index ", r32), this);
    }

    public CLObject getObject(int r32) throws CLParsingException {
        CLElement cLElement = get(r32);
        if (cLElement instanceof CLObject) {
            return (CLObject) cLElement;
        }
        throw new CLParsingException(a.d("no object at index ", r32), this);
    }

    public CLObject getObjectOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLObject) {
            return (CLObject) orNull;
        }
        return null;
    }

    public CLElement getOrNull(int r22) {
        if (r22 < 0 || r22 >= this.mElements.size()) {
            return null;
        }
        return this.mElements.get(r22);
    }

    public CLElement getOrNull(String str) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                return cLKey.getValue();
            }
        }
        return null;
    }

    public String getString(int r32) throws CLParsingException {
        CLElement cLElement = get(r32);
        if (cLElement instanceof CLString) {
            return cLElement.content();
        }
        throw new CLParsingException(a.d("no string at index ", r32), this);
    }

    public String getString(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLString) {
            return cLElement.content();
        }
        throw new CLParsingException("no string found for key <" + str + ">, found [" + (cLElement != null ? cLElement.getStrClass() : null) + "] : " + cLElement, this);
    }

    public String getStringOrNull(int r22) {
        CLElement orNull = getOrNull(r22);
        if (orNull instanceof CLString) {
            return orNull.content();
        }
        return null;
    }

    public String getStringOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLString) {
            return orNull.content();
        }
        return null;
    }

    public boolean has(String str) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if ((next instanceof CLKey) && ((CLKey) next).content().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public ArrayList<String> names() {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if (next instanceof CLKey) {
                arrayList.add(((CLKey) next).content());
            }
        }
        return arrayList;
    }

    public void put(String str, CLElement cLElement) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                cLKey.set(cLElement);
                return;
            }
        }
        this.mElements.add((CLKey) CLKey.allocate(str, cLElement));
    }

    public void putNumber(String str, float f) {
        put(str, new CLNumber(f));
    }

    public void remove(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if (((CLKey) next).content().equals(str)) {
                arrayList.add(next);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.mElements.remove((CLElement) it2.next());
        }
    }

    public int size() {
        return this.mElements.size();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if (sb2.length() > 0) {
                sb2.append("; ");
            }
            sb2.append(next);
        }
        return super.toString() + " = <" + ((Object) sb2) + " >";
    }

    public CLElement get(String str) throws CLParsingException {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                return cLKey.getValue();
            }
        }
        throw new CLParsingException(androidx.browser.browseractions.a.a("no element for key <", str, ">"), this);
    }

    public CLArray getArray(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLArray) {
            return (CLArray) cLElement;
        }
        StringBuilder sbL = a.l("no array found for key <", str, ">, found [");
        sbL.append(cLElement.getStrClass());
        sbL.append("] : ");
        sbL.append(cLElement);
        throw new CLParsingException(sbL.toString(), this);
    }

    public boolean getBoolean(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLToken) {
            return ((CLToken) cLElement).getBoolean();
        }
        StringBuilder sbL = a.l("no boolean found for key <", str, ">, found [");
        sbL.append(cLElement.getStrClass());
        sbL.append("] : ");
        sbL.append(cLElement);
        throw new CLParsingException(sbL.toString(), this);
    }

    public float getFloat(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement != null) {
            return cLElement.getFloat();
        }
        StringBuilder sbL = a.l("no float found for key <", str, ">, found [");
        sbL.append(cLElement.getStrClass());
        sbL.append("] : ");
        sbL.append(cLElement);
        throw new CLParsingException(sbL.toString(), this);
    }

    public int getInt(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement != null) {
            return cLElement.getInt();
        }
        StringBuilder sbL = a.l("no int found for key <", str, ">, found [");
        sbL.append(cLElement.getStrClass());
        sbL.append("] : ");
        sbL.append(cLElement);
        throw new CLParsingException(sbL.toString(), this);
    }

    public CLObject getObject(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLObject) {
            return (CLObject) cLElement;
        }
        StringBuilder sbL = a.l("no object found for key <", str, ">, found [");
        sbL.append(cLElement.getStrClass());
        sbL.append("] : ");
        sbL.append(cLElement);
        throw new CLParsingException(sbL.toString(), this);
    }
}
