.class public final Led/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/j0;


# instance fields
.field public final a:Led/g;

.field public final b:Ljava/util/zip/Inflater;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Led/d0;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/q;->a:Led/g;

    iput-object p2, p0, Led/q;->b:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Led/q;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Led/q;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Led/q;->d:Z

    iget-object v0, p0, Led/q;->a:Led/g;

    invoke-interface {v0}, Led/j0;->close()V

    return-void
.end method

.method public final h()Led/k0;
    .locals 1

    iget-object v0, p0, Led/q;->a:Led/g;

    invoke-interface {v0}, Led/j0;->h()Led/k0;

    move-result-object v0

    return-object v0
.end method

.method public final w(Led/e;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    cmp-long v3, p2, v0

    .line 10
    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 16
    :goto_1
    if-eqz v4, :cond_c

    .line 17
    .line 18
    iget-boolean v4, p0, Led/q;->d:Z

    .line 19
    .line 20
    xor-int/2addr v4, v2

    .line 21
    if-eqz v4, :cond_b

    .line 22
    .line 23
    iget-object v4, p0, Led/q;->a:Led/g;

    .line 24
    .line 25
    iget-object v5, p0, Led/q;->b:Ljava/util/zip/Inflater;

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    :cond_1
    :goto_2
    move-wide v2, v0

    .line 30
    goto :goto_5

    .line 31
    :cond_2
    :try_start_0
    invoke-virtual {p1, v2}, Led/e;->B(I)Led/e0;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v3, v2, Led/e0;->c:I

    .line 36
    .line 37
    rsub-int v3, v3, 0x2000

    .line 38
    .line 39
    int-to-long v6, v3

    .line 40
    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    long-to-int v3, v6

    .line 45
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-interface {v4}, Led/g;->I()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_4

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    invoke-interface {v4}, Led/g;->getBuffer()Led/e;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iget-object v6, v6, Led/e;->a:Led/e0;

    .line 64
    .line 65
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget v7, v6, Led/e0;->c:I

    .line 69
    .line 70
    iget v8, v6, Led/e0;->b:I

    .line 71
    .line 72
    sub-int/2addr v7, v8

    .line 73
    iput v7, p0, Led/q;->c:I

    .line 74
    .line 75
    iget-object v6, v6, Led/e0;->a:[B

    .line 76
    .line 77
    invoke-virtual {v5, v6, v8, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 78
    .line 79
    .line 80
    :goto_3
    iget-object v6, v2, Led/e0;->a:[B

    .line 81
    .line 82
    iget v7, v2, Led/e0;->c:I

    .line 83
    .line 84
    invoke-virtual {v5, v6, v7, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget v6, p0, Led/q;->c:I

    .line 89
    .line 90
    if-nez v6, :cond_5

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    sub-int/2addr v6, v7

    .line 98
    iget v7, p0, Led/q;->c:I

    .line 99
    .line 100
    sub-int/2addr v7, v6

    .line 101
    iput v7, p0, Led/q;->c:I

    .line 102
    .line 103
    int-to-long v6, v6

    .line 104
    invoke-interface {v4, v6, v7}, Led/g;->skip(J)V

    .line 105
    .line 106
    .line 107
    :goto_4
    if-lez v3, :cond_6

    .line 108
    .line 109
    iget v6, v2, Led/e0;->c:I

    .line 110
    .line 111
    add-int/2addr v6, v3

    .line 112
    iput v6, v2, Led/e0;->c:I

    .line 113
    .line 114
    iget-wide v6, p1, Led/e;->b:J

    .line 115
    .line 116
    int-to-long v2, v3

    .line 117
    add-long/2addr v6, v2

    .line 118
    iput-wide v6, p1, Led/e;->b:J

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_6
    iget v3, v2, Led/e0;->b:I

    .line 122
    .line 123
    iget v6, v2, Led/e0;->c:I

    .line 124
    .line 125
    if-ne v3, v6, :cond_1

    .line 126
    .line 127
    invoke-virtual {v2}, Led/e0;->a()Led/e0;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iput-object v3, p1, Led/e;->a:Led/e0;

    .line 132
    .line 133
    invoke-static {v2}, Led/f0;->a(Led/e0;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :goto_5
    cmp-long v6, v2, v0

    .line 138
    .line 139
    if-lez v6, :cond_7

    .line 140
    .line 141
    return-wide v2

    .line 142
    :cond_7
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->finished()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_a

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_8

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_8
    invoke-interface {v4}, Led/g;->I()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_9

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    .line 164
    .line 165
    const-string p2, "source exhausted prematurely"

    .line 166
    .line 167
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_a
    :goto_6
    const-wide/16 p1, -0x1

    .line 172
    .line 173
    return-wide p1

    .line 174
    :catch_0
    move-exception p1

    .line 175
    new-instance p2, Ljava/io/IOException;

    .line 176
    .line 177
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw p2

    .line 181
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    const-string p2, "closed"

    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_c
    const-string p1, "byteCount < 0: "

    .line 194
    .line 195
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p2
.end method
