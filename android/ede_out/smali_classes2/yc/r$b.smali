.class public final Lyc/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Led/e;

.field public final b:Led/e;

.field public c:Z

.field public final d:J

.field public e:Z

.field public final synthetic f:Lyc/r;


# direct methods
.method public constructor <init>(Lyc/r;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    iput-object p1, p0, Lyc/r$b;->f:Lyc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lyc/r$b;->d:J

    iput-boolean p4, p0, Lyc/r$b;->e:Z

    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    iput-object p1, p0, Lyc/r$b;->a:Led/e;

    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    iput-object p1, p0, Lyc/r$b;->b:Led/e;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    sget-object v0, Lsc/c;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Lyc/r$b;->f:Lyc/r;

    .line 4
    .line 5
    iget-object v0, v0, Lyc/r;->n:Lyc/f;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lyc/f;->g(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyc/r$b;->f:Lyc/r;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lyc/r$b;->c:Z

    .line 6
    .line 7
    iget-object v1, p0, Lyc/r$b;->b:Led/e;

    .line 8
    .line 9
    iget-wide v2, v1, Led/e;->b:J

    .line 10
    .line 11
    invoke-virtual {v1}, Led/e;->b()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lyc/r$b;->f:Lyc/r;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long v4, v2, v0

    .line 27
    .line 28
    if-lez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v2, v3}, Lyc/r$b;->a(J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lyc/r$b;->f:Lyc/r;

    .line 34
    .line 35
    invoke-virtual {v0}, Lyc/r;->a()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    .line 40
    .line 41
    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0

    .line 49
    throw v1
.end method

.method public final h()Led/k0;
    .locals 1

    iget-object v0, p0, Lyc/r$b;->f:Lyc/r;

    iget-object v0, v0, Lyc/r;->i:Lyc/r$c;

    return-object v0
.end method

.method public final w(Led/e;J)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    cmp-long v8, v2, v6

    .line 15
    .line 16
    if-ltz v8, :cond_0

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v8, 0x0

    .line 21
    :goto_0
    if-eqz v8, :cond_a

    .line 22
    .line 23
    :goto_1
    iget-object v8, v1, Lyc/r$b;->f:Lyc/r;

    .line 24
    .line 25
    monitor-enter v8

    .line 26
    :try_start_0
    iget-object v9, v1, Lyc/r$b;->f:Lyc/r;

    .line 27
    .line 28
    iget-object v9, v9, Lyc/r;->i:Lyc/r$c;

    .line 29
    .line 30
    invoke-virtual {v9}, Led/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object v9, v1, Lyc/r$b;->f:Lyc/r;

    .line 34
    .line 35
    invoke-virtual {v9}, Lyc/r;->f()Lyc/b;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    if-eqz v9, :cond_2

    .line 40
    .line 41
    iget-object v9, v1, Lyc/r$b;->f:Lyc/r;

    .line 42
    .line 43
    iget-object v9, v9, Lyc/r;->l:Ljava/io/IOException;

    .line 44
    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance v9, Lyc/w;

    .line 49
    .line 50
    iget-object v10, v1, Lyc/r$b;->f:Lyc/r;

    .line 51
    .line 52
    invoke-virtual {v10}, Lyc/r;->f()Lyc/b;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-static {v10}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v9, v10}, Lyc/w;-><init>(Lyc/b;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_2
    const/4 v9, 0x0

    .line 67
    :goto_2
    iget-boolean v10, v1, Lyc/r$b;->c:Z

    .line 68
    .line 69
    if-nez v10, :cond_9

    .line 70
    .line 71
    iget-object v10, v1, Lyc/r$b;->b:Led/e;

    .line 72
    .line 73
    iget-wide v11, v10, Led/e;->b:J

    .line 74
    .line 75
    const-wide/16 v13, -0x1

    .line 76
    .line 77
    cmp-long v15, v11, v6

    .line 78
    .line 79
    if-lez v15, :cond_3

    .line 80
    .line 81
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v11

    .line 85
    invoke-virtual {v10, v0, v11, v12}, Led/e;->w(Led/e;J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v10

    .line 89
    iget-object v12, v1, Lyc/r$b;->f:Lyc/r;

    .line 90
    .line 91
    iget-wide v4, v12, Lyc/r;->a:J

    .line 92
    .line 93
    add-long/2addr v4, v10

    .line 94
    iput-wide v4, v12, Lyc/r;->a:J

    .line 95
    .line 96
    iget-wide v6, v12, Lyc/r;->b:J

    .line 97
    .line 98
    sub-long/2addr v4, v6

    .line 99
    if-nez v9, :cond_5

    .line 100
    .line 101
    iget-object v6, v12, Lyc/r;->n:Lyc/f;

    .line 102
    .line 103
    iget-object v6, v6, Lyc/f;->t:Lyc/v;

    .line 104
    .line 105
    invoke-virtual {v6}, Lyc/v;->a()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    div-int/lit8 v6, v6, 0x2

    .line 110
    .line 111
    int-to-long v6, v6

    .line 112
    cmp-long v12, v4, v6

    .line 113
    .line 114
    if-ltz v12, :cond_5

    .line 115
    .line 116
    iget-object v6, v1, Lyc/r$b;->f:Lyc/r;

    .line 117
    .line 118
    iget-object v7, v6, Lyc/r;->n:Lyc/f;

    .line 119
    .line 120
    iget v6, v6, Lyc/r;->m:I

    .line 121
    .line 122
    invoke-virtual {v7, v6, v4, v5}, Lyc/f;->k(IJ)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v1, Lyc/r$b;->f:Lyc/r;

    .line 126
    .line 127
    iget-wide v5, v4, Lyc/r;->a:J

    .line 128
    .line 129
    iput-wide v5, v4, Lyc/r;->b:J

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    iget-boolean v4, v1, Lyc/r$b;->e:Z

    .line 133
    .line 134
    if-nez v4, :cond_4

    .line 135
    .line 136
    if-nez v9, :cond_4

    .line 137
    .line 138
    iget-object v4, v1, Lyc/r$b;->f:Lyc/r;

    .line 139
    .line 140
    invoke-virtual {v4}, Lyc/r;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    move-wide v10, v13

    .line 144
    const/4 v4, 0x1

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    move-wide v10, v13

    .line 147
    :cond_5
    :goto_3
    const/4 v4, 0x0

    .line 148
    :goto_4
    :try_start_2
    iget-object v5, v1, Lyc/r$b;->f:Lyc/r;

    .line 149
    .line 150
    iget-object v5, v5, Lyc/r;->i:Lyc/r$c;

    .line 151
    .line 152
    invoke-virtual {v5}, Lyc/r$c;->l()V

    .line 153
    .line 154
    .line 155
    sget-object v5, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    .line 157
    monitor-exit v8

    .line 158
    if-eqz v4, :cond_6

    .line 159
    .line 160
    const-wide/16 v6, 0x0

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_6
    cmp-long v0, v10, v13

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    invoke-virtual {v1, v10, v11}, Lyc/r$b;->a(J)V

    .line 169
    .line 170
    .line 171
    return-wide v10

    .line 172
    :cond_7
    if-nez v9, :cond_8

    .line 173
    .line 174
    return-wide v13

    .line 175
    :cond_8
    throw v9

    .line 176
    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 177
    .line 178
    const-string v2, "stream closed"

    .line 179
    .line 180
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :goto_5
    :try_start_4
    iget-object v2, v1, Lyc/r$b;->f:Lyc/r;

    .line 185
    .line 186
    iget-object v2, v2, Lyc/r;->i:Lyc/r$c;

    .line 187
    .line 188
    invoke-virtual {v2}, Lyc/r$c;->l()V

    .line 189
    .line 190
    .line 191
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    monitor-exit v8

    .line 194
    throw v0

    .line 195
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v4, "byteCount < 0: "

    .line 198
    .line 199
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v2
.end method
