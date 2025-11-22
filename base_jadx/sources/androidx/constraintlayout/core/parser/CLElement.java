package androidx.constraintlayout.core.parser;

import androidx.core.location.LocationRequestCompat;

/* loaded from: classes.dex */
public class CLElement {
    protected static int BASE_INDENT = 2;
    protected static int MAX_LINE = 80;
    private int line;
    protected CLContainer mContainer;
    private final char[] mContent;
    protected long start = -1;
    protected long end = LocationRequestCompat.PASSIVE_INTERVAL;

    public CLElement(char[] cArr) {
        this.mContent = cArr;
    }

    public void addIndent(StringBuilder sb2, int r42) {
        for (int r02 = 0; r02 < r42; r02++) {
            sb2.append(' ');
        }
    }

    public String content() {
        String str = new String(this.mContent);
        long j10 = this.end;
        if (j10 != LocationRequestCompat.PASSIVE_INTERVAL) {
            long j11 = this.start;
            if (j10 >= j11) {
                return str.substring((int) j11, ((int) j10) + 1);
            }
        }
        long j12 = this.start;
        return str.substring((int) j12, ((int) j12) + 1);
    }

    public CLElement getContainer() {
        return this.mContainer;
    }

    public String getDebugName() {
        if (!CLParser.DEBUG) {
            return "";
        }
        return getStrClass() + " -> ";
    }

    public long getEnd() {
        return this.end;
    }

    public float getFloat() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getFloat();
        }
        return Float.NaN;
    }

    public int getInt() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getInt();
        }
        return 0;
    }

    public int getLine() {
        return this.line;
    }

    public long getStart() {
        return this.start;
    }

    public String getStrClass() {
        String string = getClass().toString();
        return string.substring(string.lastIndexOf(46) + 1);
    }

    public boolean isDone() {
        return this.end != LocationRequestCompat.PASSIVE_INTERVAL;
    }

    public boolean isStarted() {
        return this.start > -1;
    }

    public boolean notStarted() {
        return this.start == -1;
    }

    public void setContainer(CLContainer cLContainer) {
        this.mContainer = cLContainer;
    }

    public void setEnd(long j10) {
        if (this.end != LocationRequestCompat.PASSIVE_INTERVAL) {
            return;
        }
        this.end = j10;
        if (CLParser.DEBUG) {
            System.out.println("closing " + hashCode() + " -> " + this);
        }
        CLContainer cLContainer = this.mContainer;
        if (cLContainer != null) {
            cLContainer.add(this);
        }
    }

    public void setLine(int r12) {
        this.line = r12;
    }

    public void setStart(long j10) {
        this.start = j10;
    }

    public String toFormattedJSON(int r12, int r22) {
        return "";
    }

    public String toJSON() {
        return "";
    }

    public String toString() {
        long j10 = this.start;
        long j11 = this.end;
        if (j10 > j11 || j11 == LocationRequestCompat.PASSIVE_INTERVAL) {
            return getClass() + " (INVALID, " + this.start + "-" + this.end + ")";
        }
        return getStrClass() + " (" + this.start + " : " + this.end + ") <<" + new String(this.mContent).substring((int) this.start, ((int) this.end) + 1) + ">>";
    }
}
