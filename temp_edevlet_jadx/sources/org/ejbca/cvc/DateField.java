package org.ejbca.cvc;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public class DateField extends AbstractDataField {
    private static final int DATE_ARRAY_SIZE = 6;
    private static final DateFormat FORMAT_PRINTABLE;
    private static final TimeZone GMTTIMEZONE;
    private static final long serialVersionUID = 6092901788235446614L;
    private Date date;

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        GMTTIMEZONE = timeZone;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        FORMAT_PRINTABLE = simpleDateFormat;
        simpleDateFormat.setTimeZone(timeZone);
    }

    public DateField(CVCTagEnum cVCTagEnum) {
        super(cVCTagEnum);
    }

    public DateField(CVCTagEnum cVCTagEnum, Date date) {
        this(cVCTagEnum);
        Calendar calendar = Calendar.getInstance(GMTTIMEZONE);
        calendar.setTimeInMillis(date.getTime());
        int r42 = calendar.get(1);
        int r02 = calendar.get(2);
        int r12 = calendar.get(5);
        calendar.clear();
        calendar.set(r42, r02, r12);
        this.date = calendar.getTime();
    }

    public DateField(CVCTagEnum cVCTagEnum, byte[] bArr) {
        int r72;
        int r82;
        int r92;
        this(cVCTagEnum);
        if (bArr == null || bArr.length != 6) {
            StringBuilder sb2 = new StringBuilder("data argument must have length 6, was ");
            sb2.append(bArr != null ? bArr.length : 0);
            throw new IllegalArgumentException(sb2.toString());
        }
        int r42 = (bArr[0] * 10) + 2000 + bArr[1];
        int r52 = ((bArr[2] * 10) + bArr[3]) - 1;
        int r6 = (bArr[4] * 10) + bArr[5];
        Calendar calendar = Calendar.getInstance(GMTTIMEZONE);
        calendar.clear();
        if (cVCTagEnum == CVCTagEnum.EFFECTIVE_DATE) {
            r72 = 0;
            r82 = 0;
            r92 = 0;
        } else {
            r72 = 23;
            r82 = 59;
            r92 = 59;
        }
        calendar.set(r42, r52, r6, r72, r82, r92);
        this.date = calendar.getTime();
    }

    public Date getDate() {
        return this.date;
    }

    @Override // org.ejbca.cvc.AbstractDataField
    public byte[] getEncoded() {
        Calendar calendar = Calendar.getInstance(GMTTIMEZONE);
        calendar.setTimeInMillis(this.date.getTime());
        int r32 = calendar.get(1) - 2000;
        int r52 = calendar.get(2) + 1;
        int r12 = calendar.get(5);
        return new byte[]{(byte) (r32 / 10), (byte) (r32 % 10), (byte) (r52 / 10), (byte) (r52 % 10), (byte) (r12 / 10), (byte) (r12 % 10)};
    }

    @Override // org.ejbca.cvc.AbstractDataField
    public String valueAsText() {
        return FORMAT_PRINTABLE.format(this.date);
    }
}
