.class public final Led/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Led/i;

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>(Led/i;J)V
    .locals 1

    const-string v0, "fileHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/i$a;->a:Led/i;

    iput-wide p2, p0, Led/i$a;->b:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Led/i$a;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Led/i$a;->c:Z

    .line 8
    .line 9
    iget-object v0, p0, Led/i$a;->a:Led/i;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Led/i$a;->a:Led/i;

    .line 13
    .line 14
    iget v2, v1, Led/i;->b:I

    .line 15
    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    iput v2, v1, Led/i;->b:I

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget-boolean v2, v1, Led/i;->a:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    invoke-virtual {v1}, Led/i;->a()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0

    .line 39
    throw v1
.end method

.method public final h()Led/k0;
    .locals 1

    sget-object v0, Led/k0;->d:Led/k0$a;

    return-object v0
.end method

.method public final w(Led/e;J)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "sink"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, v0, Led/i$a;->c:Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    xor-int/2addr v2, v3

    .line 14
    if-eqz v2, :cond_7

    .line 15
    .line 16
    iget-wide v4, v0, Led/i$a;->b:J

    .line 17
    .line 18
    iget-object v2, v0, Led/i$a;->a:Led/i;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    cmp-long v8, p2, v6

    .line 26
    .line 27
    if-ltz v8, :cond_0

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v6, 0x0

    .line 32
    :goto_0
    if-eqz v6, :cond_6

    .line 33
    .line 34
    add-long v12, v4, p2

    .line 35
    .line 36
    move-wide v14, v4

    .line 37
    :goto_1
    const-wide/16 v16, -0x1

    .line 38
    .line 39
    cmp-long v6, v14, v12

    .line 40
    .line 41
    if-gez v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Led/e;->B(I)Led/e0;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iget-object v9, v11, Led/e0;->a:[B

    .line 48
    .line 49
    iget v7, v11, Led/e0;->c:I

    .line 50
    .line 51
    move-wide/from16 v18, v4

    .line 52
    .line 53
    sub-long v3, v12, v14

    .line 54
    .line 55
    rsub-int v5, v7, 0x2000

    .line 56
    .line 57
    int-to-long v5, v5

    .line 58
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    long-to-int v8, v3

    .line 63
    move-object v6, v2

    .line 64
    move-object v3, v9

    .line 65
    move-wide v9, v14

    .line 66
    move-object v4, v11

    .line 67
    move-object v11, v3

    .line 68
    invoke-virtual/range {v6 .. v11}, Led/i;->b(IIJ[B)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v5, -0x1

    .line 73
    if-ne v3, v5, :cond_2

    .line 74
    .line 75
    iget v2, v4, Led/e0;->b:I

    .line 76
    .line 77
    iget v3, v4, Led/e0;->c:I

    .line 78
    .line 79
    if-ne v2, v3, :cond_1

    .line 80
    .line 81
    invoke-virtual {v4}, Led/e0;->a()Led/e0;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iput-object v2, v1, Led/e;->a:Led/e0;

    .line 86
    .line 87
    invoke-static {v4}, Led/f0;->a(Led/e0;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    cmp-long v1, v18, v14

    .line 91
    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    move-wide/from16 v14, v16

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    iget v5, v4, Led/e0;->c:I

    .line 98
    .line 99
    add-int/2addr v5, v3

    .line 100
    iput v5, v4, Led/e0;->c:I

    .line 101
    .line 102
    int-to-long v3, v3

    .line 103
    add-long/2addr v14, v3

    .line 104
    iget-wide v5, v1, Led/e;->b:J

    .line 105
    .line 106
    add-long/2addr v5, v3

    .line 107
    iput-wide v5, v1, Led/e;->b:J

    .line 108
    .line 109
    move-wide/from16 v4, v18

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    move-wide/from16 v18, v4

    .line 114
    .line 115
    :cond_4
    sub-long v14, v14, v18

    .line 116
    .line 117
    :goto_2
    cmp-long v1, v14, v16

    .line 118
    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    iget-wide v1, v0, Led/i$a;->b:J

    .line 122
    .line 123
    add-long/2addr v1, v14

    .line 124
    iput-wide v1, v0, Led/i$a;->b:J

    .line 125
    .line 126
    :cond_5
    return-wide v14

    .line 127
    :cond_6
    const-string v1, "byteCount < 0: "

    .line 128
    .line 129
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v2

    .line 147
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    const-string v2, "closed"

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1
.end method
