.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a([B[[BI)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v2, :cond_c

    .line 11
    .line 12
    add-int v5, v4, v2

    .line 13
    .line 14
    div-int/lit8 v5, v5, 0x2

    .line 15
    .line 16
    :goto_1
    const/4 v6, -0x1

    .line 17
    const/16 v7, 0xa

    .line 18
    .line 19
    if-le v5, v6, :cond_0

    .line 20
    .line 21
    aget-byte v8, v0, v5

    .line 22
    .line 23
    int-to-byte v9, v7

    .line 24
    if-eq v8, v9, :cond_0

    .line 25
    .line 26
    add-int/lit8 v5, v5, -0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    const/4 v9, 0x1

    .line 33
    :goto_2
    add-int v10, v5, v9

    .line 34
    .line 35
    aget-byte v11, v0, v10

    .line 36
    .line 37
    int-to-byte v12, v7

    .line 38
    if-eq v11, v12, :cond_1

    .line 39
    .line 40
    add-int/lit8 v9, v9, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    sub-int v7, v10, v5

    .line 44
    .line 45
    move/from16 v11, p2

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v13, 0x0

    .line 50
    :goto_3
    if-eqz v9, :cond_2

    .line 51
    .line 52
    const/16 v9, 0x2e

    .line 53
    .line 54
    const/4 v14, 0x0

    .line 55
    goto :goto_4

    .line 56
    :cond_2
    aget-object v14, v1, v11

    .line 57
    .line 58
    aget-byte v14, v14, v12

    .line 59
    .line 60
    sget-object v15, Lsc/c;->a:[B

    .line 61
    .line 62
    and-int/lit16 v14, v14, 0xff

    .line 63
    .line 64
    move/from16 v17, v14

    .line 65
    .line 66
    move v14, v9

    .line 67
    move/from16 v9, v17

    .line 68
    .line 69
    :goto_4
    add-int v15, v5, v13

    .line 70
    .line 71
    aget-byte v15, v0, v15

    .line 72
    .line 73
    sget-object v16, Lsc/c;->a:[B

    .line 74
    .line 75
    and-int/lit16 v15, v15, 0xff

    .line 76
    .line 77
    sub-int/2addr v9, v15

    .line 78
    if-eqz v9, :cond_3

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 82
    .line 83
    add-int/lit8 v12, v12, 0x1

    .line 84
    .line 85
    if-ne v13, v7, :cond_4

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_4
    aget-object v15, v1, v11

    .line 89
    .line 90
    array-length v15, v15

    .line 91
    if-ne v15, v12, :cond_b

    .line 92
    .line 93
    array-length v14, v1

    .line 94
    sub-int/2addr v14, v8

    .line 95
    if-ne v11, v14, :cond_a

    .line 96
    .line 97
    :goto_5
    if-gez v9, :cond_5

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_5
    if-lez v9, :cond_6

    .line 101
    .line 102
    goto :goto_8

    .line 103
    :cond_6
    sub-int v6, v7, v13

    .line 104
    .line 105
    aget-object v8, v1, v11

    .line 106
    .line 107
    array-length v8, v8

    .line 108
    sub-int/2addr v8, v12

    .line 109
    add-int/lit8 v11, v11, 0x1

    .line 110
    .line 111
    array-length v9, v1

    .line 112
    :goto_6
    if-ge v11, v9, :cond_7

    .line 113
    .line 114
    aget-object v12, v1, v11

    .line 115
    .line 116
    array-length v12, v12

    .line 117
    add-int/2addr v8, v12

    .line 118
    add-int/lit8 v11, v11, 0x1

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_7
    if-ge v8, v6, :cond_8

    .line 122
    .line 123
    :goto_7
    add-int/lit8 v2, v5, -0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    if-le v8, v6, :cond_9

    .line 127
    .line 128
    :goto_8
    add-int/lit8 v4, v10, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    const-string v2, "UTF_8"

    .line 134
    .line 135
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Ljava/lang/String;

    .line 139
    .line 140
    invoke-direct {v2, v0, v5, v7, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 141
    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 145
    .line 146
    const/4 v9, 0x1

    .line 147
    const/4 v12, -0x1

    .line 148
    goto :goto_3

    .line 149
    :cond_b
    move v9, v14

    .line 150
    goto :goto_3

    .line 151
    :cond_c
    const/4 v2, 0x0

    .line 152
    :goto_9
    return-object v2
.end method
