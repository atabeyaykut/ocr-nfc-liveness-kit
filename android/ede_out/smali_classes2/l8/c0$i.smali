.class public final Ll8/c0$i;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll8/p<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll8/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll8/u;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ll8/v;

    .line 2
    .line 3
    iget v0, p1, Ll8/v;->j:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ll8/v;->s()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :cond_0
    const/16 v1, 0x10

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iput v2, p1, Ll8/v;->j:I

    .line 17
    .line 18
    iget-object v0, p1, Ll8/u;->d:[I

    .line 19
    .line 20
    iget v1, p1, Ll8/u;->a:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    aget v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    aput v2, v0, v1

    .line 29
    .line 30
    iget-wide v0, p1, Ll8/v;->k:J

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    const/16 v1, 0x11

    .line 35
    .line 36
    const-string v3, " at path "

    .line 37
    .line 38
    const-string v4, "Expected a long but was "

    .line 39
    .line 40
    const/16 v5, 0xb

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    iget v0, p1, Ll8/v;->l:I

    .line 45
    .line 46
    int-to-long v0, v0

    .line 47
    iget-object v6, p1, Ll8/v;->h:Led/e;

    .line 48
    .line 49
    invoke-virtual {v6, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p1, Ll8/v;->m:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v1, 0x9

    .line 57
    .line 58
    if-eq v0, v1, :cond_5

    .line 59
    .line 60
    const/16 v6, 0x8

    .line 61
    .line 62
    if-ne v0, v6, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    if-ne v0, v5, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    new-instance v0, Ll8/r;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ll8/v;->k()Ll8/u$b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ll8/u;->getPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Ll8/r;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 101
    .line 102
    sget-object v0, Ll8/v;->p:Led/h;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    sget-object v0, Ll8/v;->n:Led/h;

    .line 106
    .line 107
    :goto_1
    invoke-virtual {p1, v0}, Ll8/v;->F(Led/h;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p1, Ll8/v;->m:Ljava/lang/String;

    .line 112
    .line 113
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    iput v2, p1, Ll8/v;->j:I

    .line 118
    .line 119
    iget-object v6, p1, Ll8/u;->d:[I

    .line 120
    .line 121
    iget v7, p1, Ll8/u;->a:I

    .line 122
    .line 123
    add-int/lit8 v7, v7, -0x1

    .line 124
    .line 125
    aget v8, v6, v7

    .line 126
    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catch_0
    :goto_2
    iput v5, p1, Ll8/v;->j:I

    .line 133
    .line 134
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    .line 135
    .line 136
    iget-object v1, p1, Ll8/v;->m:Ljava/lang/String;

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 142
    .line 143
    .line 144
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    const/4 v3, 0x0

    .line 146
    iput-object v3, p1, Ll8/v;->m:Ljava/lang/String;

    .line 147
    .line 148
    iput v2, p1, Ll8/v;->j:I

    .line 149
    .line 150
    iget-object v2, p1, Ll8/u;->d:[I

    .line 151
    .line 152
    iget p1, p1, Ll8/u;->a:I

    .line 153
    .line 154
    add-int/lit8 p1, p1, -0x1

    .line 155
    .line 156
    aget v3, v2, p1

    .line 157
    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    aput v3, v2, p1

    .line 161
    .line 162
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :catch_1
    new-instance v0, Ll8/r;

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, p1, Ll8/v;->m:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ll8/u;->getPath()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {v0, p1}, Ll8/r;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0
.end method

.method public final c(Ll8/y;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1, v0, v1}, Ll8/y;->n(J)Ll8/y;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JsonAdapter(Long)"

    return-object v0
.end method
