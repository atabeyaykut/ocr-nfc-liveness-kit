.class public Led/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Led/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Led/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Led/h;


# instance fields
.field public final a:[B

.field public transient b:I

.field public transient c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Led/h$a;

    invoke-direct {v0}, Led/h$a;-><init>()V

    new-instance v0, Led/h;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Led/h;-><init>([B)V

    sput-object v0, Led/h;->d:Led/h;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/h;->a:[B

    return-void
.end method

.method public static synthetic E(Led/h;III)Led/h;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, -0x499602d2

    :cond_1
    invoke-virtual {p0, p1, p2}, Led/h;->C(II)Led/h;

    move-result-object p0

    return-object p0
.end method

.method public static v(Led/h;Led/h;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "other"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Led/h;->a:[B

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Led/h;->u(I[B)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static z(Led/h;Led/h;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "other"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const v0, -0x499602d2

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Led/h;->a:[B

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Led/h;->y(I[B)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method


# virtual methods
.method public A(II[BI)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    iget-object v0, p0, Led/h;->a:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p3

    sub-int/2addr v1, p4

    if-gt p2, v1, :cond_0

    invoke-static {p1, v0, p2, p3, p4}, La6/a;->e(I[BI[BI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public B(ILed/h;I)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/h;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1, v0, p3}, Led/h;->A(II[BI)Z

    move-result p1

    return p1
.end method

.method public C(II)Led/h;
    .locals 3

    .line 1
    invoke-static {p0, p2}, La6/a;->x(Led/h;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_6

    .line 12
    .line 13
    iget-object v1, p0, Led/h;->a:[B

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    if-gt p2, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v2, 0x0

    .line 21
    :goto_1
    if-eqz v2, :cond_5

    .line 22
    .line 23
    sub-int v2, p2, p1

    .line 24
    .line 25
    if-ltz v2, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_2
    if-eqz v0, :cond_4

    .line 29
    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    array-length v0, v1

    .line 33
    if-ne p2, v0, :cond_3

    .line 34
    .line 35
    move-object v0, p0

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    new-instance v0, Led/h;

    .line 38
    .line 39
    invoke-static {v1, p1, p2}, Lm9/i;->k0([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Led/h;-><init>([B)V

    .line 44
    .line 45
    .line 46
    :goto_2
    return-object v0

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p2, "endIndex < beginIndex"

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p2, "endIndex > length("

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    array-length p2, v1

    .line 67
    const/16 v0, 0x29

    .line 68
    .line 69
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/core/a;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string p2, "beginIndex < 0"

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public F()Led/h;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Led/h;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-byte v2, v1, v0

    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    int-to-byte v4, v4

    if-le v2, v4, :cond_0

    goto :goto_3

    :cond_0
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v5, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_3

    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Led/h;

    invoke-direct {v0, v1}, Led/h;-><init>([B)V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, p0

    :goto_4
    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Led/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Led/h;->w()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "<this>"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lmc/a;->a:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Led/h;->c:Ljava/lang/String;

    .line 22
    .line 23
    move-object v0, v2

    .line 24
    :cond_0
    return-object v0
.end method

.method public H(Led/e;I)V
    .locals 2

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Led/h;->a:[B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1, p2}, Led/e;->write([BII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Led/h;

    invoke-virtual {p0, p1}, Led/h;->o(Led/h;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Led/h;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Led/h;

    .line 11
    .line 12
    invoke-virtual {p1}, Led/h;->r()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v3, p0, Led/h;->a:[B

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-ne v1, v4, :cond_1

    .line 20
    .line 21
    array-length v1, v3

    .line 22
    invoke-virtual {p1, v2, v2, v3, v1}, Led/h;->A(II[BI)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Led/h;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Led/h;->a:[B

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Led/h;->b:I

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Led/m0;->a:[B

    .line 2
    .line 3
    iget-object v1, p0, Led/h;->a:[B

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "map"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x2

    .line 17
    add-int/2addr v2, v3

    .line 18
    div-int/lit8 v2, v2, 0x3

    .line 19
    .line 20
    mul-int/lit8 v2, v2, 0x4

    .line 21
    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    array-length v4, v1

    .line 25
    array-length v5, v1

    .line 26
    rem-int/lit8 v5, v5, 0x3

    .line 27
    .line 28
    sub-int/2addr v4, v5

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_0
    if-ge v5, v4, :cond_0

    .line 32
    .line 33
    add-int/lit8 v7, v5, 0x1

    .line 34
    .line 35
    aget-byte v5, v1, v5

    .line 36
    .line 37
    add-int/lit8 v8, v7, 0x1

    .line 38
    .line 39
    aget-byte v7, v1, v7

    .line 40
    .line 41
    add-int/lit8 v9, v8, 0x1

    .line 42
    .line 43
    aget-byte v8, v1, v8

    .line 44
    .line 45
    add-int/lit8 v10, v6, 0x1

    .line 46
    .line 47
    and-int/lit16 v11, v5, 0xff

    .line 48
    .line 49
    shr-int/2addr v11, v3

    .line 50
    aget-byte v11, v0, v11

    .line 51
    .line 52
    aput-byte v11, v2, v6

    .line 53
    .line 54
    add-int/lit8 v6, v10, 0x1

    .line 55
    .line 56
    and-int/lit8 v5, v5, 0x3

    .line 57
    .line 58
    shl-int/lit8 v5, v5, 0x4

    .line 59
    .line 60
    and-int/lit16 v11, v7, 0xff

    .line 61
    .line 62
    shr-int/lit8 v11, v11, 0x4

    .line 63
    .line 64
    or-int/2addr v5, v11

    .line 65
    aget-byte v5, v0, v5

    .line 66
    .line 67
    aput-byte v5, v2, v10

    .line 68
    .line 69
    add-int/lit8 v5, v6, 0x1

    .line 70
    .line 71
    and-int/lit8 v7, v7, 0xf

    .line 72
    .line 73
    shl-int/2addr v7, v3

    .line 74
    and-int/lit16 v10, v8, 0xff

    .line 75
    .line 76
    shr-int/lit8 v10, v10, 0x6

    .line 77
    .line 78
    or-int/2addr v7, v10

    .line 79
    aget-byte v7, v0, v7

    .line 80
    .line 81
    aput-byte v7, v2, v6

    .line 82
    .line 83
    add-int/lit8 v6, v5, 0x1

    .line 84
    .line 85
    and-int/lit8 v7, v8, 0x3f

    .line 86
    .line 87
    aget-byte v7, v0, v7

    .line 88
    .line 89
    aput-byte v7, v2, v5

    .line 90
    .line 91
    move v5, v9

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    array-length v7, v1

    .line 94
    sub-int/2addr v7, v4

    .line 95
    const/4 v4, 0x1

    .line 96
    const/16 v8, 0x3d

    .line 97
    .line 98
    if-eq v7, v4, :cond_2

    .line 99
    .line 100
    if-eq v7, v3, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .line 104
    .line 105
    aget-byte v5, v1, v5

    .line 106
    .line 107
    aget-byte v1, v1, v4

    .line 108
    .line 109
    add-int/lit8 v4, v6, 0x1

    .line 110
    .line 111
    and-int/lit16 v7, v5, 0xff

    .line 112
    .line 113
    shr-int/2addr v7, v3

    .line 114
    aget-byte v7, v0, v7

    .line 115
    .line 116
    aput-byte v7, v2, v6

    .line 117
    .line 118
    add-int/lit8 v6, v4, 0x1

    .line 119
    .line 120
    and-int/lit8 v5, v5, 0x3

    .line 121
    .line 122
    shl-int/lit8 v5, v5, 0x4

    .line 123
    .line 124
    and-int/lit16 v7, v1, 0xff

    .line 125
    .line 126
    shr-int/lit8 v7, v7, 0x4

    .line 127
    .line 128
    or-int/2addr v5, v7

    .line 129
    aget-byte v5, v0, v5

    .line 130
    .line 131
    aput-byte v5, v2, v4

    .line 132
    .line 133
    add-int/lit8 v4, v6, 0x1

    .line 134
    .line 135
    and-int/lit8 v1, v1, 0xf

    .line 136
    .line 137
    shl-int/2addr v1, v3

    .line 138
    aget-byte v0, v0, v1

    .line 139
    .line 140
    aput-byte v0, v2, v6

    .line 141
    .line 142
    int-to-byte v0, v8

    .line 143
    aput-byte v0, v2, v4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    aget-byte v1, v1, v5

    .line 147
    .line 148
    add-int/lit8 v4, v6, 0x1

    .line 149
    .line 150
    and-int/lit16 v5, v1, 0xff

    .line 151
    .line 152
    shr-int/lit8 v3, v5, 0x2

    .line 153
    .line 154
    aget-byte v3, v0, v3

    .line 155
    .line 156
    aput-byte v3, v2, v6

    .line 157
    .line 158
    add-int/lit8 v3, v4, 0x1

    .line 159
    .line 160
    and-int/lit8 v1, v1, 0x3

    .line 161
    .line 162
    shl-int/lit8 v1, v1, 0x4

    .line 163
    .line 164
    aget-byte v0, v0, v1

    .line 165
    .line 166
    aput-byte v0, v2, v4

    .line 167
    .line 168
    add-int/lit8 v0, v3, 0x1

    .line 169
    .line 170
    int-to-byte v1, v8

    .line 171
    aput-byte v1, v2, v3

    .line 172
    .line 173
    aput-byte v1, v2, v0

    .line 174
    .line 175
    :goto_1
    sget-object v0, Lmc/a;->a:Ljava/nio/charset/Charset;

    .line 176
    .line 177
    new-instance v1, Ljava/lang/String;

    .line 178
    .line 179
    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 180
    .line 181
    .line 182
    return-object v1
.end method

.method public final o(Led/h;)I
    .locals 9

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Led/h;->r()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Led/h;->r()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x1

    .line 22
    if-ge v4, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Led/h;->x(I)B

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    and-int/lit16 v7, v7, 0xff

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Led/h;->x(I)B

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    and-int/lit16 v8, v8, 0xff

    .line 35
    .line 36
    if-ne v7, v8, :cond_0

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-ge v7, v8, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    if-ge v0, v1, :cond_3

    .line 48
    .line 49
    :goto_1
    const/4 v3, -0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v3, 0x1

    .line 52
    :goto_2
    return v3
.end method

.method public q(Ljava/lang/String;)Led/h;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Led/h;->r()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Led/h;->a:[B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Led/h;

    .line 20
    .line 21
    const-string v1, "digestBytes"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Led/h;-><init>([B)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Led/h;->a:[B

    array-length v0, v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Led/h;->a:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    new-array v1, v1, [C

    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    aget-byte v5, v0, v3

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    add-int/lit8 v6, v4, 0x1

    .line 18
    .line 19
    sget-object v7, Lc5/u;->h:[C

    .line 20
    .line 21
    shr-int/lit8 v8, v5, 0x4

    .line 22
    .line 23
    and-int/lit8 v8, v8, 0xf

    .line 24
    .line 25
    aget-char v8, v7, v8

    .line 26
    .line 27
    aput-char v8, v1, v4

    .line 28
    .line 29
    add-int/lit8 v4, v6, 0x1

    .line 30
    .line 31
    and-int/lit8 v5, v5, 0xf

    .line 32
    .line 33
    aget-char v5, v7, v5

    .line 34
    .line 35
    aput-char v5, v1, v6

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Led/h;->a:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v1, "[size=0]"

    .line 14
    .line 15
    goto/16 :goto_2b

    .line 16
    .line 17
    :cond_1
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    :cond_2
    :goto_1
    const/16 v6, 0x40

    .line 22
    .line 23
    if-ge v3, v2, :cond_47

    .line 24
    .line 25
    aget-byte v7, v1, v3

    .line 26
    .line 27
    const/16 v8, 0xd

    .line 28
    .line 29
    const/16 v9, 0x7f

    .line 30
    .line 31
    const/16 v10, 0x9f

    .line 32
    .line 33
    const/16 v11, 0x1f

    .line 34
    .line 35
    const v12, 0xfffd

    .line 36
    .line 37
    .line 38
    const/high16 v13, 0x10000

    .line 39
    .line 40
    const/16 v15, 0xa

    .line 41
    .line 42
    if-ltz v7, :cond_13

    .line 43
    .line 44
    add-int/lit8 v14, v4, 0x1

    .line 45
    .line 46
    if-ne v4, v6, :cond_3

    .line 47
    .line 48
    goto/16 :goto_25

    .line 49
    .line 50
    :cond_3
    if-eq v7, v15, :cond_8

    .line 51
    .line 52
    if-eq v7, v8, :cond_8

    .line 53
    .line 54
    if-ltz v7, :cond_4

    .line 55
    .line 56
    if-gt v7, v11, :cond_4

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/4 v4, 0x0

    .line 61
    :goto_2
    if-nez v4, :cond_7

    .line 62
    .line 63
    if-gt v9, v7, :cond_5

    .line 64
    .line 65
    if-gt v7, v10, :cond_5

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    const/4 v4, 0x0

    .line 70
    :goto_3
    if-eqz v4, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    const/4 v4, 0x0

    .line 74
    goto :goto_5

    .line 75
    :cond_7
    :goto_4
    const/4 v4, 0x1

    .line 76
    :goto_5
    if-nez v4, :cond_46

    .line 77
    .line 78
    :cond_8
    if-ne v7, v12, :cond_9

    .line 79
    .line 80
    goto/16 :goto_24

    .line 81
    .line 82
    :cond_9
    if-ge v7, v13, :cond_a

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    goto :goto_6

    .line 86
    :cond_a
    const/4 v4, 0x2

    .line 87
    :goto_6
    add-int/2addr v5, v4

    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    :goto_7
    move v4, v14

    .line 91
    if-ge v3, v2, :cond_2

    .line 92
    .line 93
    aget-byte v7, v1, v3

    .line 94
    .line 95
    if-ltz v7, :cond_2

    .line 96
    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    add-int/lit8 v14, v4, 0x1

    .line 100
    .line 101
    if-ne v4, v6, :cond_b

    .line 102
    .line 103
    goto/16 :goto_25

    .line 104
    .line 105
    :cond_b
    if-eq v7, v15, :cond_10

    .line 106
    .line 107
    if-eq v7, v8, :cond_10

    .line 108
    .line 109
    if-ltz v7, :cond_c

    .line 110
    .line 111
    if-gt v7, v11, :cond_c

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    goto :goto_8

    .line 115
    :cond_c
    const/4 v4, 0x0

    .line 116
    :goto_8
    if-nez v4, :cond_f

    .line 117
    .line 118
    if-gt v9, v7, :cond_d

    .line 119
    .line 120
    if-gt v7, v10, :cond_d

    .line 121
    .line 122
    const/4 v4, 0x1

    .line 123
    goto :goto_9

    .line 124
    :cond_d
    const/4 v4, 0x0

    .line 125
    :goto_9
    if-eqz v4, :cond_e

    .line 126
    .line 127
    goto :goto_a

    .line 128
    :cond_e
    const/4 v4, 0x0

    .line 129
    goto :goto_b

    .line 130
    :cond_f
    :goto_a
    const/4 v4, 0x1

    .line 131
    :goto_b
    if-nez v4, :cond_46

    .line 132
    .line 133
    :cond_10
    if-ne v7, v12, :cond_11

    .line 134
    .line 135
    goto/16 :goto_24

    .line 136
    .line 137
    :cond_11
    if-ge v7, v13, :cond_12

    .line 138
    .line 139
    const/4 v4, 0x1

    .line 140
    goto :goto_c

    .line 141
    :cond_12
    const/4 v4, 0x2

    .line 142
    :goto_c
    add-int/2addr v5, v4

    .line 143
    goto :goto_7

    .line 144
    :cond_13
    shr-int/lit8 v12, v7, 0x5

    .line 145
    .line 146
    const/4 v13, -0x2

    .line 147
    const/16 v14, 0x80

    .line 148
    .line 149
    if-ne v12, v13, :cond_20

    .line 150
    .line 151
    add-int/lit8 v12, v3, 0x1

    .line 152
    .line 153
    if-gt v2, v12, :cond_14

    .line 154
    .line 155
    if-ne v4, v6, :cond_46

    .line 156
    .line 157
    goto/16 :goto_25

    .line 158
    .line 159
    :cond_14
    aget-byte v12, v1, v12

    .line 160
    .line 161
    and-int/lit16 v13, v12, 0xc0

    .line 162
    .line 163
    if-ne v13, v14, :cond_15

    .line 164
    .line 165
    const/4 v13, 0x1

    .line 166
    goto :goto_d

    .line 167
    :cond_15
    const/4 v13, 0x0

    .line 168
    :goto_d
    if-nez v13, :cond_16

    .line 169
    .line 170
    if-ne v4, v6, :cond_46

    .line 171
    .line 172
    goto/16 :goto_25

    .line 173
    .line 174
    :cond_16
    xor-int/lit16 v12, v12, 0xf80

    .line 175
    .line 176
    shl-int/lit8 v7, v7, 0x6

    .line 177
    .line 178
    xor-int/2addr v7, v12

    .line 179
    if-ge v7, v14, :cond_17

    .line 180
    .line 181
    if-ne v4, v6, :cond_46

    .line 182
    .line 183
    goto/16 :goto_25

    .line 184
    .line 185
    :cond_17
    add-int/lit8 v12, v4, 0x1

    .line 186
    .line 187
    if-ne v4, v6, :cond_18

    .line 188
    .line 189
    goto/16 :goto_25

    .line 190
    .line 191
    :cond_18
    if-eq v7, v15, :cond_1d

    .line 192
    .line 193
    if-eq v7, v8, :cond_1d

    .line 194
    .line 195
    if-ltz v7, :cond_19

    .line 196
    .line 197
    if-gt v7, v11, :cond_19

    .line 198
    .line 199
    const/4 v4, 0x1

    .line 200
    goto :goto_e

    .line 201
    :cond_19
    const/4 v4, 0x0

    .line 202
    :goto_e
    if-nez v4, :cond_1c

    .line 203
    .line 204
    if-gt v9, v7, :cond_1a

    .line 205
    .line 206
    if-gt v7, v10, :cond_1a

    .line 207
    .line 208
    const/4 v4, 0x1

    .line 209
    goto :goto_f

    .line 210
    :cond_1a
    const/4 v4, 0x0

    .line 211
    :goto_f
    if-eqz v4, :cond_1b

    .line 212
    .line 213
    goto :goto_10

    .line 214
    :cond_1b
    const/4 v4, 0x0

    .line 215
    goto :goto_11

    .line 216
    :cond_1c
    :goto_10
    const/4 v4, 0x1

    .line 217
    :goto_11
    if-nez v4, :cond_46

    .line 218
    .line 219
    :cond_1d
    const v4, 0xfffd

    .line 220
    .line 221
    .line 222
    if-ne v7, v4, :cond_1e

    .line 223
    .line 224
    goto/16 :goto_24

    .line 225
    .line 226
    :cond_1e
    const/high16 v4, 0x10000

    .line 227
    .line 228
    if-ge v7, v4, :cond_1f

    .line 229
    .line 230
    const/4 v14, 0x1

    .line 231
    goto :goto_12

    .line 232
    :cond_1f
    const/4 v14, 0x2

    .line 233
    :goto_12
    add-int/2addr v5, v14

    .line 234
    sget-object v4, Ll9/m;->a:Ll9/m;

    .line 235
    .line 236
    add-int/lit8 v3, v3, 0x2

    .line 237
    .line 238
    move v4, v12

    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_20
    shr-int/lit8 v9, v7, 0x4

    .line 242
    .line 243
    const v10, 0xdfff

    .line 244
    .line 245
    .line 246
    const v11, 0xd800

    .line 247
    .line 248
    .line 249
    if-ne v9, v13, :cond_31

    .line 250
    .line 251
    add-int/lit8 v9, v3, 0x2

    .line 252
    .line 253
    if-gt v2, v9, :cond_21

    .line 254
    .line 255
    if-ne v4, v6, :cond_46

    .line 256
    .line 257
    goto/16 :goto_25

    .line 258
    .line 259
    :cond_21
    add-int/lit8 v12, v3, 0x1

    .line 260
    .line 261
    aget-byte v12, v1, v12

    .line 262
    .line 263
    and-int/lit16 v13, v12, 0xc0

    .line 264
    .line 265
    if-ne v13, v14, :cond_22

    .line 266
    .line 267
    const/4 v13, 0x1

    .line 268
    goto :goto_13

    .line 269
    :cond_22
    const/4 v13, 0x0

    .line 270
    :goto_13
    if-nez v13, :cond_23

    .line 271
    .line 272
    if-ne v4, v6, :cond_46

    .line 273
    .line 274
    goto/16 :goto_25

    .line 275
    .line 276
    :cond_23
    aget-byte v9, v1, v9

    .line 277
    .line 278
    and-int/lit16 v13, v9, 0xc0

    .line 279
    .line 280
    if-ne v13, v14, :cond_24

    .line 281
    .line 282
    const/4 v13, 0x1

    .line 283
    goto :goto_14

    .line 284
    :cond_24
    const/4 v13, 0x0

    .line 285
    :goto_14
    if-nez v13, :cond_25

    .line 286
    .line 287
    if-ne v4, v6, :cond_46

    .line 288
    .line 289
    goto/16 :goto_25

    .line 290
    .line 291
    :cond_25
    const v13, -0x1e080

    .line 292
    .line 293
    .line 294
    xor-int/2addr v9, v13

    .line 295
    shl-int/lit8 v12, v12, 0x6

    .line 296
    .line 297
    xor-int/2addr v9, v12

    .line 298
    shl-int/lit8 v7, v7, 0xc

    .line 299
    .line 300
    xor-int/2addr v7, v9

    .line 301
    const/16 v9, 0x800

    .line 302
    .line 303
    if-ge v7, v9, :cond_26

    .line 304
    .line 305
    if-ne v4, v6, :cond_46

    .line 306
    .line 307
    goto/16 :goto_25

    .line 308
    .line 309
    :cond_26
    if-gt v11, v7, :cond_27

    .line 310
    .line 311
    if-gt v7, v10, :cond_27

    .line 312
    .line 313
    const/4 v9, 0x1

    .line 314
    goto :goto_15

    .line 315
    :cond_27
    const/4 v9, 0x0

    .line 316
    :goto_15
    if-eqz v9, :cond_28

    .line 317
    .line 318
    if-ne v4, v6, :cond_46

    .line 319
    .line 320
    goto/16 :goto_25

    .line 321
    .line 322
    :cond_28
    add-int/lit8 v9, v4, 0x1

    .line 323
    .line 324
    if-ne v4, v6, :cond_29

    .line 325
    .line 326
    goto/16 :goto_25

    .line 327
    .line 328
    :cond_29
    if-eq v7, v15, :cond_2e

    .line 329
    .line 330
    if-eq v7, v8, :cond_2e

    .line 331
    .line 332
    if-ltz v7, :cond_2a

    .line 333
    .line 334
    const/16 v4, 0x1f

    .line 335
    .line 336
    if-gt v7, v4, :cond_2a

    .line 337
    .line 338
    const/4 v4, 0x1

    .line 339
    goto :goto_16

    .line 340
    :cond_2a
    const/4 v4, 0x0

    .line 341
    :goto_16
    if-nez v4, :cond_2d

    .line 342
    .line 343
    const/16 v4, 0x7f

    .line 344
    .line 345
    if-gt v4, v7, :cond_2b

    .line 346
    .line 347
    const/16 v4, 0x9f

    .line 348
    .line 349
    if-gt v7, v4, :cond_2b

    .line 350
    .line 351
    const/4 v4, 0x1

    .line 352
    goto :goto_17

    .line 353
    :cond_2b
    const/4 v4, 0x0

    .line 354
    :goto_17
    if-eqz v4, :cond_2c

    .line 355
    .line 356
    goto :goto_18

    .line 357
    :cond_2c
    const/4 v4, 0x0

    .line 358
    goto :goto_19

    .line 359
    :cond_2d
    :goto_18
    const/4 v4, 0x1

    .line 360
    :goto_19
    if-nez v4, :cond_46

    .line 361
    .line 362
    :cond_2e
    const v4, 0xfffd

    .line 363
    .line 364
    .line 365
    if-ne v7, v4, :cond_2f

    .line 366
    .line 367
    goto/16 :goto_24

    .line 368
    .line 369
    :cond_2f
    const/high16 v4, 0x10000

    .line 370
    .line 371
    if-ge v7, v4, :cond_30

    .line 372
    .line 373
    const/4 v14, 0x1

    .line 374
    goto :goto_1a

    .line 375
    :cond_30
    const/4 v14, 0x2

    .line 376
    :goto_1a
    add-int/2addr v5, v14

    .line 377
    sget-object v4, Ll9/m;->a:Ll9/m;

    .line 378
    .line 379
    add-int/lit8 v3, v3, 0x3

    .line 380
    .line 381
    move v4, v9

    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :cond_31
    shr-int/lit8 v8, v7, 0x3

    .line 385
    .line 386
    if-ne v8, v13, :cond_45

    .line 387
    .line 388
    add-int/lit8 v8, v3, 0x3

    .line 389
    .line 390
    if-gt v2, v8, :cond_32

    .line 391
    .line 392
    if-ne v4, v6, :cond_46

    .line 393
    .line 394
    goto/16 :goto_25

    .line 395
    .line 396
    :cond_32
    add-int/lit8 v9, v3, 0x1

    .line 397
    .line 398
    aget-byte v9, v1, v9

    .line 399
    .line 400
    and-int/lit16 v12, v9, 0xc0

    .line 401
    .line 402
    if-ne v12, v14, :cond_33

    .line 403
    .line 404
    const/4 v12, 0x1

    .line 405
    goto :goto_1b

    .line 406
    :cond_33
    const/4 v12, 0x0

    .line 407
    :goto_1b
    if-nez v12, :cond_34

    .line 408
    .line 409
    if-ne v4, v6, :cond_46

    .line 410
    .line 411
    goto/16 :goto_25

    .line 412
    .line 413
    :cond_34
    add-int/lit8 v12, v3, 0x2

    .line 414
    .line 415
    aget-byte v12, v1, v12

    .line 416
    .line 417
    and-int/lit16 v13, v12, 0xc0

    .line 418
    .line 419
    if-ne v13, v14, :cond_35

    .line 420
    .line 421
    const/4 v13, 0x1

    .line 422
    goto :goto_1c

    .line 423
    :cond_35
    const/4 v13, 0x0

    .line 424
    :goto_1c
    if-nez v13, :cond_36

    .line 425
    .line 426
    if-ne v4, v6, :cond_46

    .line 427
    .line 428
    goto/16 :goto_25

    .line 429
    .line 430
    :cond_36
    aget-byte v8, v1, v8

    .line 431
    .line 432
    and-int/lit16 v13, v8, 0xc0

    .line 433
    .line 434
    if-ne v13, v14, :cond_37

    .line 435
    .line 436
    const/4 v13, 0x1

    .line 437
    goto :goto_1d

    .line 438
    :cond_37
    const/4 v13, 0x0

    .line 439
    :goto_1d
    if-nez v13, :cond_38

    .line 440
    .line 441
    if-ne v4, v6, :cond_46

    .line 442
    .line 443
    goto/16 :goto_25

    .line 444
    .line 445
    :cond_38
    const v13, 0x381f80

    .line 446
    .line 447
    .line 448
    xor-int/2addr v8, v13

    .line 449
    shl-int/lit8 v12, v12, 0x6

    .line 450
    .line 451
    xor-int/2addr v8, v12

    .line 452
    shl-int/lit8 v9, v9, 0xc

    .line 453
    .line 454
    xor-int/2addr v8, v9

    .line 455
    shl-int/lit8 v7, v7, 0x12

    .line 456
    .line 457
    xor-int/2addr v7, v8

    .line 458
    const v8, 0x10ffff

    .line 459
    .line 460
    .line 461
    if-le v7, v8, :cond_39

    .line 462
    .line 463
    if-ne v4, v6, :cond_46

    .line 464
    .line 465
    goto/16 :goto_25

    .line 466
    .line 467
    :cond_39
    if-gt v11, v7, :cond_3a

    .line 468
    .line 469
    if-gt v7, v10, :cond_3a

    .line 470
    .line 471
    const/4 v8, 0x1

    .line 472
    goto :goto_1e

    .line 473
    :cond_3a
    const/4 v8, 0x0

    .line 474
    :goto_1e
    if-eqz v8, :cond_3b

    .line 475
    .line 476
    if-ne v4, v6, :cond_46

    .line 477
    .line 478
    goto :goto_25

    .line 479
    :cond_3b
    const/high16 v8, 0x10000

    .line 480
    .line 481
    if-ge v7, v8, :cond_3c

    .line 482
    .line 483
    if-ne v4, v6, :cond_46

    .line 484
    .line 485
    goto :goto_25

    .line 486
    :cond_3c
    add-int/lit8 v8, v4, 0x1

    .line 487
    .line 488
    if-ne v4, v6, :cond_3d

    .line 489
    .line 490
    goto :goto_25

    .line 491
    :cond_3d
    if-eq v7, v15, :cond_42

    .line 492
    .line 493
    const/16 v4, 0xd

    .line 494
    .line 495
    if-eq v7, v4, :cond_42

    .line 496
    .line 497
    if-ltz v7, :cond_3e

    .line 498
    .line 499
    const/16 v4, 0x1f

    .line 500
    .line 501
    if-gt v7, v4, :cond_3e

    .line 502
    .line 503
    const/4 v4, 0x1

    .line 504
    goto :goto_1f

    .line 505
    :cond_3e
    const/4 v4, 0x0

    .line 506
    :goto_1f
    if-nez v4, :cond_41

    .line 507
    .line 508
    const/16 v4, 0x7f

    .line 509
    .line 510
    if-gt v4, v7, :cond_3f

    .line 511
    .line 512
    const/16 v4, 0x9f

    .line 513
    .line 514
    if-gt v7, v4, :cond_3f

    .line 515
    .line 516
    const/4 v4, 0x1

    .line 517
    goto :goto_20

    .line 518
    :cond_3f
    const/4 v4, 0x0

    .line 519
    :goto_20
    if-eqz v4, :cond_40

    .line 520
    .line 521
    goto :goto_21

    .line 522
    :cond_40
    const/4 v4, 0x0

    .line 523
    goto :goto_22

    .line 524
    :cond_41
    :goto_21
    const/4 v4, 0x1

    .line 525
    :goto_22
    if-nez v4, :cond_46

    .line 526
    .line 527
    :cond_42
    const v4, 0xfffd

    .line 528
    .line 529
    .line 530
    if-ne v7, v4, :cond_43

    .line 531
    .line 532
    goto :goto_24

    .line 533
    :cond_43
    const/high16 v4, 0x10000

    .line 534
    .line 535
    if-ge v7, v4, :cond_44

    .line 536
    .line 537
    const/4 v14, 0x1

    .line 538
    goto :goto_23

    .line 539
    :cond_44
    const/4 v14, 0x2

    .line 540
    :goto_23
    add-int/2addr v5, v14

    .line 541
    sget-object v4, Ll9/m;->a:Ll9/m;

    .line 542
    .line 543
    add-int/lit8 v3, v3, 0x4

    .line 544
    .line 545
    move v4, v8

    .line 546
    goto/16 :goto_1

    .line 547
    .line 548
    :cond_45
    if-ne v4, v6, :cond_46

    .line 549
    .line 550
    goto :goto_25

    .line 551
    :cond_46
    :goto_24
    const/4 v5, -0x1

    .line 552
    :cond_47
    :goto_25
    const-string v2, "[size="

    .line 553
    .line 554
    const/4 v3, -0x1

    .line 555
    if-ne v5, v3, :cond_4e

    .line 556
    .line 557
    array-length v3, v1

    .line 558
    if-gt v3, v6, :cond_48

    .line 559
    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    const-string v2, "[hex="

    .line 563
    .line 564
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {p0 .. p0}, Led/h;->t()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    goto/16 :goto_2a

    .line 575
    .line 576
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    array-length v2, v1

    .line 582
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v2, " hex="

    .line 586
    .line 587
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-static {v0, v6}, La6/a;->x(Led/h;I)I

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    array-length v4, v1

    .line 595
    if-gt v2, v4, :cond_49

    .line 596
    .line 597
    const/4 v4, 0x1

    .line 598
    goto :goto_26

    .line 599
    :cond_49
    const/4 v4, 0x0

    .line 600
    :goto_26
    if-eqz v4, :cond_4d

    .line 601
    .line 602
    add-int/lit8 v4, v2, 0x0

    .line 603
    .line 604
    if-ltz v4, :cond_4a

    .line 605
    .line 606
    const/4 v4, 0x1

    .line 607
    goto :goto_27

    .line 608
    :cond_4a
    const/4 v4, 0x0

    .line 609
    :goto_27
    if-eqz v4, :cond_4c

    .line 610
    .line 611
    array-length v4, v1

    .line 612
    if-ne v2, v4, :cond_4b

    .line 613
    .line 614
    move-object v4, v0

    .line 615
    goto :goto_28

    .line 616
    :cond_4b
    new-instance v4, Led/h;

    .line 617
    .line 618
    const/4 v5, 0x0

    .line 619
    invoke-static {v1, v5, v2}, Lm9/i;->k0([BII)[B

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-direct {v4, v1}, Led/h;-><init>([B)V

    .line 624
    .line 625
    .line 626
    :goto_28
    invoke-virtual {v4}, Led/h;->t()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    goto :goto_29

    .line 634
    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 635
    .line 636
    const-string v2, "endIndex < beginIndex"

    .line 637
    .line 638
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    throw v1

    .line 646
    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    const-string v3, "endIndex > length("

    .line 649
    .line 650
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    array-length v1, v1

    .line 654
    const/16 v3, 0x29

    .line 655
    .line 656
    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/core/a;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    throw v2

    .line 670
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Led/h;->G()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    const/4 v4, 0x0

    .line 675
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 680
    .line 681
    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    const-string v6, "\\"

    .line 685
    .line 686
    const-string v7, "\\\\"

    .line 687
    .line 688
    invoke-static {v4, v6, v7}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    const-string v6, "\n"

    .line 693
    .line 694
    const-string v7, "\\n"

    .line 695
    .line 696
    invoke-static {v4, v6, v7}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    const-string v6, "\r"

    .line 701
    .line 702
    const-string v7, "\\r"

    .line 703
    .line 704
    invoke-static {v4, v6, v7}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    if-ge v5, v3, :cond_4f

    .line 713
    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    array-length v1, v1

    .line 720
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v1, " text="

    .line 724
    .line 725
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    :goto_29
    const-string v1, "\u2026]"

    .line 732
    .line 733
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    goto :goto_2b

    .line 741
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 742
    .line 743
    const-string v2, "[text="

    .line 744
    .line 745
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    :goto_2a
    const/16 v2, 0x5d

    .line 752
    .line 753
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    :goto_2b
    return-object v1
.end method

.method public u(I[B)I
    .locals 5

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/h;->a:[B

    array-length v1, v0

    array-length v2, p2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gt p1, v1, :cond_2

    :goto_0
    add-int/lit8 v3, p1, 0x1

    array-length v4, p2

    invoke-static {p1, v0, v2, p2, v4}, La6/a;->e(I[BI[BI)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    :goto_2
    return p1
.end method

.method public w()[B
    .locals 1

    iget-object v0, p0, Led/h;->a:[B

    return-object v0
.end method

.method public x(I)B
    .locals 1

    iget-object v0, p0, Led/h;->a:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public y(I[B)I
    .locals 4

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La6/a;->x(Led/h;I)I

    move-result p1

    iget-object v0, p0, Led/h;->a:[B

    array-length v1, v0

    array-length v2, p2

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz p1, :cond_2

    :goto_0
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p1, v0, v2, p2, v3}, La6/a;->e(I[BI[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    :goto_2
    return p1
.end method
