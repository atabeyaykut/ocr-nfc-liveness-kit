.class public Lorg/ejbca/cvc/DateField;
.super Lorg/ejbca/cvc/AbstractDataField;
.source "SourceFile"


# static fields
.field private static final DATE_ARRAY_SIZE:I = 0x6

.field private static final FORMAT_PRINTABLE:Ljava/text/DateFormat;

.field private static final GMTTIMEZONE:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = 0x548e55e5131db956L


# instance fields
.field private date:Ljava/util/Date;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/ejbca/cvc/DateField;->GMTTIMEZONE:Ljava/util/TimeZone;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/ejbca/cvc/DateField;->FORMAT_PRINTABLE:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/CVCTagEnum;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ejbca/cvc/AbstractDataField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/CVCTagEnum;Ljava/util/Date;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/ejbca/cvc/DateField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;)V

    sget-object p1, Lorg/ejbca/cvc/DateField;->GMTTIMEZONE:Ljava/util/TimeZone;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/ejbca/cvc/DateField;->date:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V
    .locals 10

    invoke-direct {p0, p1}, Lorg/ejbca/cvc/DateField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    array-length v1, p2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0x7d0

    const/4 v1, 0x1

    aget-byte v2, p2, v1

    add-int v4, v0, v2

    const/4 v0, 0x2

    aget-byte v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v2, 0x3

    aget-byte v2, p2, v2

    add-int/2addr v0, v2

    add-int/lit8 v5, v0, -0x1

    const/4 v0, 0x4

    aget-byte v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x5

    aget-byte p2, p2, v1

    add-int v6, v0, p2

    sget-object p2, Lorg/ejbca/cvc/DateField;->GMTTIMEZONE:Ljava/util/TimeZone;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->EFFECTIVE_DATE:Lorg/ejbca/cvc/CVCTagEnum;

    if-ne p1, v0, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/16 v7, 0x17

    const/16 v8, 0x3b

    const/16 v9, 0x3b

    :goto_0
    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/ejbca/cvc/DateField;->date:Ljava/util/Date;

    return-void

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data argument must have length 6, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    array-length v0, p2

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/ejbca/cvc/DateField;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [B

    sget-object v1, Lorg/ejbca/cvc/DateField;->GMTTIMEZONE:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lorg/ejbca/cvc/DateField;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit16 v3, v3, -0x7d0

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    div-int/lit8 v7, v3, 0xa

    int-to-byte v7, v7

    const/4 v8, 0x0

    aput-byte v7, v0, v8

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    div-int/lit8 v2, v5, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    rem-int/lit8 v5, v5, 0xa

    int-to-byte v2, v5

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    div-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    return-object v0
.end method

.method public valueAsText()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/ejbca/cvc/DateField;->FORMAT_PRINTABLE:Ljava/text/DateFormat;

    iget-object v1, p0, Lorg/ejbca/cvc/DateField;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
