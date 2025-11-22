.class public final Lvd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)Z
    .locals 8

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    aget-byte v0, p0, p1

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-lt p1, p2, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    :goto_1
    if-lt p1, p2, :cond_2

    .line 16
    .line 17
    :goto_2
    const/4 p1, 0x0

    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_2
    add-int/lit8 v2, p1, 0x1

    .line 21
    .line 22
    aget-byte p1, p0, p1

    .line 23
    .line 24
    if-gez p1, :cond_11

    .line 25
    .line 26
    const/16 v3, -0x41

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    const/16 v5, -0x20

    .line 30
    .line 31
    if-ge p1, v5, :cond_3

    .line 32
    .line 33
    if-ge v2, p2, :cond_f

    .line 34
    .line 35
    const/16 v5, -0x3e

    .line 36
    .line 37
    if-lt p1, v5, :cond_e

    .line 38
    .line 39
    add-int/lit8 p1, v2, 0x1

    .line 40
    .line 41
    aget-byte v2, p0, v2

    .line 42
    .line 43
    if-le v2, v3, :cond_1

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_3
    const/16 v6, -0x10

    .line 48
    .line 49
    if-ge p1, v6, :cond_7

    .line 50
    .line 51
    add-int/lit8 v6, p2, -0x1

    .line 52
    .line 53
    if-lt v2, v6, :cond_4

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    add-int/lit8 v6, v2, 0x1

    .line 57
    .line 58
    aget-byte v2, p0, v2

    .line 59
    .line 60
    if-gt v2, v3, :cond_e

    .line 61
    .line 62
    const/16 v7, -0x60

    .line 63
    .line 64
    if-ne p1, v5, :cond_5

    .line 65
    .line 66
    if-lt v2, v7, :cond_e

    .line 67
    .line 68
    :cond_5
    const/16 v5, -0x13

    .line 69
    .line 70
    if-ne p1, v5, :cond_6

    .line 71
    .line 72
    if-ge v2, v7, :cond_e

    .line 73
    .line 74
    :cond_6
    add-int/lit8 p1, v6, 0x1

    .line 75
    .line 76
    aget-byte v2, p0, v6

    .line 77
    .line 78
    if-le v2, v3, :cond_1

    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_7
    add-int/lit8 v5, p2, -0x2

    .line 82
    .line 83
    if-lt v2, v5, :cond_d

    .line 84
    .line 85
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/a9;->a:Lvd/d;

    .line 86
    .line 87
    add-int/lit8 p1, v2, -0x1

    .line 88
    .line 89
    aget-byte p1, p0, p1

    .line 90
    .line 91
    sub-int/2addr p2, v2

    .line 92
    const/16 v5, -0xc

    .line 93
    .line 94
    if-eqz p2, :cond_c

    .line 95
    .line 96
    if-eq p2, v1, :cond_a

    .line 97
    .line 98
    const/4 v6, 0x2

    .line 99
    if-ne p2, v6, :cond_9

    .line 100
    .line 101
    aget-byte p2, p0, v2

    .line 102
    .line 103
    add-int/2addr v2, v1

    .line 104
    aget-byte p0, p0, v2

    .line 105
    .line 106
    if-gt p1, v5, :cond_e

    .line 107
    .line 108
    if-gt p2, v3, :cond_e

    .line 109
    .line 110
    if-le p0, v3, :cond_8

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_8
    shl-int/lit8 p2, p2, 0x8

    .line 114
    .line 115
    xor-int/2addr p1, p2

    .line 116
    shl-int/lit8 p0, p0, 0x10

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    .line 120
    .line 121
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_a
    aget-byte p0, p0, v2

    .line 126
    .line 127
    if-gt p1, v5, :cond_e

    .line 128
    .line 129
    if-le p0, v3, :cond_b

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_b
    shl-int/lit8 p0, p0, 0x8

    .line 133
    .line 134
    :goto_4
    xor-int/2addr p0, p1

    .line 135
    move p1, p0

    .line 136
    goto :goto_7

    .line 137
    :cond_c
    if-le p1, v5, :cond_f

    .line 138
    .line 139
    :goto_5
    goto :goto_6

    .line 140
    :cond_d
    add-int/lit8 v5, v2, 0x1

    .line 141
    .line 142
    aget-byte v2, p0, v2

    .line 143
    .line 144
    if-gt v2, v3, :cond_e

    .line 145
    .line 146
    shl-int/lit8 p1, p1, 0x1c

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x70

    .line 149
    .line 150
    add-int/2addr v2, p1

    .line 151
    shr-int/lit8 p1, v2, 0x1e

    .line 152
    .line 153
    if-nez p1, :cond_e

    .line 154
    .line 155
    add-int/lit8 p1, v5, 0x1

    .line 156
    .line 157
    aget-byte v2, p0, v5

    .line 158
    .line 159
    if-gt v2, v3, :cond_e

    .line 160
    .line 161
    add-int/lit8 v2, p1, 0x1

    .line 162
    .line 163
    aget-byte p1, p0, p1

    .line 164
    .line 165
    if-le p1, v3, :cond_11

    .line 166
    .line 167
    :cond_e
    :goto_6
    const/4 p1, -0x1

    .line 168
    :cond_f
    :goto_7
    if-nez p1, :cond_10

    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    :cond_10
    return v0

    .line 172
    :cond_11
    move p1, v2

    .line 173
    goto/16 :goto_1
.end method
