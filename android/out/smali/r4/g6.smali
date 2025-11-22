.class public Lr4/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final h:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:D

.field public d:J

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lr4/g6;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lr4/g6;->f:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lr4/g6;->g:J

    iput-object p1, p0, Lr4/g6;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lr4/g6;->d:J

    .line 9
    .line 10
    return-void
.end method

.method public b(J)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    const-wide/16 v5, 0x3e8

    .line 10
    .line 11
    div-long/2addr v3, v5

    .line 12
    iget-wide v5, v0, Lr4/g6;->e:J

    .line 13
    .line 14
    const-wide/32 v7, -0x80000000

    .line 15
    .line 16
    .line 17
    const-wide/32 v9, 0x7fffffff

    .line 18
    .line 19
    .line 20
    const-wide/16 v11, 0x0

    .line 21
    .line 22
    const/4 v13, 0x0

    .line 23
    const-wide/16 v14, 0x0

    .line 24
    .line 25
    cmp-long v16, v5, v14

    .line 26
    .line 27
    if-eqz v16, :cond_0

    .line 28
    .line 29
    sub-long v5, v3, v5

    .line 30
    .line 31
    const-wide/32 v16, 0xf4240

    .line 32
    .line 33
    .line 34
    cmp-long v18, v5, v16

    .line 35
    .line 36
    if-ltz v18, :cond_0

    .line 37
    .line 38
    iput v13, v0, Lr4/g6;->b:I

    .line 39
    .line 40
    iput-wide v11, v0, Lr4/g6;->c:D

    .line 41
    .line 42
    iput-wide v14, v0, Lr4/g6;->d:J

    .line 43
    .line 44
    iput-wide v9, v0, Lr4/g6;->f:J

    .line 45
    .line 46
    iput-wide v7, v0, Lr4/g6;->g:J

    .line 47
    .line 48
    :cond_0
    iput-wide v3, v0, Lr4/g6;->e:J

    .line 49
    .line 50
    iget v3, v0, Lr4/g6;->b:I

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    add-int/2addr v3, v4

    .line 54
    iput v3, v0, Lr4/g6;->b:I

    .line 55
    .line 56
    iget-wide v5, v0, Lr4/g6;->c:D

    .line 57
    .line 58
    long-to-double v7, v1

    .line 59
    add-double/2addr v5, v7

    .line 60
    iput-wide v5, v0, Lr4/g6;->c:D

    .line 61
    .line 62
    iget-wide v5, v0, Lr4/g6;->f:J

    .line 63
    .line 64
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    iput-wide v5, v0, Lr4/g6;->f:J

    .line 69
    .line 70
    iget-wide v5, v0, Lr4/g6;->g:J

    .line 71
    .line 72
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    iput-wide v5, v0, Lr4/g6;->g:J

    .line 77
    .line 78
    iget v3, v0, Lr4/g6;->b:I

    .line 79
    .line 80
    rem-int/lit8 v3, v3, 0x32

    .line 81
    .line 82
    if-nez v3, :cond_1

    .line 83
    .line 84
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 85
    .line 86
    const/4 v5, 0x6

    .line 87
    new-array v5, v5, [Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v6, v0, Lr4/g6;->a:Ljava/lang/String;

    .line 90
    .line 91
    aput-object v6, v5, v13

    .line 92
    .line 93
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    aput-object v1, v5, v4

    .line 98
    .line 99
    iget v1, v0, Lr4/g6;->b:I

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x2

    .line 106
    aput-object v1, v5, v2

    .line 107
    .line 108
    iget-wide v1, v0, Lr4/g6;->f:J

    .line 109
    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x3

    .line 115
    aput-object v1, v5, v2

    .line 116
    .line 117
    iget-wide v1, v0, Lr4/g6;->g:J

    .line 118
    .line 119
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/4 v2, 0x4

    .line 124
    aput-object v1, v5, v2

    .line 125
    .line 126
    iget-wide v1, v0, Lr4/g6;->c:D

    .line 127
    .line 128
    iget v4, v0, Lr4/g6;->b:I

    .line 129
    .line 130
    int-to-double v6, v4

    .line 131
    div-double/2addr v1, v6

    .line 132
    double-to-int v1, v1

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/4 v2, 0x5

    .line 138
    aput-object v1, v5, v2

    .line 139
    .line 140
    const-string v1, "[%s] cur=%dus, counts=%d, min=%dus, max=%dus, avg=%dus"

    .line 141
    .line 142
    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lr4/t6;->a()V

    .line 146
    .line 147
    .line 148
    :cond_1
    iget v1, v0, Lr4/g6;->b:I

    .line 149
    .line 150
    rem-int/lit16 v1, v1, 0x1f4

    .line 151
    .line 152
    if-nez v1, :cond_2

    .line 153
    .line 154
    iput v13, v0, Lr4/g6;->b:I

    .line 155
    .line 156
    iput-wide v11, v0, Lr4/g6;->c:D

    .line 157
    .line 158
    iput-wide v14, v0, Lr4/g6;->d:J

    .line 159
    .line 160
    iput-wide v9, v0, Lr4/g6;->f:J

    .line 161
    .line 162
    const-wide/32 v1, -0x80000000

    .line 163
    .line 164
    .line 165
    iput-wide v1, v0, Lr4/g6;->g:J

    .line 166
    .line 167
    :cond_2
    return-void
.end method

.method public c(J)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    sub-long/2addr v0, p1

    .line 9
    invoke-virtual {p0, v0, v1}, Lr4/g6;->b(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public close()V
    .locals 5

    iget-wide v0, p0, Lr4/g6;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Lr4/g6;->c(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call start()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
