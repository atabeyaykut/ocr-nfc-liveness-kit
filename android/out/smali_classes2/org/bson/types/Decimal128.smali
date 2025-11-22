.class public final Lorg/bson/types/Decimal128;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/types/Decimal128;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "infinity"

    const-string v2, "+infinity"

    const-string v3, "inf"

    const-string v4, "+inf"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-inf"

    const-string v2, "-infinity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-wide/high16 v0, 0x7800000000000000L

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x800000000000000L

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x400000000000000L    # -1.94906280228E289

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x7c00000000000000L    # 1.94906280228E289

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x3040000000000000L    # 2.7635739376302223E-76

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x4fc0000000000000L    # -2.7635739376302223E-76

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lorg/bson/types/Decimal128;->a:J

    iput-wide p3, p0, Lorg/bson/types/Decimal128;->b:J

    return-void
.end method

.method public static fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;
    .locals 1

    new-instance v0, Lorg/bson/types/Decimal128;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bson/types/Decimal128;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lorg/bson/types/Decimal128;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->r()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    xor-int/2addr v1, p1

    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->q()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->q()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_9

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->t()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_9

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->r()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->q()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_b

    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->t()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_b

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->n()Ljava/math/BigDecimal;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->n()Ljava/math/BigDecimal;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->r()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->q()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_4

    .line 83
    .line 84
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_4

    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 v4, 0x0

    .line 95
    :goto_0
    if-eqz v4, :cond_7

    .line 96
    .line 97
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->r()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->q()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_5

    .line 108
    .line 109
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_5

    .line 116
    .line 117
    const/4 v4, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    const/4 v4, 0x0

    .line 120
    :goto_1
    if-eqz v4, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lorg/bson/types/Decimal128;->o(Ljava/math/BigDecimal;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    invoke-virtual {p1, v3}, Lorg/bson/types/Decimal128;->o(Ljava/math/BigDecimal;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    :goto_2
    const/4 v1, 0x0

    .line 135
    goto :goto_4

    .line 136
    :cond_6
    invoke-virtual {p1, v3}, Lorg/bson/types/Decimal128;->o(Ljava/math/BigDecimal;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_7

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->r()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_8

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_8
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->q()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_a

    .line 155
    .line 156
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->t()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_9

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    :goto_3
    const/4 v1, -0x1

    .line 164
    goto :goto_4

    .line 165
    :cond_a
    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    :cond_b
    :goto_4
    return v1
.end method

.method public final doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->n()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/types/Decimal128;->o(Ljava/math/BigDecimal;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lorg/bson/types/Decimal128;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bson/types/Decimal128;

    iget-wide v2, p0, Lorg/bson/types/Decimal128;->a:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->a:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lorg/bson/types/Decimal128;->b:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->b:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final floatValue()F
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lorg/bson/types/Decimal128;->a:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final intValue()I
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final n()Ljava/math/BigDecimal;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lorg/bson/types/Decimal128;->a:J

    .line 4
    .line 5
    const-wide/high16 v3, 0x6000000000000000L    # 2.6815615859885194E154

    .line 6
    .line 7
    and-long v5, v1, v3

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x1

    .line 11
    cmp-long v9, v5, v3

    .line 12
    .line 13
    if-nez v9, :cond_0

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-eqz v5, :cond_1

    .line 19
    .line 20
    const-wide v5, 0x1fffe00000000000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v5, v1

    .line 26
    const/16 v9, 0x2f

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-wide v5, 0x7fff800000000000L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v5, v1

    .line 35
    const/16 v9, 0x31

    .line 36
    .line 37
    :goto_1
    ushr-long/2addr v5, v9

    .line 38
    long-to-int v6, v5

    .line 39
    add-int/lit16 v6, v6, -0x1820

    .line 40
    .line 41
    neg-int v5, v6

    .line 42
    and-long v9, v1, v3

    .line 43
    .line 44
    cmp-long v6, v9, v3

    .line 45
    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v3, 0x0

    .line 51
    :goto_2
    if-eqz v3, :cond_3

    .line 52
    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    invoke-static {v1, v2, v5}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    return-object v1

    .line 60
    :cond_3
    new-instance v3, Ljava/math/BigDecimal;

    .line 61
    .line 62
    new-instance v4, Ljava/math/BigInteger;

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Lorg/bson/types/Decimal128;->t()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    const/4 v6, -0x1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/4 v6, 0x1

    .line 73
    :goto_3
    const/16 v9, 0xf

    .line 74
    .line 75
    new-array v9, v9, [B

    .line 76
    .line 77
    const/16 v12, 0xe

    .line 78
    .line 79
    const-wide/16 v13, 0xff

    .line 80
    .line 81
    :goto_4
    const/4 v15, 0x7

    .line 82
    const/16 v16, 0x8

    .line 83
    .line 84
    if-lt v12, v15, :cond_5

    .line 85
    .line 86
    iget-wide v10, v0, Lorg/bson/types/Decimal128;->b:J

    .line 87
    .line 88
    and-long/2addr v10, v13

    .line 89
    rsub-int/lit8 v15, v12, 0xe

    .line 90
    .line 91
    shl-int/lit8 v15, v15, 0x3

    .line 92
    .line 93
    ushr-long/2addr v10, v15

    .line 94
    long-to-int v11, v10

    .line 95
    int-to-byte v10, v11

    .line 96
    aput-byte v10, v9, v12

    .line 97
    .line 98
    shl-long v13, v13, v16

    .line 99
    .line 100
    add-int/lit8 v12, v12, -0x1

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    const/4 v10, 0x6

    .line 104
    const-wide/16 v17, 0xff

    .line 105
    .line 106
    :goto_5
    if-lt v10, v8, :cond_6

    .line 107
    .line 108
    and-long v11, v1, v17

    .line 109
    .line 110
    rsub-int/lit8 v13, v10, 0x6

    .line 111
    .line 112
    shl-int/lit8 v13, v13, 0x3

    .line 113
    .line 114
    ushr-long/2addr v11, v13

    .line 115
    long-to-int v12, v11

    .line 116
    int-to-byte v11, v12

    .line 117
    aput-byte v11, v9, v10

    .line 118
    .line 119
    shl-long v17, v17, v16

    .line 120
    .line 121
    add-int/lit8 v10, v10, -0x1

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_6
    const-wide/high16 v10, 0x1000000000000L

    .line 125
    .line 126
    and-long/2addr v1, v10

    .line 127
    const/16 v8, 0x30

    .line 128
    .line 129
    ushr-long/2addr v1, v8

    .line 130
    long-to-int v2, v1

    .line 131
    int-to-byte v1, v2

    .line 132
    aput-byte v1, v9, v7

    .line 133
    .line 134
    invoke-direct {v4, v6, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 138
    .line 139
    .line 140
    return-object v3
.end method

.method public final o(Ljava/math/BigDecimal;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q()Z
    .locals 5

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->a:J

    const-wide/high16 v2, 0x7800000000000000L

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()Z
    .locals 5

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->a:J

    const-wide/high16 v2, 0x7c00000000000000L    # 1.94906280228E289

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 5

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "NaN"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->q()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "-Infinity"

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const-string v0, "Infinity"

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->n()Ljava/math/BigDecimal;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    const/16 v3, 0x2d

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    neg-int v1, v1

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x1

    .line 70
    sub-int/2addr v3, v4

    .line 71
    add-int/2addr v3, v1

    .line 72
    const/4 v5, 0x0

    .line 73
    const/16 v6, 0x2e

    .line 74
    .line 75
    if-gtz v1, :cond_7

    .line 76
    .line 77
    const/4 v7, -0x6

    .line 78
    if-lt v3, v7, :cond_7

    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    neg-int v3, v1

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    sub-int/2addr v3, v4

    .line 92
    if-ltz v3, :cond_6

    .line 93
    .line 94
    const-string v1, "0."

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_0
    if-ge v1, v3, :cond_5

    .line 101
    .line 102
    const/16 v4, 0x30

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0, v2, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    neg-int v3, v3

    .line 119
    invoke-virtual {v0, v2, v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    sub-int v1, v3, v1

    .line 126
    .line 127
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-le v1, v4, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v0, v2, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_8
    const/16 v1, 0x45

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    if-lez v3, :cond_9

    .line 160
    .line 161
    const/16 v1, 0x2b

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0
.end method
